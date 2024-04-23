-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = var0.Packages
local var2 = require(var1.Cryo)
local var3 = var0.Core.Actions
local var68 = {}
var68.subsequentDialogQueue = {}
function require(var3.EnqueueSubsequentDialog).name(arg1, arg2)
   local var81 = {}
   var81.assetData = arg2.assetData
   var81.status = arg2.status
   local var84 = var2.Dictionary
   var84 = arg1
   local var86 = {}
   var86.subsequentDialogQueue = var2.List.join(arg1.subsequentDialogQueue, {})
   return var84.join(var84, var86)
end

function require(var3.DequeueSubsequentDialog).name(arg1, arg2)
   local var99 = var2.Dictionary
   var99 = arg1
   local var101 = {}
   var101.subsequentDialogQueue = var2.List.removeValue(arg1.subsequentDialogQueue, arg1.subsequentDialogQueue[1])
   return var99.join(var99, var101)
end

return require(var1.Rodux).createReducer(var68, {})
