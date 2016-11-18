var fs = require('fs');
var database = require("./database.js");

function convert(items)
{
    fs.readFile(process.argv[2], 'utf8', function(err, data)
    {
            var final = "";
            var errors = "";
            var done = 0;
            var todo = 0;
            var lines = data.split("\n");
            todo = lines.length;
            for(var line in lines)
            {
                line = lines[line];
                
                var item = line.split("\"")[1];
                if(item == null)
                    continue;
                item = item.replace(/@/g,"");
                var origin = item;                
                item = item.replace(" ", "");

                var name = items[item];
                if(name == undefined)
                {
                    //console.log("ERREUR: "+item);
                    errors  = errors + origin + "\n";
                    name = origin;
                }
                name = name.toUpperCase();
                name = name + "@";
                var entry = "\tdb \""+name+"\"\n";
                final += entry;
                done ++;
                //console.log(item + "->"+name + "  "+done+"/"+todo);
            }
            if(errors != "")
                final = final + "/!\\ ERRORS";
            if(process.argv[3] == "-e")
                console.log(errors);
            else 
                console.log(final);
    });
}

function main()
{
    database.loadITEMS(convert);
}

main();