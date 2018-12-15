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

app.get('/getNodeConfig', (req, res) => res.send(nodeConf));
app.get('/pusherTest', (req, res) => pusher.trigger('my-channel', 'my-event', {"message": "hello world"}));

app.use(express.static(path.join(__dirname, 'public')));
module.exports = app;
app.listen(port, () => console.log(`Example app listening on port ${port}!`))