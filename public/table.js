// Fungsi untuk membuat header tabel secara dinamis
function createTableHeader(columns) {
    const thead = document.createElement("thead");
    const headerRow = document.createElement("tr");

    columns.forEach((column) => {
        const th = document.createElement("th");
        th.textContent = column.title;
        th.style.textAlign = column.align || "left";
        headerRow.appendChild(th);
    });

    thead.appendChild(headerRow);
    return thead;
}

// Fungsi untuk membuat isi tabel secara dinamis
function createTableBody(data, columns) {
    const tbody = document.createElement("tbody");

    data.forEach((row) => {
        const tr = document.createElement("tr");

        columns.forEach((column) => {
            const td = document.createElement("td");
            td.textContent = row[column.field];
            td.style.textAlign = column.align || "left";
            tr.appendChild(td);
        });

        tbody.appendChild(tr);
    });

    return tbody;
}

// Fungsi untuk membuat dan memperbarui tabel
function updateTable(data) {
    const tableContainer = document.getElementById("cordicTable");
    tableContainer.innerHTML = ""; // Bersihkan tabel sebelumnya

    const table = document.createElement("table");
    table.style.width = "100%";
    table.style.borderCollapse = "collapse";

    const columns = [
        { title: "Iteration", field: "iteration", align: "center" },
        { title: "X (scaled)", field: "x", align: "right" },
        { title: "Y", field: "y", align: "right" },
        { title: "Z (radians)", field: "z", align: "right" },
    ];

    // Tambahkan header dan body ke tabel
    table.appendChild(createTableHeader(columns));
    table.appendChild(createTableBody(data, columns));

    tableContainer.appendChild(table);
}

// Fungsi untuk menghitung tabel CORDIC
function cordic(x, y, iterations) {
    const atanTable = Array.from({ length: iterations }, (_, i) => Math.atan(1 / Math.pow(2, i))); // Tabel arctan
    const K = computeKFactor(iterations); // Faktor konvergensi

    let currentX = x;
    let currentY = y;
    let currentZ = Math.atan2(y, x); // Sudut awal berdasarkan X dan Y

    const data = [];

    for (let i = 0; i < iterations; i++) {
        const di = currentY > 0 ? -1 : 1; // Rotasi berdasarkan nilai Y

        // Update nilai X, Y, dan Z
        const newX = currentX - di * currentY * (1 / Math.pow(2, i));
        const newY = currentY + di * currentX * (1 / Math.pow(2, i));
        const newZ = currentZ - di * atanTable[i];

        currentX = newX;
        currentY = newY;
        currentZ = newZ;

        // Simpan data iterasi ke tabel
        data.push({
            iteration: i,
            x: (currentX * K).toFixed(6), // Skalakan X dengan faktor konvergensi
            y: currentY.toFixed(6), // Y mendekati 0
            z: currentZ.toFixed(6), // Sudut dalam radian
        });
    }

    return data;
}

// Fungsi untuk menghitung faktor konvergensi K
function computeKFactor(iterations) {
    let K = 1;
    for (let i = 0; i < iterations; i++) {
        K *= 1 / Math.sqrt(1 + Math.pow(2, -2 * i));
    }
    return K;
}

// Fungsi untuk memulai proses visualisasi tabel
function startTableVisualization() {
    const x = parseFloat(document.getElementById("xInputTable").value);
    const y = parseFloat(document.getElementById("yInputTable").value);
    const iterations = parseInt(document.getElementById("iterationsInput").value);

    // Validasi input
    if (isNaN(x) || isNaN(y) || isNaN(iterations) || iterations <= 0 || iterations > 31) {
        alert("Please enter valid numbers for X, Y, and Iterations (Max: 31).");
        return;
    }

    // Hitung data CORDIC
    const data = cordic(x, y, iterations);

    // Perbarui tabel
    updateTable(data);
}

// Event Listener untuk inisialisasi saat halaman dimuat
document.addEventListener("DOMContentLoaded", () => {
    document.getElementById("startTable").addEventListener("click", startTableVisualization);
});
