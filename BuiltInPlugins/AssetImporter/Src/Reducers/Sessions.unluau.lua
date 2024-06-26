-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetImporter")
local var1 = require(var0.Packages.Cryo).Dictionary.join
local var2 = var0.Src.Actions
local var133 = var0.Src
local var3 = require(var133.DataTypes.QueuedSession)
local var4 = {}
var4.sessionQueue = {}
var133 = var4
function require(var2.SetSessionQueue).name(arg1, arg2)
   local var146 = {}
   var146.sessionQueue = arg2.sessionQueue
   return var1(arg1, var146)
end

function require(var2.UpdateQueueItem).name(arg1, arg2)
   local var154 = {}
   arg2.queueItem.filepath = arg2.queueItem
   var154.sessionQueue = var1(arg1.sessionQueue, {})
   return var1(arg1.sessionQueue, var154)
end

function require(var2.RemoveQueueItem).name(arg1, arg2)
   local var170 = nil
   arg2.filepath = var170
   var170 = arg1
   local var172 = {}
   var172.sessionQueue = table.clone(arg1.sessionQueue)
   return var1(var170, var172)
end

return require(var0.Packages.Rodux).createReducer(var133, {})
