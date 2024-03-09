-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.delimitersByLocaleId).decimalDelimiterByLocale
local var1 = game:GetService("StudioService")
local function var2(arg1, arg2, arg3)
   if arg2 == "." then
      local var0 = "%."
   end
   local var0 = "(.*)"
   var0 = arg3
   return arg1:gsub("(.*)" ... arg2 ... var0, "%1" ... var0 ... "%2")
end

local function var3(arg1)
   local var0 = var1
   local var26 = var0
   local var27 = var26[var0.StudioLocaleId]
   var26 = arg1
   return var2(var26, var0, ".")
end

return function(arg1)
   return var3(arg1)
end
