let score (x: float) (y: float): int =
  let dis = Float.sqrt ((x ** 2.) +. (y ** 2.)) in 
  if (dis > 10.) then 0 
  else if (dis > 5.) then 1
  else if (dis > 1.) then 5
  else 10
  