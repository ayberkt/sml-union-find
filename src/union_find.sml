structure UnionFind : UNION_FIND =
struct

  fun repeat x 0 = []
    | repeat x n = x :: (repeat x (n-1))

  val elements : int vector ref = ref #[]

  fun add n =
    let
        val xs = Vector.fromList (repeat ~1 n)
    in
        elements := Vector.concat [xs, !elements]
    end

  fun find elem =
    let
        val v = Vector.sub (!elements, elem)
    in
        if v < 0
        then elem
        else
            let
                val x = find(v)
                val _ = elements := Vector.update(!elements, elem, v)
            in
                v
            end
    end

  fun union a b =
    let
        val aRoot = find(a)
        val bRoot = find(b)
        val aCount = Vector.sub (!elements, aRoot)
        val bCount = Vector.sub (!elements, bRoot)
        val newSize = aCount + bCount
    in
        if ~aCount < ~bCount
        then
            let
                val _ = elements := Vector.update (!elements, aRoot, bRoot)
                val _ = elements := Vector.update (!elements, bRoot, newSize)
            in
                ()
            end
        else
            let
                val _ = elements := Vector.update (!elements, bRoot, aRoot)
                val _ = elements := Vector.update (!elements, aRoot, newSize)
            in
                ()
            end
    end
end
