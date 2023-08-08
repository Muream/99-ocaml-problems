let rec last = function
  | [] -> None
  | [ x ] -> Some x
  | _ :: t -> last t
;;

let () =
  assert (last [ "a"; "b"; "c"; "d" ] = Some "d");
  assert (last [] = None)
;;

