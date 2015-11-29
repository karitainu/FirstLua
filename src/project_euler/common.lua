function string:split(sep)
   local sep, fields = sep or ":", {}
   local pattern = string.format("([^%s]+)", sep)
   self:gsub(pattern, function(c) fields[#fields+1] = c end)
   return fields
end

function isEven(n)
   return n % 2 == 0
end

function isOdd(n)
   return not isEven(n)
end

local primes = {2}
function isPrime(n)
   for _, p in ipairs(primes) do
      if n == p then
         return true
      elseif n % p == 0 then
         return false
      end
   end
   table.insert(primes, n)
   return true
end

