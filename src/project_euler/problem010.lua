-- Problem 10
-- 2,000,000 未満の素数の和を求めよ

require "common"

local n = 2
local result = n
while n < 2000000 do
   if isPrime(n) then
      result = result + n
   end
   n = n + 1
end

print(result)
