type gov_block_info = {
 hash: Gov_block_hash.t ;
 predecessor: Gov_block_hash.t ;
 size: MBytes.t list ;
 timestamp: Time.t ;
 result: Result_hash.t ;
 protocol: Protocol_hash.t option ;
 operations: Operation_hash.t list option ;
 users: voting_users_pass.t ;
 net: net ;
 }
val info:
 ?operations:bool -> block -> gov_block_info Lwt.t
val list:
 ?operations:bool -> ?length:int -> ?heads:Gov_block_hash.t list -> ?delay:int -
>
 unit -> gov_block_info list Lwt.t
