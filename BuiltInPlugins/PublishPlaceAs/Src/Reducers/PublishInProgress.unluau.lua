-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = {}
local var13 = {}
var13.universe = {}
var13.place = {}
var13.isPublish = false
var13.failCount = 0
local var18 = false
var13.requestInFlight = var18
var2.publishInProgress = var13
var18 = var2
local var20 = {}
function var20.SetPublishInProgress(arg1, arg2)
   local var24 = var1.Dictionary
   var24 = arg1
   local var26 = {}
   var26.publishInProgress = var1.Dictionary.join(arg1.publishInProgress, arg2.publishInProgress)
   return var24.join(var24, var26)
end

return require(var0.Packages.Rodux).createReducer(var18, var20)
