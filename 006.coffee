sum_of_squares = (arr) ->
  (Math.pow(n, 2) for n in arr).reduce (x, y) -> x + y

square_of_sum = (arr) ->
  Math.pow((arr.reduce (x, y) -> x + y), 2)

first_hundred = [1..100]

alert(square_of_sum(first_hundred) - sum_of_squares(first_hundred))
