type t = {
  known_valid: Operation_hash.t list ;
  (** A valid sequence of operations on top of the current head. *)
  pending: Operation_hash.Set.t ;
  (** Set of known not-invalid operation. *)
}
type mempool = t

val encoding: mempool Data_encoding.t
val bounded_encoding: ?max_operations:int -> unit -> mempool Data_encoding.t

val empty: mempool
(** Empty mempool. *)
