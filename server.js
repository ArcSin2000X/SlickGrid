const express = require('express')
const path = require("path");
const nodeConf = require(path.join(__dirname,'conf/nodesSideChains.json'));
var bodyParser = require('body-parser');
const Pusher = require('pusher');
var app = express();
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
// app.use(bodyParser.json());

const port = 3000

var pusher = new Pusher({
    appId: '673272',
    key: '0c62f8cf96ca6bdab529',
    secret: 'b457e31486d1078f5268',
    cluster: 'eu',
    encrypted: true
  });

var sampleUpdate1 = { NodeName: "NodeMAA", Field: "header", Value: 20};
var sampleUpdate2 = { NodeName: "NodeMAA", Field: "header", Value: 22};
var sampleUpdate3 = { NodeName: "NodeMAC", Field: "consensus", Value: 22};

app.get('/getNodeConfig', (req, res) => res.send(nodeConf));
app.get('/pusherTest', (req, res) => {
  pusher.trigger('channel-stats', 'update', sampleUpdate1);
  pusher.trigger('channel-stats', 'update', sampleUpdate2);
  pusher.trigger('channel-stats', 'update', sampleUpdate3);

  res.send({success:true});
});

app.post('/setStatsData', (req, res)=> {
    console.log("test");
    // console.log(req.body.NodeName);
    res.send({success:true});
});

app.use(express.static(path.join(__dirname, 'public')));
module.exports = app;
app.listen(port, () => console.log(`Server started on Port: ${port}!`))

// curl -d '{"NodeName":"NodeMAA"}' -H "Content-Type: application/json" http://localhost:3000/setStatsData

// curl -H "Content-Type: application/json" -H "Accept: application/json" -d '{"username":"xyz","password":"xyz"}' http://localhost:3000/setStatsData
