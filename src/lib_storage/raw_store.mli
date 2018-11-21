open Store_sigs

include STORE

val init: ?mapsize:int64 -> string -> t tzresult Lwt.t
val close : t -> unit

