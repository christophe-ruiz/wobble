'use strict';
require('dotenv').config();
const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');
const morgan = require('morgan');
const fileUpload = require('express-fileupload');

(() => {
    const app = express();
    app.disable('x-powered-by')
    app.use(cors())
    app.use(bodyParser.json({limit: '100mb'}))
    app.use(bodyParser.urlencoded({extended: true, limit: '100mb'}));
    app.use(morgan('[:date[iso]] :method :url :status :response-time ms - :res[content-length]'))
    app.use(fileUpload({
        createParentPath: true,
        limits: {
            fileSize: 25 * (1024 ** 3)
        },
    }));
    app.get('/ping', (req, res) => res.status(200).json('pong'))
    app.use('*', (req, res) => res.status(404).end())

    app.listen(process.env.PORT, () => console.log(`[${new Date().toLocaleTimeString('fr-FR')}] Wobble API - [UP @ ${process.env.HOST}:${process.env.PORT}]`))
})();
