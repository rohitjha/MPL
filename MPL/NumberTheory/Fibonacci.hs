{-
-----------------------------------
| Fibonacci Series Module for MPL |
-----------------------------------

Functionality for:
	-> Calculating the nth term in the Fibonacci Series
	-> Generating Fibonacci Series with n terms

Author: Rohit Jha
Version: 0.1
Date: 31 Dec 2012
-}


module MPL.NumberTheory.Fibonacci
(
	fib,
	fibSeries
)
where


-- nth Fibonacci series term (n >= 1)
{-
	Usage:
		fib 1
		>>> 1
		
		fib 10
		>>> 55
		
		fib 100
		>>> 354224848179263111168
-}
fib :: Integer -> Integer
fib n = round $ phi ** fromIntegral n / sq5
	where
		sq5 = sqrt 5 :: Double
		phi = (1 + sq5) / 2


-- Generate Fibonacci Series with n terms
{-
	Usage:
		fibSeries 10
		>>> [1,1,2,3,5,8,13,21,34,55]
		
		fibSeries 15
		>>> [1,1,2,3,5,8,13,21,34,55,89,144,233,377,610]
-}
fibSeries n = [fib i | i <- [1..n] ]

