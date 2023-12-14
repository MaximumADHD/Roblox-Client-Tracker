-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = Vector2.new(150, 150)
local var1 = game:GetService("GuiService")
local var2 = script.Parent.Parent.Parent.Parent
local var3 = var2.Packages
local var4 = require(var3.Roact)
local var5 = require(var2.Core.Components.PurchaseFlow.BuyPluginDialog)
local var6 = require(var2.Core.Components.PurchaseFlow.BuyRobuxDialog)
local var7 = require(var2.Core.Components.PurchaseFlow.PurchaseFailedDialog)
local var8 = require(var2.Core.Util.Urls)
local var9 = require(var2.Core.Networking.Requests.GetRobuxBalance)
local var10 = require(var2.Core.Networking.Requests.PurchaseAssetRequest)
local var11 = require(var2.Core.Actions.SetPurchaseStatus)
local var12 = require(var2.Core.Types.PurchaseStatus)
local var13 = var4.PureComponent:extend("PurchaseFlow")
function var13.init(arg1)
   arg1.continued = false
   local var81 = {}
   var81.purchaseStatus = var12.None
   arg1.state = var81
   function arg1.cancel()
      arg1.props.Cancel()
   end
   
   function arg1.onPurchaseClicked(arg1)
      if arg1 then
         if arg1.props.PurchaseStatus == "Waiting" then
         end
         local var0 = arg1.props.AssetData
         local var1 = var0.Asset.Id
         assert(var0.Product, "Attempted to purchase asset without a Product: " ... tostring(var1))
         local var117 = arg1
         local var118 = var117.props
         local var119 = var118.Network
         var119 = var1
         var118 = var0.Product.ProductId
         var117 = var0.Product.Price
         arg1.props.purchaseAsset(var119.networkInterface, var119, var118, var117, var0.Asset.TypeId, arg1.props.SearchId)
      end
      arg1.props.Cancel()
   end
   
   function arg1.onBuyRobuxClicked(arg1)
      if arg1 then
         local var0 = var8.getRobuxPurchaseUrl()
         var1:OpenBrowserWindow()
      end
      arg1.props.Cancel()
   end
   
end

function var13.didMount(arg1)
   arg1.props.getRobuxBalance(arg1.props.Network.networkInterface)
   arg1.props.setPurchaseStatus(var12.None)
   local var0 = arg1.props.AssetData.Product
   if var0 then
      local var0 = var0.Price or 0
   end
   if 0 == 0 then
      arg1.onPurchaseClicked(true)
   end
end

function var13.didUpdate(arg1)
   local var0 = arg1.props.PurchaseStatus
   if arg1.state.purchaseStatus ~= var0 then
      spawn(function()
         arg1.props.Cancel()
      end)
   end
   if var0 == "state" then
      spawn(function(arg1)
         if arg1 then
            if arg1.props.PurchaseStatus == "Waiting" then
            end
            local var0 = arg1.props.AssetData
            local var1 = var0.Asset.Id
            assert(var0.Product, "Attempted to purchase asset without a Product: " ... tostring(var1))
            local var196 = arg1
            local var197 = var196.props
            local var198 = var197.Network
            var198 = var1
            var197 = var0.Product.ProductId
            var196 = var0.Product.Price
            arg1.props.purchaseAsset(var198.networkInterface, var198, var197, var196, var0.Asset.TypeId, arg1.props.SearchId)
         end
         arg1.props.Cancel()
      end)
   end
end

function var13.render(arg1)
   local var0 = arg1.props
   local var210 = type(var0.Cancel)
   if var210 == "function" then
      local var0 = false
   end
   assert(true, "PurchaseFlow expects a Cancel callback.")
   local var217 = type(var0.Continue)
   if var217 == "function" then
      local var0 = false
   end
   assert(true, "PurchaseFlow expects a Continue callback.")
   local var3 = arg1.state.purchaseStatus
   local var4 = var0.AssetData
   local var5 = var4.Asset
   local var226 = var8
   var226 = var5.Id
   local var7 = var226.constructAssetThumbnailUrl(var226, var0.X, var0.Y)
   local var8 = var5.Name
   local var9 = var4.Creator.Name
   local var10 = var4.Product
   if var10 then
      local var0 = var10.Price or 0
   end
   local var11 = 0
   local var12 = 0
   if var11 > var12 then
      local var0 = false
   end
   local var244 = var0.Balance
   if var3 ~= var12.Failed then
      local var0 = false
   end
   if var12 >= var11 then
      local var0 = false
   end
   local var14 = true
   local var15 = var12.None
   if var3 ~= var15 then
      local var0 = false
   end
   local var16 = true
   var15 = true
   if var15 then
      local var257 = {}
      local var0 = var16
      if var0 then
         var0 = var14
         if var0 then
            local var262 = {}
            var262.Name = var8
            var262.Creator = var9
            var262.Cost = var11
            var262.Balance = var12
            var262.Thumbnail = var7
            var262.OnClose = arg1.cancel
            var262.OnButtonClicked = arg1.onPurchaseClicked
            local var0 = var4.createElement(var5, var262)
         end
      end
      var257.BuyPlugin = var0
      var0 = var16
      if var0 then
         if var14 then
            local var270 = {}
            var270.Name = var8
            var270.Creator = var9
            var270.Cost = var11
            var270.Balance = var12
            var270.Thumbnail = var7
            var270.OnClose = arg1.cancel
            var270.OnButtonClicked = arg1.onBuyRobuxClicked
            local var0 = var4.createElement(var6, var270)
         end
      end
      var257.BuyRobux = var0
      var0 = true
      if var0 then
         local var277 = {}
         var277.Name = var8
         var277.OnClose = arg1.cancel
         var277.OnButtonClicked = arg1.onPurchaseClicked
         local var0 = var4.createElement(var7, var277)
      end
      var257.PurchaseFailed = var0
      local var1 = var4.createFragment(var257)
   end
   return var15
end

local var347 = {}
var347.Network = require(var2.Core.ContextServices.NetworkContext)
var13 = require(var3.Framework).ContextServices.withContext(var347)(var13)
return require(var3.RoactRodux).connect(function(arg1, arg2)
   arg1 = arg1 or {}
   local var0 = arg1.purchase
   local var1 = {}
   var1.Balance = var0.robuxBalance
   var1.PurchaseStatus = var0.status
   var1.SearchId = arg1.pageInfo.searchId
   return var1
end, function(arg1)
   local var0 = {}
   function var0.getRobuxBalance()
      arg1.props.Cancel()
   end
   
   function var0.purchaseAsset(arg1)
      if arg1 then
         if arg1.props.PurchaseStatus == "Waiting" then
         end
         local var0 = arg1.props.AssetData
         local var1 = var0.Asset.Id
         assert(var0.Product, "Attempted to purchase asset without a Product: " ... tostring(var1))
         local var328 = arg1
         local var329 = var328.props
         local var330 = var329.Network
         var330 = var1
         var329 = var0.Product.ProductId
         var328 = var0.Product.Price
         arg1.props.purchaseAsset(var330.networkInterface, var330, var329, var328, var0.Asset.TypeId, arg1.props.SearchId)
      end
      arg1.props.Cancel()
   end
   
   function var0.setPurchaseStatus(arg1)
      if arg1 then
         local var0 = var8.getRobuxPurchaseUrl()
         var1:OpenBrowserWindow()
      end
      arg1.props.Cancel()
   end
   
   return var0
end)(var13)
