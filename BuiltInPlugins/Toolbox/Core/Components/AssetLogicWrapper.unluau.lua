-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("HttpService")
local var1 = game:GetFastFlag("ToolboxEnableAudioGrantDialog")
local var2 = script.Parent.Parent.Parent
local var3 = require(var2.Core.Util.SharedFlags.getFFlagToolboxListviewAnalytics)
local var4 = require(var2.Core.Util.SharedFlags.getFFlagToolboxFixInventoryCreatorFilter)
local var5 = game:GetFastFlag("ToolboxDoNotCallInsertionEndpointForAvatarAssets")
local var6 = require(var2.Core.Util.SharedFlags.getFFlagToolboxSeparatePurchaseStatusDialogsFromAssetPreview)
local var7 = var2.Packages
local var8 = require(var7.Cryo)
local var9 = require(var7.Roact)
local var10 = require(var7.RoactRodux)
local var11 = var2.Core.Util
local var12 = require(var11.Constants)
local var13 = require(var11.DebugFlags)
local var14 = require(var11.Images)
local var15 = require(var11.Analytics.AssetAnalyticsContextItem)
local var16 = require(var11.InsertToolPromise)
local var17 = require(var11.InsertAsset)
if game:GetFastFlag("ToolboxSetMarketplaceModelsAsPackagesForIXP3") then
   nil = require(var11.getIsIXPVariableEnabled)
end
local var18 = require(var11.getIsWithinBounds)
local var19 = require(var2.Core.Types.Category)
local var20 = require(var2.Core.Components.Asset.Preview.AssetPreviewWrapper)
local var21 = require(var2.Core.Components.MessageBox.MessageBox)
local var22 = require(var2.Core.Components.ScriptConfirmationDialog)
local var23 = require(var2.Core.ContextServices.IXPContext)
local var24 = require(var2.Core.Components.PurchaseFlow.PurchaseFlowWrapper)
local var25 = require(var2.Core.Components.PurchaseFlow.SubsequentDialogController)
local var26 = require(var2.Core.Networking.Requests.PostInsertAssetRequest)
local var27 = require(var2.Core.Actions.SetMostRecentAssetInsertTime)
local var28 = require(var2.Core.Thunks.GetPageInfoAnalyticsContextInfo)
local var29 = require(var2.Core.Networking.Requests.SearchWithOptions)
local var30 = require(var2.Core.Actions.SetAssetPreview)
local var31 = require(var7.Framework).ContextServices.withContext
local var32 = require(var2.Core.ContextServices.Settings)
local var33 = require(var2.Core.ContextServices.NetworkContext)
local var34 = require(var2.Core.Models.AssetInfo)
local var35 = require(var2.Core.Types.ConfigTypes)
local var36 = require(var2.Core.Types.CreatorTypes)
local var37 = require(var2.Core.Types.AssetLogicTypes)
local var38 = require(var7.Framework).Util.deepEqual
local var39 = require(var7.Dash)
local var40 = require(var2.Core.ContextServices.NavigationContext)
return function()
   if var12.TIME_BETWEEN_ASSET_INSERTION < tick() - var9.lastInsertAttemptTime then
      local var0 = var9.insertToolPromise:isWaiting()
   end
   return false
end
