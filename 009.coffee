init_triplet = (start, sum) ->
  [start, start + 1, sum - (2 * start) - 1]

pytrip = (sum) ->
  [a, b, c] = init_triplet(1, sum)
  while b > a and c > b
    while c > b
      if Math.pow(a, 2) + Math.pow(b, 2) is Math.pow(c, 2)
        return [a, b, c]
      c--
      b++
    a++
    [a, b, c] = init_triplet a, sum

[a, b, c] = pytrip(1000)
process.stdout.write "#{a} #{b} #{c} (product is #{a * b * c})"
