let reverse list =
  let rec aux list acc =
    match list with
    | [] -> acc
    | h :: t -> aux t (h :: acc)
  in
  aux list []
;;

let%test _ = reverse [ "a"; "b"; "c" ] = [ "c"; "b"; "a" ]
