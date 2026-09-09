type nucleotide = A | C | G | T

let hamming_distance dna1 dna2 =
  let len1 = List.length dna1 in 
  let len2 = List.length dna2 in 
  if len1 != len2 then Error "strands must be of equal length" else 
  let r = ref 0 in 
  List.iter2 (fun l1 l2 -> if l1 != l2 then r := !r + 1) dna1 dna2;
  Ok !r 