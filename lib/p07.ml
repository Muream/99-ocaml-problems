type 'a node =
  | One of 'a
  | Many of 'a node list

let flatten list =
  let rec aux list acc =
    match list with
    | [] -> acc
    | One h :: t -> aux t (h :: acc)
    | Many l :: t -> aux t (aux l acc)
  in
  List.rev (aux list [])
;;

let%test _ =
  flatten [ One "a"; Many [ One "b"; Many [ One "c"; One "d" ]; One "e" ] ]
  = [ "a"; "b"; "c"; "d"; "e" ]
;;
