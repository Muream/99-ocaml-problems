let rec compress list =
  match list with
  | a :: b :: t when a = b -> compress (b :: t)
  | a :: b :: t when not (a = b) -> a :: compress (b :: t)
  | smaller -> smaller
;;

let%test _ =
  compress [ "a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e" ]
  = [ "a"; "b"; "c"; "a"; "d"; "e" ]
;;
