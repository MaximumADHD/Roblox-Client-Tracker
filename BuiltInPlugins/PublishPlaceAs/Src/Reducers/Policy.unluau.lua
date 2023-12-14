-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = {}
var2.PlayerAcceptance = false
local var16 = {}
function var16.SetPlayerAcceptance(arg1, arg2)
   local var20 = var1.Dictionary
   var20 = arg1
   local var22 = {}
   var22.PlayerAcceptance = arg2.playerAcceptance
   return var20.join(var20, var22)
end

function var16.ResetInfo(arg1, arg2)
   local var28 = var1.Dictionary
   var28 = arg1
   local var30 = {}
   var30.PlayerAcceptance = false
   return var28.join(var28, var30)
end

return require(var0.Packages.Rodux).createReducer(var2, var16)
