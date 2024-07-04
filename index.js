// index.js
import express from "express";
import pool from "./config/database.js";

const app = express();

app.use(express.static("public"));
app.use(express.json());

app.get("/", (req, res) => {
  res.send("Proyecto Backend Grupo 25 Codo a Codo");
});

app.get('/Consulta_cliente', async (req, res) => {
  const sql = `
    SELECT 
      Consulta_cliente.ID_consulta, 
      Consulta_cliente.Motivo_consulta
    FROM 
      Consulta_cliente
    JOIN 
      Clientes ON Consulta_cliente.ID_Cliente = Clientes.ID_cliente
    ORDER BY 
      Clientes.Nombre_cliente`;

  try {
    console.log("Connecting to database...");
    const connection = await pool.getConnection();
    console.log("Database connection established.");
    
    console.log("Executing query...");
    const [rows] = await connection.query(sql);
    console.log("Query executed successfully.");
    
    connection.release();
    console.log("Connection released.");

    res.json(rows);
  } catch (error) {
    console.error("Error during database operation:", error);
    res.status(500).send('Internal server error');
  }
});

app.get('/clientes/:id', (req, res) => {
  // Implementa la lógica para obtener un cliente por ID
});

app.post('/clientes', (req, res) => {
  res.send('Resource created');
});

const PORT = 3000;
app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
