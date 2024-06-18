-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetImporter")
local var1 = require(var0.Packages.Cryo).Dictionary.join
local var2 = var0.Src.Actions
local var215 = var0.Src
local var3 = require(var215.DataTypes.QueuedSession)
local var4 = {}
var4.sessionQueue = {}
var215 = var4
function require(var2.SetSessionQueue).name(arg1, arg2)
   local var228 = {}
   var228.sessionQueue = arg2.sessionQueue
   return var1(arg1, var228)
end

function require(var2.UpdateQueueItem).name(arg1, arg2)
   local var236 = {}
   arg2.queueItem.filepath = arg2.queueItem
   var236.sessionQueue = var1(arg1.sessionQueue, {})
   return var1(arg1.sessionQueue, var236)
end

return require(var0.Packages.Rodux).createReducer(var215, {})
