-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var13 = {}
var13.IsBusy = false
local var15 = {}
function var15.SetIsBusy(arg1, arg2)
   local var19 = var1.Dictionary
   var19 = arg1
   local var21 = {}
   var21.IsBusy = arg2.isBusy
   return var19.join(var19, var21)
end

return require(var0.Packages.Rodux).createReducer(var13, var15)
