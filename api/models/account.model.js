const mongoose = require("mongoose");

const AccountModel = mongoose.model('Account', new mongoose.Schema({
    username: String,
    displayname: String,
    email: String,
    bio: String,
    certified: Boolean,
    admin: Boolean,
    private: Boolean,
    schemaVersion: String,
    joined: Date,
    followers: [],
    following: [],
}));

module.exports = AccountModel;
