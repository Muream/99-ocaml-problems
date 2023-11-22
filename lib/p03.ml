let rec at list n =
  match list with
  | [] -> None
  | h :: t -> if n = 0 then Some h else at t (n - 1)
;;

let%test _ = at [ "a"; "b"; "c"; "d"; "e" ] 2 = Some "c"
let%test _ = at [ "a" ] 2 = None
