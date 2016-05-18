structure Test = struct

  open UnionFind

  fun main _ =
    let
      val _ = add 1000000;
      val _ = union 2 3;
      val _ = union 3 5;
      val _ = union 5 7;
      val _ = union 7 2;
      val _ = union 4 6;
      val _ = union 1000 10001;
      val _ = union 1500 2000;
      val _ = union 3000 4000;
      val _ = union 3001 4001;
      val _ = union 3002 4002;
      val _ = union 3003 4003;
      val _ = union 3004 4004;
      val _ = union 3005 4005;
      val _ = union 3006 4006;
      val _ = union 2001 6001;
      val _ = union 2002 6002;
      val _ = union 2003 6003;
      val _ = union 2004 6004;
      val _ = union 2005 6005;
      val vs = [(find 2) = (find 3),
                (find 3) = (find 5),
                (find 2) = (find 5),
                (find 7) = (find 2)]
      val _ = if List.all (fn x => x) vs
              then print "All tests succeeded."
              else print "Failed some tests."
    in
    1
    end
end
