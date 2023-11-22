let is_palindrome l = l = List.rev l
let%test _ = is_palindrome [ "x"; "a"; "m"; "a"; "x" ]
let%test _ = not (is_palindrome [ "a"; "b" ])
