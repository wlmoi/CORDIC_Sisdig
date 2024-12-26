const canvas = document.getElementById('cordicGraph');
const ctx = canvas.getContext('2d');
const output = document.getElementById('cordicOutput');
const CANVAS_WIDTH = canvas.width;
const CANVAS_HEIGHT = canvas.height;

// Dynamic scaling factor
let scaleFactor = 1;

// Calculate scaling factor to fit points inside canvas
function calculateScale(x, y) {
    const maxInput = Math.max(Math.abs(x), Math.abs(y));
    scaleFactor = CANVAS_WIDTH / (8 * maxInput); // 2 times max input on each side
}

// Draw axes with scale numbers
function drawAxes() {
    ctx.clearRect(0, 0, CANVAS_WIDTH, CANVAS_HEIGHT);

    // Draw grid and scale numbers
    ctx.beginPath();
    ctx.strokeStyle = '#ddd';
    ctx.font = '12px Arial';
    ctx.fillStyle = '#333';

    for (let i = -2; i <= 2; i++) {
        const x = CANVAS_WIDTH / 2 + i * scaleFactor * 2;
        const y = CANVAS_HEIGHT / 2 - i * scaleFactor * 2;

        // Horizontal grid lines and labels
        if (i !== 0) {
            ctx.moveTo(0, y);
            ctx.lineTo(CANVAS_WIDTH, y);
            ctx.fillText(-i * 2, CANVAS_WIDTH / 2 + 5, y - 2);
        }

        // Vertical grid lines and labels
        ctx.moveTo(x, 0);
        ctx.lineTo(x, CANVAS_HEIGHT);
        if (i !== 0) ctx.fillText(i * 2, x + 5, CANVAS_HEIGHT / 2 - 5);
    }
    ctx.stroke();

    // Draw axes
    ctx.beginPath();
    ctx.moveTo(CANVAS_WIDTH / 2, 0);
    ctx.lineTo(CANVAS_WIDTH / 2, CANVAS_HEIGHT); // Vertical axis
    ctx.moveTo(0, CANVAS_HEIGHT / 2);
    ctx.lineTo(CANVAS_WIDTH, CANVAS_HEIGHT / 2); // Horizontal axis
    ctx.strokeStyle = '#000';
    ctx.lineWidth = 2;
    ctx.stroke();
}

// Draw a point with labels and connecting lines
function drawPointWithLine(previous, current, color, xLabel, yLabel) {
    if (previous) {
        ctx.beginPath();
        ctx.moveTo(previous.x, previous.y);
        ctx.lineTo(current.x, current.y);
        ctx.strokeStyle = color;
        ctx.lineWidth = 2;
        ctx.stroke();
    }

    // Draw the point
    ctx.beginPath();
    ctx.arc(current.x, current.y, 4, 0, Math.PI * 2);
    ctx.fillStyle = color;
    ctx.fill();

    // Label the point
    ctx.font = '12px Arial';
    ctx.fillStyle = '#000';
    ctx.fillText(`(${xLabel.toFixed(2)}, ${yLabel.toFixed(2)})`, current.x + 10, current.y - 10);
}

// Draw a line from origin to the final point
function drawOriginLine(finalPoint) {
    ctx.beginPath();
    ctx.moveTo(CANVAS_WIDTH / 2, CANVAS_HEIGHT / 2);
    ctx.lineTo(finalPoint.x, finalPoint.y);
    ctx.strokeStyle = '#FF0000';
    ctx.lineWidth = 2;
    ctx.setLineDash([5, 5]);
    ctx.stroke();
    ctx.setLineDash([]); // Reset dash
}

async function visualizeCORDIC(x, y, iterations, delay) {
    calculateScale(x, y);
    drawAxes();

    let previousPoint = null;
    let finalPoint = null;
    let rCordic = 0;
    let pCordic = 0;

    console.log("Starting visualization...");

    for (let i = 0; i <= iterations; i++) {
        // Fetch data from the server
        const res = await fetch(`/cordic?x=${x}&y=${y}&iterations=${i}`).then(res => res.json());

        // Log values for debugging
        console.log(`Iteration ${i}: x = ${res.x}, y = ${res.y}, z = ${res.z}`);

        // Update magnitudo dan sudut (hanya untuk iterasi terakhir)
        if (i === iterations) {
            rCordic = res.r;
            pCordic = res.phi;
            finalPoint = {
                x: CANVAS_WIDTH / 2 + res.x * scaleFactor,
                y: CANVAS_HEIGHT / 2 - res.y * scaleFactor,
            };
        }

        // Convert CORDIC output to canvas coordinates
        const currentPoint = {
            x: CANVAS_WIDTH / 2 + res.x * scaleFactor,
            y: CANVAS_HEIGHT / 2 - res.y * scaleFactor,
        };

        // Draw the point and the connecting line
        drawPointWithLine(previousPoint, currentPoint, `hsl(${(i / iterations) * 360}, 100%, 50%)`, res.x, res.y);

        previousPoint = currentPoint;

        // Wait for the next iteration
        await new Promise((resolve) => setTimeout(resolve, delay));
    }

    // Draw the line from origin
    drawOriginLine(finalPoint);

    // Display results
    output.innerHTML = `
        <p>r<sub>cordic</sub>: ${rCordic.toFixed(4)}</p>
        <p>p<sub>cordic</sub>: ${pCordic.toFixed(4)}°</p>
    `;
}

// Start the visualization with user input
function startVisualization() {
    const xInput = parseFloat(document.getElementById('xInput').value);
    const yInput = parseFloat(document.getElementById('yInput').value);

    if (isNaN(xInput) || isNaN(yInput)) {
        alert('Please enter valid numbers for X and Y.');
        return;
    }

    visualizeCORDIC(xInput, yInput, 30, 200);
}
