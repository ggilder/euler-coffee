String::reverse = () ->
  this.split('').reverse().join('')
Number::is_palindrome = () ->
  this.toString().reverse() is this.toString()
Array::max = () ->
  return Math.max.apply(Math, this)

max_palindrome = (min_factor, max_factor) ->
  palindromes = []
  factor1 = factor2 = max_factor
  while factor1 >= min_factor
    while factor2 >= factor1
      product = factor1 * factor2
      if (product.is_palindrome())
        palindromes.push product
        break
      else
        factor2--
    factor1--
    factor2 = max_factor
  return palindromes.max()

alert(max_palindrome(100, 999))