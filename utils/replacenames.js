var fs = require('fs');
var database = require("./database.js");

function convert(pkmns)
{
    fs.readFile(process.argv[2], 'utf8', function(err, data)
    {
        var final = "";
        var done = 0;
        var todo = 0;
        var lines = data.split("\n");
        todo = lines.length;
        for(var line in lines)
        {
            line = lines[line];
            
            var pokemon = line.split("\"")[1];
            
            if(pokemon == null)
                continue;
            pokemon = pokemon.replace(/@/g,"");

            var name = pkmns[pokemon];
            if(name == undefined)
            {
                console.log("ERREUR: "+pokemon);
                return;
            }
            name = name.toUpperCase();
            while(name.length != 10)
                name = name + "@";
            var entry = "\tdb \""+name+"\"\n";
            final += entry;
            done ++;
            //console.log(pokemon + "->"+name + "  "+done+"/"+todo);
        }
        console.log(final);
    });
}



function main()
{
    database.loadPKMN(function(pkmns)
    {
        //console.log("Chargement terminée, traduction.");
        convert(pkmns);
    });

}


main();