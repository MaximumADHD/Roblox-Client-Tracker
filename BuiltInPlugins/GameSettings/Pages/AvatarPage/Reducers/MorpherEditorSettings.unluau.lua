-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local function var2()
   local var0 = {}
   local var1 = {}
   var1.boundaries = {}
   var0.scaleBoundaries = var1
   return var0
end

local var19 = {}
function var19.ResetStore(arg1, arg2)
   return var2()
end

function var19.SettingsSaveScaleBoundaries(arg1, arg2)
   local var27 = var1.Dictionary
   var27 = arg1
   local var29 = {}
   local var34 = {}
   var34.boundaries = arg2.rulesData.scales
   var29.scaleBoundaries = var1.Dictionary.join(arg1.scaleBoundaries, var34)
   return var27.join(var27, var29)
end

return require(var0.Packages.Rodux).createReducer(var2(), var19)
