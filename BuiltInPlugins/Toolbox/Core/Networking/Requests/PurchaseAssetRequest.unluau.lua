-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("GuiService")
local var1 = game:GetService("MemStorageService")
local var2 = script.Parent.Parent.Parent.Parent
local var3 = var2.Core.Util
local var4 = require(var3.DebugFlags)
local var5 = require(var3.FiatUtil)
local var6 = require(var2.Core.Actions.NetworkError)
local var7 = require(var2.Core.Actions.SetOwnsAsset)
local var8 = require(var2.Core.Actions.SetPurchaseStatus)
local var9 = require(var2.Core.Networking.Requests.GetRobuxBalance)
local var10 = require(var2.Core.Types.PurchaseStatus)
local var11 = require(var2.Core.Types.ProductPurchaseResponseReasons)
local var12 = require(var3.SharedFlags.getFFlagToolboxEnableFiatPurchasing)
local function fun0(arg1, arg2, arg3)
   return pcall(function()
      if var1 then
         local var62 = {}
         var62.assetId = arg2
         var62.assetTypeId = arg3
         var1:Fire("AddToolboxAssetToInventory", arg1:jsonEncode(var62))
      end
      if var4.shouldDebugUrls() then
         warn("MemStorageService not found!")
      end
   end)
end

return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
   return function()
      if var1 then
         local var86 = {}
         var86.assetId = arg2
         var86.assetTypeId = arg3
         var1:Fire("AddToolboxAssetToInventory", arg1:jsonEncode(var86))
      end
      if var4.shouldDebugUrls() then
         warn("MemStorageService not found!")
      end
   end
end
