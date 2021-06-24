const express = require('express');
const mysql = require('mysql');
const myconn = require('express-myconnection');
const routes = require('./routes')
const app = express();

//Rutas
app.set('port', process.env.POST || 3000)
const dbOptions ={
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: '',
    database: 'prospectos'
}

app.set('view engine', 'ejs');
app.set('views', __dirname + '/views');
//middlewares
app.use(myconn(mysql, dbOptions,'single'))
app.use(express.json())
/*app.get('/',(req,res) =>{
    res.send("Welcome to my API");
})*/
app.get('/',(req,res) =>{
    res.render("index");
})

app.get('/listado',(req,res) =>{
    res.render("listado");
})

app.use('/api',routes)

app.use('/api/change',routes)

//Server running
app.listen(app.get('port'), () =>{
    console.log("Server Running on port", app.get('port'));
})