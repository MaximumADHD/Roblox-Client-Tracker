-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Actions.SetAssets)
local var3 = require(var0.Src.Actions.SetAssetsModerationData)
local var4 = require(var0.Src.Actions.SetIsFetchingAssets)
local var5 = require(var0.Src.Thunks.GetAssetResponse)
local var6 = require(var0.Src.Util.Screens)
local var7 = require(var0.Src.Util.AssetManagerUtilities).enableAudioImport
local var8 = require(var0.Src.Util.AssetManagerUtilities).enableVideoImport
local var9 = require(var0.Packages.Framework).Util.sendResultToKibana
local var10 = game:GetFastInt("StudioAssetManagerAssetFetchNumber")
local var11 = game:GetFastFlag("NewPackageAnalyticsWithRefactor2")
local var12 = game:GetFastFlag("AssetManagerMigrateAliasesEndpoint2")
return function(arg1, arg2, arg3, arg4, arg5)
   return function(arg1)
      return arg1
   end
end
