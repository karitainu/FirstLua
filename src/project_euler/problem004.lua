-- Problem 004
-- 左右どちらから読んでも同じになる数 : palindrome (eg. 9009 = 91 x 99)
-- のうち 3 文字の数同士の積で最も大きい物を求めよ

function isPalindrome(n)
   local s = tostring(n)
   return s:reverse() == s
end


local result = 101*101
for i = 999, 100, -1 do
   for j = 999, 100, -1 do
      n = i * j
      if n < result then
         break
      elseif isPalindrome(n) then
         result = n
      end
   end
end

print(result)
