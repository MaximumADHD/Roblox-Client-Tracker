-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = var0.Packages
local var2 = require(var1.Cryo)
local var3 = var0.Core.Actions
local var63 = {}
var63.subsequentDialogQueue = {}
function require(var3.EnqueueSubsequentDialog).name(arg1, arg2)
   local var76 = {}
   var76.assetData = arg2.assetData
   var76.status = arg2.status
   local var79 = var2.Dictionary
   var79 = arg1
   local var81 = {}
   var81.subsequentDialogQueue = var2.List.join(arg1.subsequentDialogQueue, {})
   return var79.join(var79, var81)
end

function require(var3.DequeueSubsequentDialog).name(arg1, arg2)
   local var94 = var2.Dictionary
   var94 = arg1
   local var96 = {}
   var96.subsequentDialogQueue = var2.List.removeValue(arg1.subsequentDialogQueue, arg1.subsequentDialogQueue[1])
   return var94.join(var94, var96)
end

return require(var1.Rodux).createReducer(var63, {})
