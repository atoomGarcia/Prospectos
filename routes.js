//const { json } = require('express');
const express = require('express');
const routes = express.Router();

routes.get('/',(req,res) =>{
    req.getConnection((err, conn)=>{
        if(err) return res.send(err)
        conn.query('SELECT p.idProspecto, p.nombre, p.apPaterno, p.apMaterno, p.calle, p.num, p.colonia, p.cp, p.telefono, p.rfc, e.Estado FROM prospectos as p INNER JOIN estados as e ON p.estatus = e.idEstado ORDER BY p.idProspecto', (err, rows)=>{
            if(err) return res.send(err)

            res.json(rows)
        })
    })
})

routes.post('/',(req,res) =>{
    req.getConnection((err, conn)=>{
        if(err) return res.send(err)
        conn.query('INSERT INTO prospectos set ?',[req.body], (err, rows)=>{
            if(err) return res.send(err)
            res.send("El tipo ha sido insertado");
        })
    })
})

routes.post('/change/',(req,res) =>{
    const estatus = [req.body.estatus];
    const obs = [req.body.obs];

    req.getConnection((err, conn)=>{
        if(err) return res.send(err)
            conn.query('UPDATE prospectos set estatus = "' + estatus + '", obs = "' + obs + '" WHERE idProspecto = ? ',[req.body.idProspecto], (err, rows)=>{
                if(err) return res.send(err)
            })
    })
})


module.exports = routes