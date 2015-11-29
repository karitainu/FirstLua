-- Problem 009
-- a^2 + b^2 = c^2 かつ a + b + c = 1000 となる a * b * c を求めよ

local result = 0
for a = 1,999 do
   for b = 1,1000-a do
      local c = 1000-a-b
      if a*a + b*b == c*c  then
         result = a * b * c
      end
   end
end

print(result)
