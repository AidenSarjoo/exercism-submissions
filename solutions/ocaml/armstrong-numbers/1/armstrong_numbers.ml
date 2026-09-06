let int_to_digit_array n = 
  let ns = Int.to_string n in
  Array.init (String.length ns) (fun i -> Char.Ascii.digit_to_int ns.[i])

let rec pow x n = 
  if n = 0 then 1
  else x * pow x (n - 1)
    
let validate n = 
  let arr = int_to_digit_array n in 
  let mb = Array.fold_left (fun sum x -> sum + pow x (Array.length arr)) 0 arr in 
  mb = n
  