let rec last l =
  match l with
  | [] -> None
  | [ x ] -> Some x
  | _ :: t -> last t
;;

let%test _ = last [ "a"; "b"; "c"; "d" ] = Some "d"
let%test _ = last [] = None
