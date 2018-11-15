include Blake2B.Make (Base58) (struct
    let name = "Context_hash"
    let title = "A hash of context"
    let b58check_prefix = Base58.Prefix.context_hash
    let size = None
  end)

let () =
  Base58.check_encoded_prefix b58check_encoding "Co" 52
