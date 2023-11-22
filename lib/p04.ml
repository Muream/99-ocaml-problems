let length list =
  let rec aux list acc =
    match list with
    | [] -> acc
    | _ :: t -> aux t (acc + 1)
  in
  aux list 0
;;

let%test _ = length [ "a"; "b"; "c" ] = 3
let%test _ = length [] = 0
