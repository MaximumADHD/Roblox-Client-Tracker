-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("MemStorageService")
local var1 = script.Parent.Parent.Parent.Parent
local var2 = require(var1.Core.Util.DebugFlags)
local var3 = require(var1.Core.Actions.NetworkError)
local var4 = require(var1.Core.Actions.SetOwnsAsset)
local var5 = require(var1.Core.Actions.SetPurchaseStatus)
local var6 = require(var1.Core.Networking.Requests.GetRobuxBalance)
local var7 = require(var1.Core.Types.PurchaseStatus)
local var8 = require(var1.Core.Types.ProductPurchaseResponseReasons)
local function fun0(arg1, arg2, arg3)
   return pcall(function()
      if var0 then
         local var51 = {}
         var51.assetId = arg2
         var51.assetTypeId = arg3
         var0:Fire("AddToolboxAssetToInventory", arg1:jsonEncode(var51))
      end
      if var2.shouldDebugUrls() then
         warn("MemStorageService not found!")
      end
   end)
end

return function(arg1, arg2, arg3, arg4, arg5, arg6)
   return function()
      if var0 then
         local var74 = {}
         var74.assetId = arg2
         var74.assetTypeId = arg3
         var0:Fire("AddToolboxAssetToInventory", arg1:jsonEncode(var74))
      end
      if var2.shouldDebugUrls() then
         warn("MemStorageService not found!")
      end
   end
end
