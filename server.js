const express = require("express");

const app = express();
const PORT = process.env.PORT || 3000;

app.get("/", (req, res) => {
  res.send("Placemux backend is running successfully.");
});

app.get("/health", (req, res) => {
  res.status(200).json({
    status: "healthy",
    service: "placemux-backend"
  });
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});