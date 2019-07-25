const path = require('path');
const HtmlWebPackPlugin = require('html-webpack-plugin');

module.exports = {
    resolve : {
        extensions : [".ts", ".tsx", ".js"],
    },
    module : {
        rules: [ 
            {
                test : /\.tsx?$/,
                use: ["babel-loader", "ts-loader", "tslint-loader"]
            }
        ]
    },
    plugins: [
        new HtmlWebPackPlugin({
            template : "./src/index.html"
        })
    ]
}