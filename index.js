


var mysql = require('mysql');
const request = require('request');
const birdfacts = require("./modules/birdFactHandler.js");
const newViewerHandler = require("./modules/newViewerHandler.js");
const dictionary = require("./modules/dictionaryHandler.js");
const quotes = require("./modules/quoteHandler.js");
const coinBaseHandler = require("./modules/coinBaseHandler.js");
const mathHandler = require("./modules/mathHandler.js");
const tmi = require('tmi.js');
var con = mysql.createConnection({
  host: "localhost",
  user: "vangata",
  password: "3EiEvGyjF2obrYd1",
  database: "aleenzbot"
});

con.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
});

//console.log(process.env.TWITCH_OAUTH_TOKEN);

const typeMatchups = {
  normal: {
    attack: {
      effectiveAgainst: [], 
      weakAgainst: ['rock'], 
      noEffectAgainst: ['ghost']
    },
    defense: {
      weakAgainst: ['fighting'], 
      immuneAgainst: ['ghost'], 
      resistantAgainst: []
    }
  },
  fire: {
    attack: {
      effectiveAgainst: ['grass', 'bug', 'ice', 'steel'],
      weakAgainst: ['water', 'rock', 'fire', 'dragon'],
      noEffectAgainst: []
    },
    defense: {
      weakAgainst: ['water', 'ground', 'rock'],
      immuneAgainst: [],
      resistantAgainst: ['fire', 'grass', 'ice', 'bug', 'steel', 'fairy']
    }
  },
  water: {
    attack: {
      effectiveAgainst: ['fire', 'ground', 'rock'],
      weakAgainst: ['water', 'grass', 'electric'],
      noEffectAgainst: []
    },
    defense: {
      weakAgainst: ['electric', 'grass'],
      immuneAgainst: [],
      resistantAgainst: ['fire', 'water', 'ice', 'steel']
    }
  },
  grass: {
    attack: {
      effectiveAgainst: ['water', 'ground', 'rock'],
      weakAgainst: ['fire', 'bug', 'flying', 'poison', 'ice'],
      noEffectAgainst: []
    },
    defense: {
      weakAgainst: ['fire', 'bug', 'flying', 'poison', 'ice'],
      immuneAgainst: [],
      resistantAgainst: ['water', 'grass', 'electric', 'ground']
    }
  },
  electric: {
    attack: {
      effectiveAgainst: ['water', 'flying'],
      weakAgainst: ['electric', 'ground'],
      noEffectAgainst: []
    },
    defense: {
      weakAgainst: ['ground'],
      immuneAgainst: [],
      resistantAgainst: ['electric', 'flying', 'steel']
    }
  },
  ground: {
    attack: {
      effectiveAgainst: ['fire', 'electric', 'poison', 'rock', 'steel'],
      weakAgainst: ['water', 'grass', 'ice'],
      noEffectAgainst: []
    },
    defense: {
      weakAgainst: ['water', 'grass', 'ice'],
      immuneAgainst: ['electric'],
      resistantAgainst: ['poison', 'rock']
    }
  },
  rock: {
    attack: {
      effectiveAgainst: ['fire', 'ice', 'flying', 'bug'],
      weakAgainst: ['water', 'grass', 'fighting', 'ground', 'steel'],
      noEffectAgainst: []
    },
    defense: {
      weakAgainst: ['water', 'grass', 'fighting', 'ground', 'steel'],
      immuneAgainst: [],
      resistantAgainst: ['normal', 'fire', 'flying', 'poison']
    }
  },
  steel: {
    attack: {
      effectiveAgainst: ['ice', 'rock', 'fairy'],
      weakAgainst: ['fire', 'fighting', 'ground'],
      noEffectAgainst: []
    },
    defense: {
      weakAgainst: ['fire', 'fighting', 'ground'],
      immuneAgainst: [],
      resistantAgainst: ['normal', 'grass', 'ice', 'flying', 'psychic', 'bug', 'rock', 'dragon', 'steel', 'fairy']
    }
  },
  bug: {
    attack: {
      effectiveAgainst: ['grass', 'psychic', 'dark'],
      weakAgainst: ['fire', 'flying', 'rock'],
      noEffectAgainst: []
    },
    defense: {
      weakAgainst: ['fire', 'flying', 'rock'],
      immuneAgainst: [],
      resistantAgainst: ['grass', 'fighting', 'ground']
    }
  },
  flying: {
    attack: {
      effectiveAgainst: ['grass', 'bug', 'fighting'],
      weakAgainst: ['electric', 'rock', 'ice'],
      noEffectAgainst: []
    },
    defense: {
      weakAgainst: ['electric', 'rock', 'ice'],
      immuneAgainst: [],
      resistantAgainst: ['grass', 'fighting', 'bug']
    }
  },
  psychic: {
    attack: {
      effectiveAgainst: ['fighting', 'poison'],
      weakAgainst: ['bug', 'ghost', 'dark'],
      noEffectAgainst: []
    },
    defense: {
      weakAgainst: ['bug', 'ghost', 'dark'],
      immuneAgainst: [],
      resistantAgainst: ['fighting', 'psychic']
    }
  },
  poison: {
    attack: {
      effectiveAgainst: ['grass', 'fairy'],
      weakAgainst: ['poison', 'ground', 'rock', 'ghost'],
      noEffectAgainst: []
    },
    defense: {
      weakAgainst: ['ground', 'psychic'],
      immuneAgainst: [],
      resistantAgainst: ['grass', 'fighting', 'poison', 'bug', 'fairy']
    }
  },
  fighting: {
    attack: {
      effectiveAgainst: ['normal', 'rock', 'steel', 'ice', 'dark'],
      weakAgainst: ['flying', 'psychic', 'fairy'],
      noEffectAgainst: []
    },
    defense: {
      weakAgainst: ['flying', 'psychic', 'fairy'],
      immuneAgainst: [],
      resistantAgainst: ['bug', 'rock', 'dark']
    }
  },
  dark: {
    attack: {
      effectiveAgainst: ['psychic', 'ghost'],
      weakAgainst: ['fighting', 'bug', 'fairy'],
      noEffectAgainst: []
    },
    defense: {
      weakAgainst: ['fighting', 'bug', 'fairy'],
      immuneAgainst: [],
      resistantAgainst: ['ghost', 'dark']
    }
  },
  ghost: {
    attack: {
      effectiveAgainst: ['psychic', 'ghost'],
      weakAgainst: ['ghost', 'dark'],
      noEffectAgainst: []
    },
    defense: {
      weakAgainst: ['ghost', 'dark'],
      immuneAgainst: ['normal', 'fighting'],
      resistantAgainst: ['poison', 'bug']
    }
  },
  ice: {
    attack: {
      effectiveAgainst: ['grass', 'ground', 'flying', 'dragon'],
      weakAgainst: ['fire', 'fighting', 'rock', 'steel'],
      noEffectAgainst: []
    },
    defense: {
      weakAgainst: ['fire', 'fighting', 'rock', 'steel'],
      immuneAgainst: [],
      resistantAgainst: ['ice']
    }
  },
  dragon: {
    attack: {
      effectiveAgainst: ['dragon'],
      weakAgainst: ['steel', 'fairy'],
      noEffectAgainst: []
    },
    defense: {
      weakAgainst: ['ice', 'dragon', 'fairy'],
      immuneAgainst: [],
      resistantAgainst: ['fire', 'water', 'electric', 'grass']
    }
  },
  fairy: {
    attack: {
      effectiveAgainst: ['fighting', 'dragon', 'dark'],
      weakAgainst: ['poison', 'steel'],
      noEffectAgainst: []
    },
    defense: {
      weakAgainst: ['poison', 'steel'],
      immuneAgainst: [],
      resistantAgainst: ['fighting', 'bug', 'dark', 'fairy']
    }
  }
};


