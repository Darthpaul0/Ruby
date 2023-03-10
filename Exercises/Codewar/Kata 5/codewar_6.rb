=begin
The Fibonacci numbers are the numbers in the following 
integer sequence (Fn):
0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, ...

such as

F(n) = F(n-1) + F(n-2) with F(0) = 0 and F(1) = 1.

Given a number, say prod (for product), we search two 
Fibonacci numbers F(n) and F(n+1) verifying
F(n) * F(n+1) = prod.

Your function productFib takes an integer (prod) and 
returns an array:
[F(n), F(n+1), true] if F(n) * F(n+1) = prod.
If you don't find two consecutive F(n) 
verifying F(n) * F(n+1) = prod you will return
[F(n), F(n+1), false]

F(n) being the smallest one such as 
F(n) * F(n+1) > prod.
=end

require_relative 'codewar_4.rb'

def productFibo(num)
  sequence =  Codewar_4.fibo_sequence(num)
  print sequence
end


productFibo(50)
