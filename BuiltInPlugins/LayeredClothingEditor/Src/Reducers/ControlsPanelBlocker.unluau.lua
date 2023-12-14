-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var13 = {}
var13.isActive = false
var13.message = ""
local var16 = {}
function var16.SetControlsPanelBlockerActivity(arg1, arg2)
   local var20 = var1.Dictionary
   var20 = arg1
   local var22 = {}
   var22.isActive = arg2.isActive
   return var20.join(var20, var22)
end

function var16.SetControlsPanelBlockerMessage(arg1, arg2)
   local var28 = var1.Dictionary
   var28 = arg1
   local var30 = {}
   var30.message = arg2.message
   return var28.join(var28, var30)
end

return require(var0.Packages.Rodux).createReducer(var13, var16)
