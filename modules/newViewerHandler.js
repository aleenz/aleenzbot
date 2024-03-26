
function getMsg(con,params, callback ){
    var msg = "a";  
    if(params.length >= 2){
        console.log(JSON.stringify(params))

        con.query("SELECT * FROM  newviewer_msgs WHERE id = " + params[1], function (err, result, fields) {
            if (err) throw err;
            if(result.length==0){
                msg = "That message does not exist. (!newviewer number)"
                callback(msg);
            }else{
                var query = "SELECT COUNT(*) as votes FROM newviewer_vote WHERE msg = " + result[0].id; 
                con.query(query, function (err, r, fields) {
                    if (err) throw err;
                    var votes = r[0].votes;
                    msg = result[0].id + `. `+result[0].user+`: ` + result[0].msg  +  ` | Votes: ` + votes;
                    callback(msg);
                })
            }
          });
    }else{
        con.query("SELECT * FROM newviewer_msgs ORDER BY RAND() LIMIT 1", function (err, result, fields) {
            if (err) throw err;
            var query = "SELECT COUNT(*) as votes FROM newviewer_vote WHERE msg = " + result[0].id; 
            con.query(query, function (err, r, fields) {
                if (err) throw err;
                var votes = r[0].votes;
                msg = result[0].id + `. `+result[0].user+`: ` + result[0].msg  +  ` | Votes: ` + votes;
                callback(msg);
            })
          });
    }
    
}

function addMsg(con, params,callback){
    var msgs = "";
    new_params = params.slice(1).join(' ');
    parts = new_params.split('::');
    if(parts.length == 2){
        user = parts[0];
        msgs = parts[1]+"";
        console.log(typeof msgs)

        
        msgs = msgs.replace(/"/g,'""')
        var query = `INSERT INTO newviewer_msgs(msg, user) VALUES(\"`+msgs+`\",'`+user+`') `; 


        con.query(query, function (err, r, fields) {

            if (err) throw err;

            callback("First Message recorded succesfully ("+r['insertId']+")");

        })
        
    }else{
        callback("I couldn't add the message. !addnewviewer user::message");

    }

}

function upVote(con,params,callback){
    var msg = "";
    if(params.length == 3){
        user = params[params.length-1];
        msg = params[1];

        con.query("SELECT * FROM newviewer_msgs WHERE id = " + params[1], function (err, result, fields) {
            if (err) throw err;
            if(result.length==0){
                callback("That First Time Viewer Message does not exist. (!voteMsg number)");
            }else{

                var query = "SELECT * FROM newviewer_vote WHERE user =  " + user + " AND msg = " + msg; 
                con.query(query, function (err, exists, fields) {
                    if (err) throw err;
                    if(exists.length==0){
                        var query = "INSERT INTO newviewer_vote(msg, user ) VALUES("+msg+","+user+") "; 
                        con.query(query, function (err, r, fields) {
                            if (err) throw err;

                          
                        })
                    }else{
                    }

                })
            }
          });

    }else{

        callback("You must include the message to upvote (!voteMsg number).");
    }
}

module.exports = { getMsg, upVote, addMsg };