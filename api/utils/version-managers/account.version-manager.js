require("dotenv").config()
const AccountModel = require("../../models/account.model");

module.exports = async (req, res, next) => {
    try {
        const account = await AccountModel.findById(req.params.id);
        if (!account) next();
        if (!account.schemaVersion || (account.schemaVersion !== process.env.ACCOUNT_VERSION.toString())) {
            account.schemaVersion = process.env.ACCOUNT_VERSION;
            await account.save();
            next();
        }
    } catch (e) {
        res.status(500).json({
            err: "Couldn't check account version",
            reason: e
        });
    }
}