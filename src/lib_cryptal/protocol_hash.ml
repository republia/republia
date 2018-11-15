include Blake2B.Make (Base58) (struct
    let name = "Protocol_hash"
    let title = "A Tezos protocol ID"
    let b58check_prefix = Base58.Prefix.protocol_hash
    let size = None
  end)

let () =
  Base58.check_encoded_prefix b58check_encoding "P" 51

module Logging = struct
  let tag = Tag.def ~doc:title name pp
end
