module type PROTOCOL_V1 =
  functor (Env : Republia_protocol_environment_sigs.V1.T) -> Env.Updater.PROTOCOL

val register: string -> (module PROTOCOL_V1) -> unit

val mem: Protocol_hash.t -> bool
val get: Protocol_hash.t -> (module PROTOCOL_V1) option
val get_exn: Protocol_hash.t -> (module PROTOCOL_V1)
