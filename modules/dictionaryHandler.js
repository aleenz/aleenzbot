const request = require('request');

function getDefinition(con,params, callback ){
 
    if(params.length == 2){
        word = params[1];

        const options = {
            method: 'GET',
            url: 'https://wordsapiv1.p.rapidapi.com/words/'+word+'/definitions',
            headers: {
              'X-RapidAPI-Key': 'Z8511MkKEXmshERxLEo7lwMiXLoip1OQn6Sjsn4luiRDyCRBWh',
              'X-RapidAPI-Host': 'wordsapiv1.p.rapidapi.com',
              useQueryString: true
            }
          };
          
          request(options, function (error, response, body) {
            if (error) throw new Error(error);
            let json = JSON.parse(body);
            console.log(json)
            //console.log(json["definitions"][0]["definition"])
                if(json["success"] == false) callback("I don't know the definition of that word.")
                else{
                    word = json["word"]
                    type = json["definitions"][0]["partOfSpeech"]
                    definition = json["definitions"][0]["definition"]
                    res = word + " (" + type + ") | " + " " + definition
                callback(res)
              }

          });
    }
    
}




module.exports = { getDefinition };