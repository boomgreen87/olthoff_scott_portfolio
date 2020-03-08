const express = require('express');
const router = express.Router();

const sql = require('../utils/sql');

router.get('/', (req, res) => {
    connect.getConnection((err, connection) => {
        if (err) { return console.log(err.message); }
        console.log('At the main route');

        let query = "SELECT portfolio_id, project_name FROM tbl_portfolio_pieces";

        sql.query(query, (err, result) => {
            connection.release();

            if (err) { throw err; console.log(err); }
            res.render('home', { portfolio: result });
        });
    });
})

router.get('/portfolio/:id', (req, res) => {
    connect.getConnection((err, connection) => {
        if (err) { return console.log(err.message); }
        console.log(req.params.id);

        let query = `SELECT portf.*, cre.created_for, GROUP_CONCAT(pro.programs_used SEPARATOR ', ') AS programs_used
        FROM
            tbl_portfolio_pieces portf
        LEFT JOIN tbl_port_create_pro link ON
            link.portfolio_id = portf.portfolio_id
        LEFT JOIN tbl_created_for cre ON
            cre.created_for_id = link.created_for_id
        LEFT JOIN tbl_programs_used pro ON
            pro.programs_used_id = link.programs_used_id
        WHERE portf.portfolio_id = ${req.params.id}
        GROUP BY portf.portfolio_id
        `;

        sql.query(query, (err, result) => {
            connection.release();

            if (err) { throw err; console.log(err); }
            console.log(result);
            res.render('portfolio', { portfolio: result });
        });
    });
})

module.exports = router;