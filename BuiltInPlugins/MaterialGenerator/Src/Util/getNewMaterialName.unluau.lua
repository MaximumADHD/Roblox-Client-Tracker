-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("MaterialGenerator")
local function fun0(arg1)
   arg1 = arg1:lower()
   arg1 = arg1:gsub("[ _](%a)", string.upper)
   arg1 = arg1:gsub("^%a", string.upper)
   arg1 = arg1:gsub("%p", "")
   return arg1
end

local function var1(arg1, arg2)
   local var0 = {}
   local var22 = arg2
   local var23 = nil
   local var24 = nil
   local var27 = string.lower(var26)
   local var28 = true
   string.lower(var26) = var28
   var23 = arg1
   local var4 = string.lower(var23)
   if not var0[var4] then
      return arg1
   end
   local var5 = 0 + 1
   var27 = var4
   var28 = var5
   while var0[string.format("%s %0d", var27, var28)] do
   end
   return string.format("%s %0d", arg1, var5)
end

return function(arg1, arg2)
   local var45 = arg1
   var45 = var45:lower()
   var45 = var45:gsub("[ _](%a)", string.upper)
   var45 = var45:gsub("^%a", string.upper)
   local var59 = var45:gsub("%p", "")
   var45 = var59
   var59 = var45
   return var1(var59, arg2 or {})
end
