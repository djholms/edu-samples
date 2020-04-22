const Hashes = (redis) => {
    redis.hmset('user:450', 'firstName', 'Jeremy', 'lastName', 'Henri');

    redis.hmset('user:450', 'address', 600);
    redis.hincrby('user:450', 'address', 300);

    redis.hgetall('user:450', (err, result)=> {
          console.log(result);
    });
    // hgetall user:345
// hget user:345 city
// hmget user:345 firstName lastName
// hexists user:345 zip
// hmset user:345 address 345
// hincrby user:345 address 367

}

export default Hashes;