-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("HttpService")
local var1 = game:GetFastFlag("ToolboxEnableAudioGrantDialog")
local var2 = script.Parent.Parent.Parent
local var3 = require(var2.Core.Util.SharedFlags.getFFlagToolboxListviewAnalytics)
local var4 = require(var2.Core.Util.SharedFlags.getFFlagToolboxFixInventoryCreatorFilter)
local var5 = game:GetFastFlag("ToolboxDoNotCallInsertionEndpointForAvatarAssets")
local var6 = var2.Packages
local var7 = require(var6.Cryo)
local var8 = require(var6.Roact)
local var9 = require(var6.RoactRodux)
local var10 = var2.Core.Util
local var11 = require(var10.Constants)
local var12 = require(var10.DebugFlags)
local var13 = require(var10.Images)
local var14 = require(var10.Analytics.AssetAnalyticsContextItem)
local var15 = require(var10.InsertToolPromise)
local var16 = require(var10.InsertAsset)
if game:GetFastFlag("ToolboxSetMarketplaceModelsAsPackagesForIXP3") then
   nil = require(var10.getIsIXPVariableEnabled)
end
local var17 = require(var10.getIsWithinBounds)
local var18 = require(var2.Core.Types.Category)
local var19 = require(var2.Core.Components.Asset.Preview.AssetPreviewWrapper)
local var20 = require(var2.Core.Components.MessageBox.MessageBox)
local var21 = require(var2.Core.Components.ScriptConfirmationDialog)
local var22 = require(var2.Core.ContextServices.IXPContext)
local var23 = require(var2.Core.Networking.Requests.PostInsertAssetRequest)
local var24 = require(var2.Core.Actions.SetMostRecentAssetInsertTime)
local var25 = require(var2.Core.Thunks.GetPageInfoAnalyticsContextInfo)
local var26 = require(var2.Core.Networking.Requests.SearchWithOptions)
local var27 = require(var2.Core.Actions.SetAssetPreview)
local var28 = require(var6.Framework).ContextServices.withContext
local var29 = require(var2.Core.ContextServices.Settings)
local var30 = require(var2.Core.ContextServices.NetworkContext)
local var31 = require(var2.Core.Models.AssetInfo)
local var32 = require(var2.Core.Types.ConfigTypes)
local var33 = require(var2.Core.Types.CreatorTypes)
local var34 = require(var2.Core.Types.AssetLogicTypes)
local var35 = require(var6.Framework).Util.deepEqual
local var36 = require(var6.Dash)
local var37 = require(var2.Core.ContextServices.NavigationContext)
return function()
   if var11.TIME_BETWEEN_ASSET_INSERTION < tick() - var8.lastInsertAttemptTime then
      local var0 = var8.insertToolPromise:isWaiting()
   end
   return false
end
