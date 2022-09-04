const {Router} = require("express");
const AccountModel = require("../../models/account.model");
const mongoose = require("mongoose");
const path = require("path");
const {uploadAvi} = require("../../utils/upload");
const fs = require("fs");
const accountVersionManager = require('../../utils/version-managers/account.version-manager')
require("dotenv").config()

const router = Router();

router.get('/', async (req, res) => {
    res.status(200).json(await AccountModel.find()).end();
})

router.get('/:id', async (req, res) => {
    try {
        const account = await AccountModel.findById(req.params.id);
        if (account) res.status(200).json(account).end();
        else res.status(404).json({
            err: "Account not found",
        }).end();
    } catch (e) {
        res.status(500).json({
            err: "Couldn't get account",
            reason: e
        });
    }
})

router.post('/:id/avi', uploadAvi, (req, res) => {
    console.log(req.params.id)
    try {
        // if (req.files.length <= 0) {
        //     return res.status(400).send(`You must send a file.`);
        // }
        console.log(req.file)
        res.status(200).json(`Uploaded profile picture for user ${req.params.id}`);
    } catch (e) {
        res.status(400).json('Couldn\'t send profile picture');
    }
})

router.get('/:id/avi', (req, res) => {
    const avi = path.join(__dirname, '../../data/images/avi/large/', req.params.id + ".png")
    console.log(avi)
    if (fs.existsSync(avi)) res.status(200).sendFile(avi)
    else res.status(404).json("Not found.")
})

router.post('/', (req, res) => {
    const account = new AccountModel(req.body);
    account.save().then(() => {
        res.status(200).json(account);
    }, (err) => res.status(500).json({
        err: "Couldn't create account",
        reason: err
    }));
})

module.exports = router;