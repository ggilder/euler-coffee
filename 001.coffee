sum = 0
for n in (n for n in [3...1000] when n % 3 is 0 or n % 5 is 0)
  sum += n
alert(sum)