let length list =
  let rec aux n = function
    | [] -> n
    | _ :: t -> aux (n + 1) t
  in
  aux 0 list
;;

let () =
  assert (length [ "a"; "b"; "c" ] = 3);
  assert (length [] = 0)
;;

