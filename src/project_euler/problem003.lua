-- Problem 003
-- 600851475143 の最大の素因数をもとめよ

local p = 600851475143
local f = 2
local fmax = f
while p ~= 1 do
   if p % f == 0 then
      p = p / f
      fmax = f
   end
   f = f + 1
end

print(fmax)
