const express = require('express')
const path = require("path");
const nodeConf = require(path.join(__dirname,'conf/nodes.json'));
const app = express()
const port = 3000

// app.get('/getNodeConfig', function(req, res) {res.send(nodeConf)});
app.get('/getNodeConfig', (req, res) => res.send(nodeConf));

app.use(express.static(path.join(__dirname, 'public')));
module.exports = app;
app.listen(port, () => console.log(`Example app listening on port ${port}!`))