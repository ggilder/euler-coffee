factorize = (num) ->
  n = 2
  while (n <= Math.sqrt(num))
    if (num % n is 0)
      num = num / n
    else
      n++
  return num
  
alert(factorize(600851475143))