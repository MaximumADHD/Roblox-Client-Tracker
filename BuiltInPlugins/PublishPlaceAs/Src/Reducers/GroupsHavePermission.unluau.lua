-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = {}
local var13 = {}
local var14 = {}
var13.groups = var14
var2.groupInfo = var13
var14 = var2
local var16 = {}
function var16.SetGroupInfo(arg1, arg2)
   local var20 = var1.Dictionary
   var20 = arg1
   local var22 = {}
   var22.groupInfo = var1.Dictionary.join(arg1.groupInfo, arg2.groupInfo)
   return var20.join(var20, var22)
end

function var16.ResetInfo(arg1, arg2)
   local var33 = var1.Dictionary
   var33 = arg1
   local var35 = {}
   var35.groupInfo = var1.Dictionary.join(arg1.groupInfo, arg2.groupInfo)
   return var33.join(var33, var35)
end

return require(var0.Packages.Rodux).createReducer(var14, var16)
