structure UnionFind =
struct

  val x = 2

  (* val elements = ref #[] *)

  (* fun repeat x 0 = [] *)
  (*   | repeat x n = x : (repeat x (n-1)) *)

  (* fun add n = *)
  (*   elements := revAppend ((repeat -1 n), !elements) *)

  (* fun find elem = *)
  (*   let *)
  (*       v = sub (!elements, elem) *)
  (*   in *)
  (*       if v < 0 *)
  (*       then elem *)
  (*       else *)
  (*           let *)
  (*               val x = find(v) *)
  (*               val _ = elements := Vector.update(elements, elem, v) *)
  (*           in v *)

  (* fun union a b = *)
  (*   let *)
  (*       val aRoot = find(a) *)
  (*       val bRoot = find(b) *)
  (*       val aCount = nth (!elements, aRoot) *)
  (*       val bCount = nth (!elements, bRoot) *)
  (*       val newSize = aCount + bCount *)
  (*   in *)
  (*       if ~aCount < ~bCount *)
  (*       then *)
  (*           let *)
  (*               val _ = elements := Vector.update (!elements, aRoot, bRoot) *)
  (*               val _ = elements := Vector.update (!elements, bRoot, newSize) *)
  (*           in () *)
  (*           end *)
  (*       else *)
  (*           let *)
  (*               val _ elements := Vector.update (!elements, bRoot, aRoot) *)
  (*               val _ elements := Vector.update (!elements, aRoot, newSize) *)
  (*           in () end *)

end
