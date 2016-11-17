var jsdom = require("jsdom");
var fs = require('fs');

/*function Post(url, parameters, callback)
{
        var xhttp = new XMLHttpRequest();
        xhttp.onload = function() {
            callback(xhttp.responseText.trim());
        };
        xhttp.onerror = function()
        {
            if(error != null)
                error();
        }
        xhttp.open("post", url, true);
        //console.log("Processing "+url);
        var data  = "";
        for(var key in parameters)
            data = data + key +"="+parameters[key] +"&";
        data = data.slice(0, -1);
        xhttp.send(data);

}*/

    exports.loadPKMN = function(callback)
    {
        var all = {};
        var file = fs.readFile("./names.html", 'utf8', function(err, data)
        {
            jsdom.env(
            data,
            null,
            function (err, window) {
                var pokemons = window.document.querySelectorAll('#mw-content-text tr');
                for(var pokemon in pokemons)
                {
                    pokemon = pokemons[pokemon];
                    var names =  pokemon.querySelectorAll("td");
                    var en = null;
                    var fr = null;
                    if(names.length == 4)
                    {
                        en = names[2].querySelector("a").innerHTML.replace(" ", "").toUpperCase();
                        fr = names[3].querySelector("a").innerHTML.trim().toLowerCase();
                    }
                    else if(names.length == 3)
                    {
                        en = names[1].querySelector("a").innerHTML.replace(" ", "").toUpperCase();
                        fr = names[2].innerHTML.trim().toLowerCase(); 
                    }

                    if(en != null && fr != null)
                    {
                        fr = fr.replace("œ", "oe");
                        fr = fr.replace("é", "e");
                        fr = fr.replace("è", "e");

                        all[en] = fr;                    
                        //console.log("Load: "+en+" -> "+fr);
                    }

                }
                // Ajout special
                all["?????"] = "?????";
                callback(all);
            }
            );

        });
    }
