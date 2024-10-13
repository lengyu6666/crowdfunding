//Load the core module of Node.js, express
const express = require('express')
//Create an Express application instance. This instance will be used to call various functions provided by Express
const app = express()
//Configure cross source resource sharing
const cors = require('cors')
// Service port
const port = 3001
// Configure cross domain
app.use(cors())
app.use(express.json())
app.use(express.urlencoded({ extended: true }))
app.use(express.static('public'))
//Introduce a router object. This object defines API routing
const allRouter = require('../router/all')
// Configure API routing
app.use('/api', allRouter)
//The app.listen function starts the Express application server and starts listening to the previously set port (port variable). When the server successfully starts and starts listening to the port, it calls a callback function that prints a message to the console indicating the server's URL and port.
app.listen(port, () => console.log(`http://127.0.0.1:3001`))
