const express = require('express');
const { Pool } = require('pg');

const app = express();
const port = 3000;

const pool = new Pool({
    user: 'postgres',            
    host: 'postgres-service',    
    database: 'mydb',             
    password: 'password',         
    port: 5432,                   
});

app.get('/api/activity', async (req, res) => {
    try {
        const result = await pool.query('SELECT activity FROM activities LIMIT 1');
        res.json(result.rows[0]);
    } catch (error) {
        console.error('Error fetching activity:', error);
        res.status(500).send('Error fetching activity');
    }
});

app.listen(port, () => {
    console.log(`Backend running on port ${port}`);
});
