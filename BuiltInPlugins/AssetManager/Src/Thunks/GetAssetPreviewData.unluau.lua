-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = game:GetService("Players")
local var2 = game:GetService("GroupService")
local var3 = require(var0.Src.Thunks.GetRootTreeViewInstance)
local var4 = require(var0.Src.Actions.SetAssetPreviewData)
local var5 = require(var0.Src.Actions.SetAssetOwnerName)
local var6 = require(var0.Src.Util.AssetManagerUtilities).enableAudioImport
local var7 = require(var0.Src.Util.AssetManagerUtilities).enableVideoImport
local var8 = require(var0.Packages.Framework).Util.sendResultToKibana
local var9 = game:GetFastFlag("NewPackageAnalyticsWithRefactor2")
return function(arg1, arg2)
   return function()
      if arg2.creator.type == "Group" then
         local var0 = var4:GetGroupInfoAsync(arg1).Name
         if var0 then
            local var0 = var8(var6, var0)
            var9:dispatch()
            if arg2.creator.type == "User" then
               local var0 = var7:GetNameFromUserIdAsync(arg1)
               if var0 then
                  local var0 = var8(var6, var0)
                  var9:dispatch()
               end
            end
         end
      end
      if arg2.creator.type == "User" then
         local var0 = var7:GetNameFromUserIdAsync(arg1)
         if var0 then
            local var0 = var8(var6, var0)
            var9:dispatch()
         end
      end
   end
end
