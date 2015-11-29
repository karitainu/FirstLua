-- Problem 012
-- 三角数 S_n = 1 + 2 + ... + n のとき、500個以上の約数をもつ最初の S_n を求めよ

function triangle(n)
   return n * (n+1) / 2
end

-- メモ化
local function varg_tostring(...)
    local s = select(1, ...)
    for n = 2, select('#', ...) do
        s = s..","..select(n,...)
    end
    return s
end

local function memoize(f)
    local cache = {}
    return function (...)
        local al = varg_tostring(...)
        if cache[al] then
            return cache[al]
        else
            local y = f(...)
            cache[al] = y
            return y
        end
    end
end

local primes = {2}
function _isPrime(n)
   for i, p in ipairs(primes) do
      if n % p == 0 then
         return false
      end
   end
   table.insert(primes, n)
   return true
end
isPrime = memoize(_isPrime)

function _divsors(set, n)
   if isPrime(n) then
      set[1] = true
      set[n] = true
      return set
   elseif n % 2 == 0 then
      set[n / 2] = true
      set[n + 1] = true
      return table.concat(divsors(n / 2), divsors(n + 1))
   else
      set[n] = true
      set[(n + 1) / 2] = true
      return table.concat(divsors(n), divsors((n + 1) / 2))
   end
   -- local result = 2 -- 1, n
   -- for i = 2,n/2 do
   --    if n % i == 0 then
   --       result = result + 1
   --    end
   -- end
   -- return result
end
divsors = memoize(_divsors)

local result = {}
local n = 2
while result  < 500 do
   n = n + 1
   result = divsors(triangle(n))
   print(result)
end
print(triangle(n)) -- 76576500
