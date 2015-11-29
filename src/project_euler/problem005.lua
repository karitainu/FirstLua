-- Problem 005
-- 1 から 20 までの数全てで割り切れる最小の正の整数は ?
-- > 1 .. 20 の最小公倍数 (ユークリッドの互除法)

function gcd(a, b)
   if a == b then
      return a
   else
      return gcd(math.abs(a - b), math.min(a, b))
   end
end

function lcm(a, b)
   return a * b / gcd(a, b)
end


local result = 20
for i = 1,20 do
   result = lcm(result, i)
end

print(result)
