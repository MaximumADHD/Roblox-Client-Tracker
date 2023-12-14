-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var13 = {}
var13.mergeEmpty = false
var13.material = Enum.Material.Grass
local var16 = {}
function var16.SetMergeEmpty(arg1, arg2)
   local var21 = var1.Dictionary
   var21 = arg1
   local var23 = {}
   var23.mergeEmpty = arg2.mergeEmpty
   return var21.join(var21, var23)
end

function var16.SetMaterial(arg1, arg2)
   local var29 = var1.Dictionary
   var29 = arg1
   local var31 = {}
   var31.material = arg2.material
   return var29.join(var29, var31)
end

return require(var0.Packages.Rodux).createReducer(var13, var16)
