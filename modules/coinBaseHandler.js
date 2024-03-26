var XMLHttpRequest = require("xmlhttprequest").XMLHttpRequest;
var key = "c868e10f-2ef6-4930-8402-7259d39c365d"; 


function getShibaPrice(client, channel){
   
    var url = "https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?start=1&limit=100&convert=USD ";
    var xmlHttp = new XMLHttpRequest();
    xmlHttp.open( "GET", url, false );
    xmlHttp.setRequestHeader("X-CMC_PRO_API_KEY",key);
    xmlHttp.onload  = function() {
      var jsonResponse = JSON.parse(xmlHttp.responseText);

      for (var resp of jsonResponse['data']) 
        {
          if(resp["symbol"] == "SHIB"){
          price = parseFloat(resp['quote']['USD']['price']);
          client.say(channel, "The current price of SHIBA INU is  "+ price.toPrecision(4));
          }
        }
    };
    xmlHttp.send(null);
}

module.exports = { getShibaPrice };