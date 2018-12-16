const express = require('express')
const path = require("path");
const nodeConf = require(path.join(__dirname,'conf/nodes.json'));
const Pusher = require('pusher');
const app = express()
const port = 3000

var pusher = new Pusher({
    appId: '673272',
    key: '0c62f8cf96ca6bdab529',
    secret: 'b457e31486d1078f5268',
    cluster: 'eu',
    encrypted: true
  });

// pusher.trigger('my-channel', 'my-event', {
//     "message": "hello world"
//   });

var sampleUpdate1 = { NodeName: "NodeAA", Value: 20};
var sampleUpdate2 = { NodeName: "NodeDA", Value: 10};
var sampleUpdate3 = { NodeName: "NodeAB", Value: 21};
var sampleUpdate4 = { NodeName: "NodeAC", Value: 288};
var sampleUpdate5 = { NodeName: "NodeAD", Value: 20};
var sampleUpdate6 = { NodeName: "NodeDB", Value: 20};
var sampleUpdate7 = { NodeName: "NodeDA", Value: 20};

app.get('/getNodeConfig', (req, res) => res.send(nodeConf));
app.get('/pusherTest', (req, res) => {
  pusher.trigger('channel-header', 'update', sampleUpdate1);
  pusher.trigger('channel-header', 'update', sampleUpdate2);
  pusher.trigger('channel-consensus', 'update', sampleUpdate3);
  pusher.trigger('channel-header', 'update', sampleUpdate4);
  pusher.trigger('channel-consensus', 'update', sampleUpdate5);
  pusher.trigger('channel-header', 'update', sampleUpdate6);
  pusher.trigger('channel-header', 'update', sampleUpdate7);
  // pusher.trigger('channel-header', 'update', {"NodeName": "NodeaAD", "Value": "24"})
  // pusher.trigger('channel-header', 'update', {"NodeName": "NodeaAC", "Value": "31"})
  res.send({success:true});
});

app.use(express.static(path.join(__dirname, 'public')));
module.exports = app;
app.listen(port, () => console.log(`Example app listening on port ${port}!`))