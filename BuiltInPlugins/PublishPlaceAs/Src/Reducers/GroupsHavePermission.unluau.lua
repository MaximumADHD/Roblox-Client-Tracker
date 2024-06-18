-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = {}
local var13 = {}
var13.groups = {}
local var15 = {}
var13.ownedGroups = var15
var2.groupInfo = var13
var15 = var2
local var17 = {}
function var17.SetGroupInfo(arg1, arg2)
   local var21 = var1.Dictionary
   var21 = arg1
   local var23 = {}
   var23.groupInfo = var1.Dictionary.join(arg1.groupInfo, arg2.groupInfo)
   return var21.join(var21, var23)
end

function var17.ResetInfo(arg1, arg2)
   local var34 = var1.Dictionary
   var34 = arg1
   local var36 = {}
   var36.groupInfo = var1.Dictionary.join(arg1.groupInfo, arg2.groupInfo)
   return var34.join(var34, var36)
end

return require(var0.Packages.Rodux).createReducer(var15, var17)
