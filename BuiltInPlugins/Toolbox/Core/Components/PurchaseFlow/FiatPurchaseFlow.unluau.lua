-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Core.Util.SharedFlags.getFFlagToolboxRemoveRobuxProductEntirely)
local var2 = require(var0.Packages.React)
local var3 = require(var0.Core.Hooks.useDispatch)
local var4 = require(var0.Core.Hooks.useSelector)
local var5 = require(var0.Core.Components.PurchaseFlow.BuyAssetDialog)
local var6 = require(var0.Core.Util.FiatUtil)
local var7 = require(var0.Core.Util.Urls)
local var8 = require(var0.Packages.Framework).ContextServices
local var9 = var8.Stylizer
local var10 = require(var0.Core.ContextServices.NetworkContext)
local var11 = require(var0.Core.Networking.Requests.PurchaseAssetRequest)
local var12 = Vector2.new(150, 150)
return function(arg1)
   local var0 = var9:use()
   local var1 = var8.Localization:use()
   local var2 = var3()
   local var3 = arg1.AssetData
   local var4 = var3.Asset
   local var5 = var3.FiatProduct
   local var6 = var5 and var5.Price
   local var7 = var4(function(arg1)
      if arg1.pageInfo then
         return arg1.pageInfo.searchId
      end
      return nil
   end)
   local var8 = var3
   local var9 = var5
   local var10 = arg1.Cancel
   local var11 = var6
   local var12 = var7
   local var13 = var2.useCallback(function(arg1)
      if arg1 then
         local var0 = var3.Asset.Id
         assert(var3.FiatProduct, "Attempted to purchase asset without a FiatProduct: " ... tostring(var0))
         local var1 = nil
         local var2 = nil
         if not var1() then
            local var0 = var3.Product
            if var0 then
               local var0 = var0.Price or 0
            end
            local var123 = 0
            var2 = var123
            var123 = var0
            var1 = var123 and var0.ProductId
         end
         var2(var11(var10.use().networkInterface, var0, var1, var2, var3.Asset.TypeId, var7, var6))
      end
      arg1.Cancel()
   end, {})
   if var6 then
      local var145 = var6
      var145 = var6
      local var0 = var145.isFree(var145)
      if var0 then
         var0 = var13
         var0(true)
      end
   end
   var13(true)
   if var5.Purchasable then
      local var154 = {}
      var154.Name = var4.Name
      var154.CreatorName = var3.Creator.Name
      local var158 = var6
      var158 = var6
      var154.Price = var158.displayStringFromMoney(var158)
      var154.OnClose = arg1.Cancel
      var154.OnButtonClicked = var13
      var154.Thumbnail = var7.constructAssetThumbnailUrl(var4.Id, var12.X, var12.Y)
      return var2.createElement(var5, var154)
   end
end
