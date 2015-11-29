-- Problem 001
-- 3 か 5 の倍数となる 1000 未満の自然数の和を求めよ

local sum = 0
for i=1,999 do
   if i % 3 == 0 or i % 5 == 0 then
      sum = sum + i
   end
end
print(sum)
