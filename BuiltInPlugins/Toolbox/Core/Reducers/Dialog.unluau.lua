-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = var0.Packages
local var2 = require(var1.Cryo)
local var3 = var0.Core.Actions
local var20 = {}
var20.subsequentDialogQueue = {}
function require(var3.EnqueueSubsequentDialog).name(arg1, arg2)
   local var33 = {}
   var33.assetData = arg2.assetData
   var33.status = arg2.status
   local var36 = var2.Dictionary
   var36 = arg1
   local var38 = {}
   var38.subsequentDialogQueue = var2.List.join(arg1.subsequentDialogQueue, {})
   return var36.join(var36, var38)
end

function require(var3.DequeueSubsequentDialog).name(arg1, arg2)
   local var51 = var2.Dictionary
   var51 = arg1
   local var53 = {}
   var53.subsequentDialogQueue = var2.List.removeValue(arg1.subsequentDialogQueue, arg1.subsequentDialogQueue[1])
   return var51.join(var51, var53)
end

return require(var1.Rodux).createReducer(var20, {})
