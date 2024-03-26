var BigEval = require('bigeval')
var Mather = new BigEval();




function calculate(client, channel, str){

    var result = Mather.exec(parseString(str));
    if(result.toString().startsWith("ReferenceError")){
        result = Mather.exec(parseString(str.slice(0,-2)));
    }

    client.say(channel, "The answer is " + result);

}


function parseString(haystack){

    let needle = "√(";
    let pos = 0; // Position Ref
    let result = []; // Final output of all index's.
    let hayStackLower = haystack.toLowerCase().slice(6);
    let newHaystack = hayStackLower;
    var occurences_str = Array();
    // Loop to check all occurrences 
    while (hayStackLower.indexOf(needle, pos) != -1) {
        result.push(hayStackLower.indexOf(needle , pos));
        pos = hayStackLower.indexOf(needle , pos) + 1;
    }

    result.forEach(occurence => {
        var position_end = hayStackLower.indexOf(")", occurence);
        var ocurrence_str = hayStackLower.substr(occurence, position_end+1);
        occurences_str.push(ocurrence_str);
    });

    occurences_str.forEach(occurence =>{
        newHaystack = newHaystack.replace(occurence, occurence.replace("√","(") + "**(1/2))");
    });
    newHaystack = newHaystack.split('^').join("**");
 
    return newHaystack;
}




module.exports = { calculate };


//BASIC MATH (TODO: REDO THIS WHOLE THING CAUSE IT KIND OF BAD) 
/**
    if((message.toLowerCase().includes('whats') || message.toLowerCase().includes('what\'s')) && message.toLowerCase().includes('x')){
      var str = message.toLowerCase();
      var index = str.indexOf('x');
      if(!isNaN(str.charAt(index-1)) && !isNaN(str.charAt(index+1))){
        var n1 = 0
        var n2 = 0
        var done = true
        var current = 1;
        while(done){
          if(isNaN(str.charAt(index-current)) && str.charAt(index-current) !== '.' ){
            done = false;
            n1 = parseFloat(str.substring(index-(current-2),index));
          }else{
            current++;
  
          }
        }
        var done = true
        var current = 1;
        while(done){
  
          if((isNaN(str.charAt(index+current)) || (current+index) > str.length) && str.charAt(index-current) != '.' ){
            done = false;
            n2 = parseFloat(str.substring(index+(current),index+1));
          }else{
            current++;
            if(current > 10) return;
          }
  
          
        }
        var resp = n1*n2;
        
  
  
        if(!isNaN(resp)){
          client.say(channel, ""+resp);
          if(resp == 69) client.say(channel, `nice`);

        }  
      }
    }
  
    if((message.toLowerCase().includes('whats') || message.toLowerCase().includes('what\'s')) && message.toLowerCase().includes('+')){
      var str = message.toLowerCase();
      var index = str.indexOf('+');
      if(!isNaN(str.charAt(index-1)) && !isNaN(str.charAt(index+1))){
        var n1 = 0
        var n2 = 0
        var done = true
        var current = 1;
        while(done){
          if(isNaN(str.charAt(index-current)) && str.charAt(index-current) !== '.' ){
            done = false;
            console.log(str.charAt(index-current))
            n1 = parseFloat(str.substring(index-(current-2),index));
          }else{
            current++;
  
          }
        }
        var done = true;
        var current = 1;
        while(done){
  
          if((isNaN(str.charAt(index+current)) || (current+index) > str.length) && str.charAt(index-current) != '.' ){
            done = false;
            n2 = parseFloat(str.substring(index+(current),index+1));
          }else{
            current++;
            if(current > 10) return;
          }
  
          
        }
        var resp = n1+n2;
        
  
  
        if(!isNaN(resp)){
          client.say(channel, ""+resp);
          if(resp == 69) client.say(channel, `nice`);

        }
  
      }
    }
  
    if((message.toLowerCase().includes('whats') || message.toLowerCase().includes('what\'s')) && message.toLowerCase().includes('-')){
      var str = message.toLowerCase();
      var index = str.indexOf('-');
      if(!isNaN(str.charAt(index-1)) && !isNaN(str.charAt(index+1))){
        var n1 = 0
        var n2 = 0
        var done = true
        var current = 1;
        while(done){
          if(isNaN(str.charAt(index-current)) && str.charAt(index-current) !== '.' ){
            done = false;
            console.log(str.charAt(index-current))
            n1 = parseFloat(str.substring(index-(current-2),index));
          }else{
            current++;
  
          }
        }
        var done = true
        var current = 1;
        while(done){
  
          if((isNaN(str.charAt(index+current)) || (current+index) > str.length) && str.charAt(index-current) != '.' ){
            done = false;
            n2 = parseFloat(str.substring(index+(current),index+1));
          }else{
            current++;
            if(current > 10) return;
          }
  
          
        }
        var resp = n1-n2;
        
  
  
        if(!isNaN(resp)){
          client.say(channel, ""+resp);
          if(resp == 69) client.say(channel, `nice`);

        }
  
      }
    }
    if((message.toLowerCase().includes('whats') || message.toLowerCase().includes('what\'s')) && message.toLowerCase().includes('/')){
      var str = message.toLowerCase();
      var index = str.indexOf('/');
      if(!isNaN(str.charAt(index-1)) && !isNaN(str.charAt(index+1))){
        var n1 = 0
        var n2 = 0
        var done = true
        var current = 1;
        while(done){
          if(isNaN(str.charAt(index-current)) && str.charAt(index-current) !== '.' ){
            done = false;
            console.log(str.charAt(index-current))
            n1 = parseFloat(str.substring(index-(current-2),index));
          }else{
            current++;
  
          }
        }
        var done = true
        var current = 1;
        while(done){
  
          if((isNaN(str.charAt(index+current)) || (current+index) > str.length) && str.charAt(index-current) != '.' ){
            done = false;
            n2 = parseFloat(str.substring(index+(current),index+1));
          }else{
            current++;
            if(current > 10) return;
          }
  
          
        }
        var resp = n1/n2;
        
  
        if(n2 == 0){
          client.say(channel, "no, stop whiskey pls Sadge");

        }else{
          if(!isNaN(resp)){
            client.say(channel, ""+resp);
            if(resp == 69) client.say(channel, `nice`);

          }

        }
  
      }
    }
  
    if((message.toLowerCase().includes('whats') || message.toLowerCase().includes('what\'s')) && message.toLowerCase().includes('^')){
      var str = message.toLowerCase();
      var index = str.indexOf('^');
      if(!isNaN(str.charAt(index-1)) && !isNaN(str.charAt(index+1))){
        var n1 = 0
        var n2 = 0
        var done = true
        var current = 1;
        while(done){
          if(isNaN(str.charAt(index-current)) && str.charAt(index-current) !== '.' ){
            done = false;
            n1 = parseFloat(str.substring(index-(current-2),index));
          }else{
            current++;
  
          }
        }
        var done = true
        var current = 1;
        while(done){
  
          if((isNaN(str.charAt(index+current)) || (current+index) > str.length) && str.charAt(index-current) != '.' ){
            done = false;
            n2 = parseFloat(str.substring(index+(current),index+1));
          }else{
            current++;
            if(current > 10) return;
          }
  
          
        }
        var resp = Math.pow(n1, n2);
        
  
        if(!isNaN(resp)){
          client.say(channel, ""+resp);
          if(resp == 69) client.say(channel, `nice`);

        }
  
      }
    }
  
  
 **/