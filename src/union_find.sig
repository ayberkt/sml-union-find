signature UNION_FIND =
sig
    val add : int -> unit
    val find : int -> int
    val union : int -> int -> unit
end
