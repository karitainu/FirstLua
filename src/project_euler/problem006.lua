-- Problem 006
-- (1 + .. + 10)^2 - (1^2 + .. + 10^2) を求めよ

local a = 0
local b = 0
for i = 1, 100 do
   a = a + i
   b = b + i * i
end
a = a * a
print(a-b)
