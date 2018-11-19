module type PROTOCOL_V1 =
  functor (Env : Rpb_protocol_environment_sigs.V1.T) -> Env.Updater.PROTOCOL

module VersionTable = Protocol_hash.Table

let versions : (module PROTOCOL_V1) VersionTable.t =
  VersionTable.create 20

let register hash proto =
  let hash = Protocol_hash.of_b58check_exn hash in
  VersionTable.add versions hash proto

let mem hash = VersionTable.mem versions hash

let get_exn hash = VersionTable.find versions hash
let get hash =
  try Some (get_exn hash)
  with Not_found -> None

