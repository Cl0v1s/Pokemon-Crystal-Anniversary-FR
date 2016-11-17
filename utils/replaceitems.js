var fs = require('fs');
var database = require("./database.js");

function convert(items)
{
    console.log(items);
}

function main()
{
    database.loadITEMS(convert);
}

main();