-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetImporter")
local var1 = require(var0.Packages.Cryo).Dictionary.join
local var2 = var0.Src.Actions
local var250 = var0.Src
local var3 = require(var250.DataTypes.QueuedSession)
local var4 = {}
var4.sessionQueue = {}
var250 = var4
function require(var2.SetSessionQueue).name(arg1, arg2)
   local var263 = {}
   var263.sessionQueue = arg2.sessionQueue
   return var1(arg1, var263)
end

function require(var2.UpdateQueueItem).name(arg1, arg2)
   local var271 = {}
   arg2.queueItem.filepath = arg2.queueItem
   var271.sessionQueue = var1(arg1.sessionQueue, {})
   return var1(arg1.sessionQueue, var271)
end

return require(var0.Packages.Rodux).createReducer(var250, {})
