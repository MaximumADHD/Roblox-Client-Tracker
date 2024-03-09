-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Parent.Packages.Framework).Util.Math
local var1 = require(script.Parent.delimitersByLocaleId).decimalDelimiterByLocale
local var2 = game:GetService("StudioService")
local var3 = game:GetFastFlag("StudioGameSettingsWorldPageFormatNumbersForGerman")
local function var4(arg1, arg2)
   assert(var3)
   return string.gsub(arg1, "%.", arg2)
end

local function var5(arg1)
   assert(var3)
   local var0 = var2
   local var39 = var1
   local var40 = var39[var0.StudioLocaleId]
   var39 = arg1
   return var4(var39, var0)
end

return function(arg1)
   if var3 then
      local var46 = var0
      var46 = arg1
      local var49 = var46.round(var46, 3)
      return var5(tostring())
   end
   local var55 = var0
   var55 = arg1
   local var0 = var55.round(var55, 3)
   return tostring()
end
