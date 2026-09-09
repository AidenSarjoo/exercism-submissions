let square_of_sum n = 
  let rec loop x acc = 
    if x > n then acc
    else loop (x + 1) (acc + x)
  in
  let sum = loop 1 0 in
  sum * sum

let sum_of_squares n =
  let rec loop x acc = 
    if x > n then acc
    else loop (x + 1) (acc + (x * x))
  in
  loop 1 0
    

let difference_of_squares n =
  square_of_sum n - sum_of_squares n
