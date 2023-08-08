let is_palindrome l = l = List.rev l

let () =
  assert (is_palindrome [ "x"; "a"; "m"; "a"; "x" ]);
  assert (not (is_palindrome [ "a"; "b" ]))
;;
