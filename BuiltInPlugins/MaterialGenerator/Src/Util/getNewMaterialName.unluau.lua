-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local function fun0(arg1)
   arg1 = arg1:lower()
   arg1 = arg1:gsub("[ _](%a)", string.upper)
   arg1 = arg1:gsub("^%a", string.upper)
   arg1 = arg1:gsub("%p", "")
   return arg1
end

local function var1(arg1, arg2)
   local var0 = {}
   local var51 = arg2
   local var52 = nil
   local var53 = nil
   local var56 = string.lower(var55)
   local var57 = true
   string.lower(var55) = var57
   var52 = arg1
   local var4 = string.lower(var52)
   if not var0[var4] then
      return arg1
   end
   local var5 = 0 + 1
   var56 = var4
   var57 = var5
   while var0[string.format("%s %0d", var56, var57)] do
   end
   return string.format("%s %0d", arg1, var5)
end

return function(arg1, arg2)
   local var74 = arg1
   var74 = var74:lower()
   var74 = var74:gsub("[ _](%a)", string.upper)
   var74 = var74:gsub("^%a", string.upper)
   local var88 = var74:gsub("%p", "")
   var74 = var88
   var88 = var74
   return var1(var88, arg2 or {})
end
