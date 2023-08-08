let rec at n = function
  | [] -> None
  | h :: t -> if n = 0 then Some h else at (n - 1) t
;;

let () =
  assert (at 2 [ "a"; "b"; "c"; "d"; "e" ] = Some "c");
  assert (at 2 [ "a" ] = None)
;;
