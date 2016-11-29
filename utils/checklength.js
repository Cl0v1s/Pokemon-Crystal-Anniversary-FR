var fs = require('fs');

function main()
{
    fs.readFile(process.argv[2], 'utf8', function(err, data)
    {   
        var lines = data.split("\n");
        for(var line in lines)
        {
            text = lines[line].split("\"");
            if(text.length > 1 && text[1].length>18)
            {
                console.log(line+"/"+lines.length+": "+text[1]+" -> "+text[1].length)
            }

        }

    });
}

main();