term = 1
last = 0
sum = 0
while (term < 4000000)
  if (term % 2 == 0)
    sum += term
  term = term + last
  last = term - last
alert(sum)