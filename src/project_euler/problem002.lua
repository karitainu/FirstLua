-- Problem 002
-- 直前の 2 要素を足してできる Fibonacci 数列
-- 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
-- において 4,000,000 を超えない偶数の和を求めよ


local a = 1
local b = 2
local sum = b

repeat
   local f = a + b
   if f % 2 == 0 then
      sum = sum + f
   end
   a = b
   b = f
until f > 4000000

print(sum)
