const multer = require("multer");
const path = require("path");

const paths = {
    avi: path.join(__dirname + "/../data/images/avi/large/")
}

const aviStorage = multer.diskStorage({
    destination: function (req, file, callback) {
        callback(null, paths.avi);
    },
    filename: function (req, file, callback) {
        callback(null, req.params.id + '.png');
    },
    limits: { fileSize: 2 * (1024 ** 3) },
});

module.exports.uploadAvi = multer({
    storage: aviStorage
}).single("avi");

module.exports.aviPath = paths.avi;