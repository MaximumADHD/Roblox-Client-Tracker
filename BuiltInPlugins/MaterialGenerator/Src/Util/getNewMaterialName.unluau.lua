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
   local var46 = arg2
   local var47 = nil
   local var48 = nil
   local var51 = string.lower(var50)
   local var52 = true
   string.lower(var50) = var52
   var47 = arg1
   local var4 = string.lower(var47)
   if not var0[var4] then
      return arg1
   end
   local var5 = 0 + 1
   var51 = var4
   var52 = var5
   while var0[string.format("%s %0d", var51, var52)] do
   end
   return string.format("%s %0d", arg1, var5)
end

return function(arg1, arg2)
   local var69 = arg1
   var69 = var69:lower()
   var69 = var69:gsub("[ _](%a)", string.upper)
   var69 = var69:gsub("^%a", string.upper)
   local var83 = var69:gsub("%p", "")
   var69 = var83
   var83 = var69
   return var1(var83, arg2 or {})
end