con.query("SELECT channel FROM channels", function (err, result, fields) {
  if (err) throw err;
    var channels = [];
    result.forEach(element => {
      channels.push(element.channel);
    }); 
    
  const client = new tmi.Client({
    options: { debug: true },
    connection: {
      secure: true,
      reconnect: true
    },
    identity: {
      username: 'AleenzBot',
      password: 'oauth:n1yb1uf94jqav61udv9pvgqzu9ye2g'
    },
    channels:channels
  });



  client.connect();
  
  client.on('message', (channel, tags, message, self) => {
    // Ignore echoed messages.
    if(self) return;
  
    var isOwner = false;
    if(channel.substring(1) === tags.username || tags.username == 'aleenz') isOwner = true;
    var isMod = tags.mod;
    var isVIP = 0;
    if (tags.badges !== null) {
      if(tags.badges["vip"]==1) isVIP = true;
    }
    // DEBUG 


    if(message.toLowerCase().startsWith('!math')) { mathHandler.calculate(client,channel, message)}

    const lowerCaseMessage = message.toLowerCase();
    if (lowerCaseMessage.startsWith('!type')) {
        const parts = lowerCaseMessage.split(' ');
        const type = parts[1];
        const context = parts[2] ? parts[2] : 'both'; // Defaults to 'both' if not specified
        
        const validContexts = ['attack', 'defense', 'both'];
        if (!validContexts.includes(context)) {
          client.say(channel, `Invalid context "${context}". Please use "attack", "defense", or leave it blank for both.`);
          return;
        }
        
        const response = handleTypeCommand(type, context);
        client.say(channel, response);
      }
  
    if(message.toLowerCase() === '!infomsg') { var_dump(tags);}
  
    // ALEENZBOT INTERACTIONS
    else if(message.toLowerCase().includes('hi aleenzbot') || message.toLowerCase().includes('hey aleenzbot') || message.toLowerCase().includes('hello aleenzbot')){
      client.say(channel, `Hi `+tags.username+` :)`);
    }
    else if(message.toLowerCase().startsWith('aleenzbot say ') && isOwner ) {
      client.say(channel, message.substring(14));
    }

    //DICTIONARY
    else if(message.toLowerCase().startsWith('!define ')){
/*
      params = message.toLowerCase().split(" ");
      dictionary.getDefinition(con,params, function(res){
        console.log(res)
        client.say(channel, res  );
      });
*/
    }
  
    // BIRD FACTS ( uses callbacks)
    else if(message.toLowerCase().startsWith('!birdfact')) {  
      params = message.toLowerCase().split(" ");
      birdfacts.getFact(con,params, function(res){
        client.say(channel, res  );
      });
    }else if(message.toLowerCase().startsWith('!upvote')) {  
      params = message.toLowerCase().split(" ");
      params.push(tags["user-id"]);
      birdfacts.upVote(con,params, function(res){
        client.say(channel, res  );
      });
    }else if(message.toLowerCase().startsWith('!whenowl')) { 
      let firstDate = new Date(),
      secondDate = new Date("2023-03-23T21:00:00Z"),
      timeDifference = Math.abs(secondDate.getTime() - firstDate.getTime());

      var days = timeDifference / (1000 * 60 * 60 * 24)
      var seconds = Math.ceil(timeDifference / (1000))

      client.say(channel, "OWL Starts in  " + seconds + " seconds." );


     }



  // MEME COMMANDS
    if(channel === "#jawscasts" || channel === "#aleenz"  ){
          if(message.toLowerCase().includes('txcxx')) {
            client.say(channel, "You mean txxxxxxxxxxxxx");
          }
          else if(message.toLowerCase() == '!alttab' && isOwner) {
              var i = 0;
              while (i < 10){
                client.say(channel, "DON'T ALT TAB MR STRIMER");
                i++;
              }
          }
          else if(message.toLowerCase().includes('at some point')) {
            client.say(channel, "PepeL");
          }
          else if(message.toLowerCase() === '!streamerareyougoingtobeplayingthecoopvideogameittakestoowithavast') {
            client.say(channel, `no`);
          }else if((tags.username == 'banterlife' ) && message.toLowerCase().includes('@jawscasts')){
            client.say(channel, '@banterlife');
          }
    }
    
    
        // get shiba price
         if((message.toLowerCase() == '!shiba' )){ coinBaseHandler.getShibaPrice(client, channel);}

    
// FIRSTVIEWER
else if(message.toLowerCase().startsWith('!newviewer')) {  
  params = message.toLowerCase().split(" ");

  newViewerHandler.getMsg(con,params, function(res){
    client.say(channel, res  );
  });
}else if(message.toLowerCase().startsWith('!addnewviewer')) {  
  if(isMod || isOwner || isVIP){
    params = message.split(" ");

    newViewerHandler.addMsg(con,params, function(res){
      client.say(channel, res  );
    });
  }
  
}else if(message.toLowerCase().startsWith('!votemsg')) {
  params = message.toLowerCase().split(" ");
  params.push(tags["user-id"]);
  newViewerHandler.upVote(con,params, function(res){
    client.say(channel, res  );
  });
}
 // QUOTES 2.0  ( uses callbacks)
 /*else if(message.toLowerCase().startsWith('!quote')) {  
  quotes.getQuote(con,message.toLowerCase(), function(res){
    client.say(channel, res  );
  });
}else if(message.toLowerCase().startsWith('!addquote ')) {  
  params = message.toLowerCase().split(" ");
  params.push(tags["user-id"]);
  birdfacts.upVote(con,params, function(res){
    client.say(channel, res  );
  });
}
  */
  //QUOTES 


  if(message.toLowerCase().startsWith('!quote') ) {
    var str = message.toLowerCase();
    var extra = str.substr(str.indexOf(' ')+1);

    con.query("SELECT * FROM channels WHERE channel = '" + channel.substr(1) +"'", function (err, result, fields) {
      if (err) throw err;
      chan = result[0];

      if(str.indexOf(' ')<0){
        con.query("SELECT number FROM quotes WHERE channel = " +chan.id+ " ORDER BY number DESC LIMIT 1", function (err, result, fields) {
          if (err) throw err;
          var top = 0;
          if(result.length > 0){
            top = result[0].number;
          }
          var no = Math.floor(Math.random() * top) + 1 ;

          con.query("SELECT * FROM quotes WHERE channel = " + chan.id + " AND number = " + no, function (err, result, fields) {
            if (err) throw err;
            client.say(channel, '"'+result[0].quote +'" - ' + chan.name + ", " +result[0].year );
          });  
        });  
      }else if(isNaN(extra)){
        if(isMod || isOwner || isVIP){
          con.query("SELECT number FROM quotes WHERE channel = " +chan.id+ " ORDER BY number DESC LIMIT 1", function (err, result, fields) {
            if (err) throw err;
            var next = 1;
            if(result.length > 0){
              next = result[0].number+1;
            }
            con.query("INSERT INTO quotes(channel,number,quote, year) VALUES ("+chan.id+","+next+",\""+extra+"\",'"+new Date().getFullYear()+"') ", function (err, result, fields) {
              if (err) throw err;
              client.say(channel, "The quote has been added. ("+next+")" );
            });
          });   
        }else{
          client.say(channel, "Only mods can add quotes.");
        }
       
      }else{
        con.query("SELECT * FROM quotes WHERE channel = " + chan.id + " AND number = " + extra, function (err, result, fields) {
          if (err) throw err;
          if(typeof result[0] !== 'undefined')
          client.say(channel, '"'+result[0].quote +'" - ' + chan.name + ", " +result[0].year );
        });  
      }
    });

  
  }

      // FANTASY PLAYERS OWL 
  
      if(message.toLowerCase() === '!roll dps') {
        var no = Math.floor(Math.random() * 70) + 1 ;
        var player = "";
        con.query("SELECT * FROM players_fantasy WHERE dps = " +no, function (err, result, fields) {
          if (err) throw err;
          player = result[0].player;
          client.say(channel,no + " | " + player + " | " + result[0].analysis);
          client.say(channel,"Congrats, " + tags.username + " !" );
      
        });
       
      }
      
      if(message.toLowerCase() === '!roll support') {
        var no = Math.floor(Math.random() * 48) + 1 ;
        var player = "";
        con.query("SELECT * FROM players_fantasy WHERE support = " +no, function (err, result, fields) {
          if (err) throw err;
          player = result[0].player;
          client.say(channel,no + " | " + player + " | " + result[0].analysis);
          client.say(channel,"Congrats, " + tags.username + " !" );
      
        });
       
      }
      
      if(message.toLowerCase() === '!roll tank') {
        var no = Math.floor(Math.random() * 51) + 1 ;
        var player = "";
        con.query("SELECT * FROM players_fantasy WHERE tank = " +no, function (err, result, fields) {
          if (err) throw err;
          player = result[0].player;
          client.say(channel,no + " | " + player + " | " + result[0].analysis);
          client.say(channel,"Congrats, " + tags.username + " !" );
      
        });
       
      }
      
      if(message.toLowerCase() === '!roll team') {
        var no = Math.floor(Math.random() * 20) + 1 ;
        client.say(channel, "TEAM # "+no);
      }
      
      if(message.toLowerCase() === '!roll bench') {
        var no = Math.floor(Math.random() * 169) + 1 ;
        var player = "";
        con.query("SELECT * FROM players_fantasy WHERE general = " +no, function (err, result, fields) {
          if (err) throw err;
          player = result[0].player;
          client.say(channel,no + " | " + player + " | " + result[0].analysis);
          client.say(channel,"Congrats, " + tags.username + " !" );
      
        });
       
      }
      
      if(message.toLowerCase().startsWith('!dps ') ) {
        var str = message.toLowerCase();
        var extra = str.substr(str.indexOf(' ')+1);
        var player = "";
        con.query("SELECT * FROM players_fantasy WHERE dps = " + extra, function (err, result, fields) {
          if (err) throw err;
          player = result[0].player;
          client.say(channel, result[0].dps + " | " + player + " | " + result[0].analysis);
        });
      }
      
      if(message.toLowerCase().startsWith('!tank ') ) {
        var str = message.toLowerCase();
        var extra = str.substr(str.indexOf(' ')+1);
        var player = "";
        con.query("SELECT * FROM players_fantasy WHERE tank = " + extra, function (err, result, fields) {
          if (err) throw err;
          player = result[0].player;
          client.say(channel, result[0].tank + " | " + player + " | " + result[0].analysis);
        });
      }
      
      if(message.toLowerCase().startsWith('!support ') ) {
        var str = message.toLowerCase();
        var extra = str.substr(str.indexOf(' ')+1);
        var player = "";
        con.query("SELECT * FROM players_fantasy WHERE support = " + extra, function (err, result, fields) {
          if (err) throw err;
          player = result[0].player;
          client.say(channel, result[0].support + " | " + player + " | " + result[0].analysis);
        });
      }
      
      if(message.toLowerCase().startsWith('!bench ') ) {
        var str = message.toLowerCase();
        var extra = str.substr(str.indexOf(' ')+1);
        var player = "";
        con.query("SELECT * FROM players_fantasy WHERE general = " + extra, function (err, result, fields) {
          if (err) throw err;
          player = result[0].player;
          client.say(channel, result[0].general + " | " + player + " | " + result[0].analysis);
        });
      }
    
    // POKEMON NAMIMNG SYSTEM
      var not_using = true;
      if(message.toLowerCase().startsWith('!nextname')) {
        if(not_using) {
          client.say(channel,"The name queue is not being used currently." ); 
          return;
        } 
        con.query("SELECT * FROM channels WHERE channel = '" + channel.substr(1) +"'", function (err, result, fields) {
          if (err) throw err;
          chan = result[0];
    
          con.query("SELECT * FROM pokemon_names WHERE channel = " + chan.id + " AND completed = 0 ORDER BY id ASC LIMIT 1", function (err, result, fields) {
            if (err) throw err;
            if(typeof result[0] !== 'undefined')
            client.say(channel, result[0].user + " ("+ result[0].name +')'  );
          }); 
    
        });
    
      }
    
      if(message.toLowerCase().startsWith('!namequeue')) {
        if(not_using) {
          client.say(channel,"The name queue is not being used currently." ); 
          return;
        } 
        con.query("SELECT * FROM channels WHERE channel = '" + channel.substr(1) +"'", function (err, result, fields) {
          if (err) throw err;
          chan = result[0];
    
          con.query("SELECT * FROM pokemon_names WHERE channel = " + chan.id + " AND completed = 0 ORDER BY id ASC LIMIT 20", function (err, result, fields) {
            if (err) throw err;
            if(typeof result[0] !== 'undefined')
            var str = "";
            var cont = 0;
            result.forEach(element => {
              str+= (cont+1)+". " + result[cont].user + " ("+ result[cont].name +') | '
              cont++;
            }); 
            client.say(channel,str );
          }); 
    
        });
    
      }
    
      if(message.toLowerCase().startsWith('!completename')) {
      
        if(isMod || isOwner){
          if(not_using) {
            client.say(channel,"The name queue is not being used currently." ); 
            return;
          } 
          con.query("SELECT * FROM channels WHERE channel = '" + channel.substr(1) +"'", function (err, result, fields) {
            if (err) throw err;
            chan = result[0];
      
            con.query("SELECT * FROM pokemon_names WHERE channel = " + chan.id + " AND completed = 0 ORDER BY id ASC LIMIT 1", function (err, result, fields) {
              if (err) throw err;
              if(typeof result[0] !== 'undefined'){
                con.query("UPDATE  pokemon_names SET completed = 1 WHERE id = "+ result[0].id, function (err, result, fields) {
                  if (err) throw err;
                  client.say(channel, "The name has been completed." );
                });
              }
            }); 
      
          });
        }
        
    
      }
    
      if(message.toLowerCase().startsWith('!editname ')) {
        if(isMod || isOwner){
          if(not_using) {
            client.say(channel,"The name queue is not being used currently." ); 
            return;
          } 
        var array = message.split(" ");
        var no = array[1];
        var name = "";
    
        if(array.length > 2)
          name = "";
        for (let index = 2; index < array.length; index++) {
          name+= array[index] + " ";
        }
    
        
    
        con.query("SELECT * FROM channels WHERE channel = '" + channel.substr(1) +"'", function (err, result, fields) {
          if (err) throw err;
          chan = result[0];
    
          con.query("SELECT * FROM pokemon_names WHERE channel = " + chan.id + " AND completed = 0 ORDER BY id ASC LIMIT 20", function (err, result, fields) {
            if (err) throw err;
            var id = 0;
            if(typeof result[0] !== 'undefined'){
              id = result[no-1].id;
              con.query("UPDATE  pokemon_names SET name = '"+name+"' where id =  " + id, function (err, result, fields) {
                if (err) throw err;
                client.say(channel, "The name has been updated." );
              });
    
            }
    
          
          });
         
    
        });
      }
      }
    
      if(message.toLowerCase().startsWith('!delname ')) {
        if(isMod || isOwner){
          if(not_using) {
            client.say(channel,"The name queue is not being used currently." ); 
            return;
          } 
        var array = message.split(" ");
        var no = array[1];
       
    
        
    
        con.query("SELECT * FROM channels WHERE channel = '" + channel.substr(1) +"'", function (err, result, fields) {
          if (err) throw err;
          chan = result[0];
    
          con.query("SELECT * FROM pokemon_names WHERE channel = " + chan.id + " AND completed = 0 ORDER BY id ASC LIMIT 20", function (err, result, fields) {
            if (err) throw err;
            var id = 0;
            if(typeof result[0] !== 'undefined'){
              id = result[no-1].id;
              con.query("UPDATE  pokemon_names SET completed = -1  where id =  " + id, function (err, result, fields) {
                if (err) throw err;
                client.say(channel, "The name has been deleted." );
              });
    
            }
    
          
          });
         
    
        });
      }
      }
    
      if(message.toLowerCase().startsWith('!addname ') || message.toLowerCase().startsWith('!assname ')) {
        if(isMod || isOwner){
          if(not_using) {
            client.say(channel,"The name queue is not being used currently." ); 
            return;
          } 
        var array = message.split(" ");
        var user = array[1];
        var name = "TBA";
    
        if(array.length > 2)
          name = "";
        for (let index = 2; index < array.length; index++) {
          name+= array[index] + " ";
        }
    
        con.query("SELECT * FROM channels WHERE channel = '" + channel.substr(1) +"'", function (err, result, fields) {
          if (err) throw err;
          chan = result[0];
    
          con.query("INSERT INTO pokemon_names(channel,user,name, completed) VALUES ("+chan.id+",'"+user+"','"+name+"',0) ", function (err, result, fields) {
            if (err) throw err;
            client.say(channel, "The name has been added." );
          });
    
        });
      }
      }
    


  });

});
// HANDLE TYPE COMMAND
function handleTypeCommand(type, context = 'both') {
  const typeData = typeMatchups[type];
  if (!typeData) {
    return `Invalid type "${type}". Please try again.`;
  }

  // Format attack information
  const attackEffective = typeData.attack.effectiveAgainst.length > 0 ? typeData.attack.effectiveAgainst.join(', ') : 'None';
  const attackWeak = typeData.attack.weakAgainst.length > 0 ? typeData.attack.weakAgainst.join(', ') : 'None';
  const attackNoEffect = typeData.attack.noEffectAgainst.length > 0 ? typeData.attack.noEffectAgainst.join(', ') : 'None';
  const attackInfo = `Attacking - Strong: ${attackEffective} | Weak: ${attackWeak} | No Effect: ${attackNoEffect}`;

  // Format defense information
  const defenseWeak = typeData.defense.weakAgainst.length > 0 ? typeData.defense.weakAgainst.join(', ') : 'None';
  const defenseImmune = typeData.defense.immuneAgainst.length > 0 ? typeData.defense.immuneAgainst.join(', ') : 'None';
  const defenseResist = typeData.defense.resistantAgainst.length > 0 ? typeData.defense.resistantAgainst.join(', ') : 'None';
  const defenseInfo = `Defending - Weak: ${defenseWeak} | Immune: ${defenseImmune} | Resistant: ${defenseResist}`;

  // Handle the specific context: attack, defense, or both
  if (context === 'attack') {
    return `${type} Type: ${attackInfo}`;
  } else if (context === 'defense') {
    return `${type} Type: ${defenseInfo}`;
  } else {
    return `${type} Type: ${attackInfo} ; ${defenseInfo}`;
  }
}




function httpGet(url,key){
   
}