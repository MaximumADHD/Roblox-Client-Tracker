-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("AssetImportService")
local var1 = script:FindFirstAncestor("AssetImporter")
local var2 = var1.Src.Actions
local var3 = require(var2.UpdateQueueItem)
local var4 = require(var2.RemoveQueueItem)
local var5 = require(var1.Src.DataTypes.QueuedSession)
local var6 = require(var1.Src.Thunks.CreateQueuedSession)
local function fun0(arg1, arg2)
   return arg1:getState().Sessions.sessionQueue[arg2]
end

return function(arg1, arg2)
   return function(arg1, arg2)
      return arg1:getState().Sessions.sessionQueue[arg2]
   end
end
