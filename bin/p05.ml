let reverse list =
  let rec aux acc = function
    | [] -> acc
    | h :: t -> aux (h :: acc) t
  in
  aux [] list
;;

let () = assert (reverse [ "a"; "b"; "c" ] = [ "c"; "b"; "a" ])
