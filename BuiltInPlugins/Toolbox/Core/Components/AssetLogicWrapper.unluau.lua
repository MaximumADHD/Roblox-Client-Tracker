-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("HttpService")
local var1 = game:GetFastFlag("ToolboxEnableAudioGrantDialog")
local var2 = script.Parent.Parent.Parent
local var3 = require(var2.Core.Util.SharedFlags.getFFlagToolboxListviewAnalytics)
local var4 = require(var2.Core.Util.SharedFlags.getFFlagToolboxFixInventoryCreatorFilter)
local var5 = var2.Packages
local var6 = require(var5.Cryo)
local var7 = require(var5.Roact)
local var8 = require(var5.RoactRodux)
local var9 = var2.Core.Util
local var10 = require(var9.Constants)
local var11 = require(var9.DebugFlags)
local var12 = require(var9.Images)
local var13 = require(var9.Analytics.AssetAnalyticsContextItem)
local var14 = require(var9.InsertToolPromise)
local var15 = require(var9.InsertAsset)
if game:GetFastFlag("ToolboxSetMarketplaceModelsAsPackagesForIXP3") then
   nil = require(var9.getIsIXPVariableEnabled)
end
local var16 = require(var9.getIsWithinBounds)
local var17 = require(var2.Core.Types.Category)
local var18 = require(var2.Core.Components.Asset.Preview.AssetPreviewWrapper)
local var19 = require(var2.Core.Components.MessageBox.MessageBox)
local var20 = require(var2.Core.Components.ScriptConfirmationDialog)
local var21 = require(var2.Core.ContextServices.IXPContext)
local var22 = require(var2.Core.Components.PurchaseFlow.PurchaseFlowWrapper)
local var23 = require(var2.Core.Components.PurchaseFlow.SubsequentDialogController)
local var24 = require(var2.Core.Networking.Requests.PostInsertAssetRequest)
local var25 = require(var2.Core.Actions.SetMostRecentAssetInsertTime)
local var26 = require(var2.Core.Thunks.GetPageInfoAnalyticsContextInfo)
local var27 = require(var2.Core.Networking.Requests.SearchWithOptions)
local var28 = require(var2.Core.Actions.SetAssetPreview)
local var29 = require(var5.Framework).ContextServices.withContext
local var30 = require(var2.Core.ContextServices.Settings)
local var31 = require(var2.Core.ContextServices.NetworkContext)
local var32 = require(var2.Core.Models.AssetInfo)
local var33 = require(var2.Core.Types.ConfigTypes)
local var34 = require(var2.Core.Types.CreatorTypes)
local var35 = require(var2.Core.Types.AssetLogicTypes)
local var36 = require(var5.Framework).Util.deepEqual
local var37 = require(var5.Dash)
local var38 = require(var2.Core.ContextServices.NavigationContext)
return function()
   if var10.TIME_BETWEEN_ASSET_INSERTION < tick() - var7.lastInsertAttemptTime then
      local var0 = var7.insertToolPromise:isWaiting()
   end
   return false
end
