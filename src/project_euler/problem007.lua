-- Problem 007
-- 10,001 番目の素数を求めよ

require "common"

local n = 2
local i = 1
while i ~= 10001 do
   n = n + 1
   if isPrime(n) then
      i = i + 1
   end
end

print(n)
