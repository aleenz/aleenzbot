
function getFact(con,params, callback ){
    var msg = "a";  
    if(params.length == 2){
        con.query("SELECT * FROM bird_fact WHERE id = " + params[1], function (err, result, fields) {
            if (err) throw err;
            if(result.length==0){
                msg = "That fact does not exist. (!birdfact number)"
                callback(msg);
            }else{
                var query = "SELECT COUNT(*) as votes FROM fact_vote WHERE fact = " + result[0].id; 
                con.query(query, function (err, r, fields) {
                    if (err) throw err;
                    var votes = r[0].votes;
                    msg = `Bird Fact #` + result[0].id + `: \"` + result[0].fact  +  `\" | Votes: ` + votes;
                    callback(msg);
                })
            }
          });
    }else{
        con.query("SELECT * FROM bird_fact ORDER BY RAND() LIMIT 1", function (err, result, fields) {
            if (err) throw err;
            var query = "SELECT COUNT(*) as votes FROM fact_vote WHERE fact = " + result[0].id; 
            con.query(query, function (err, r, fields) {
                if (err) throw err;
                var votes = r[0].votes;
                msg = `Bird Fact #` + result[0].id + `: \"` + result[0].fact  +  `\" | Votes: ` + votes;
                callback(msg);
            })
          });
    }
    
}

function upVote(con,params,callback){
    var msg = "";
    if(params.length == 3){
        user = params[params.length-1];
        fact = params[1];

        con.query("SELECT * FROM bird_fact WHERE id = " + params[1], function (err, result, fields) {
            if (err) throw err;
            if(result.length==0){
                callback("That fact does not exist. (!upvote number)");
            }else{

                var query = "SELECT * FROM fact_vote WHERE user =  " + user + " AND fact = " + fact; 
                con.query(query, function (err, exists, fields) {
                    if (err) throw err;
                    if(exists.length==0){
                        var query = "INSERT INTO fact_vote(fact, user ) VALUES("+fact+","+user+") "; 
                        con.query(query, function (err, r, fields) {
                            if (err) throw err;

                            console.log("Vote casted");
                          
                        })
                    }else{
                        console.log("Vote existed");
                    }

                })
            }
          });

    }else{

        callback("You must include the fact to upvote (!upvote number).");
    }
}




module.exports = { getFact, upVote };