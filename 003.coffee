factorize = (num, start) ->
  n = start
  n ?= 2
  lim = Math.sqrt(num)
  while (n < lim)
    if (num % n is 0)
      return factorize(num / n, n).concat([n])
    else
      n++
  return [num]
  
alert(factorize(600851475143)[0])