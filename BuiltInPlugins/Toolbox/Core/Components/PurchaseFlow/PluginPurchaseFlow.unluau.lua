-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = Vector2.new(150, 150)
local var1 = game:GetService("GuiService")
local var2 = script.Parent.Parent.Parent.Parent
local var3 = var2.Packages
local var4 = var2.Core.Util
local var5 = require(var3.Roact)
local var6 = require(var2.Core.Components.PurchaseFlow.BuyPluginDialog)
local var7 = require(var2.Core.Components.PurchaseFlow.BuyRobuxDialog)
local var8 = require(var2.Core.Util.Urls)
local var9 = require(var2.Core.Networking.Requests.GetRobuxBalance)
local var10 = require(var2.Core.Networking.Requests.PurchaseAssetRequest)
local var11 = require(var2.Core.Actions.SetPurchaseStatus)
local var12 = require(var2.Core.Types.PurchaseStatus)
local var13 = var5.PureComponent:extend("PurchaseFlow")
function var13.init(arg1)
   function arg1.cancel()
      arg1.props.Cancel()
   end
   
   function arg1.onPurchaseClicked(arg1)
      local var171 = arg1.props
      var171 = arg1
      return var171.OnPurchaseClicked(var171)
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
   local var0 = arg1.props
   arg1.props.getRobuxBalance(arg1.props.Network.networkInterface)
end

function var13.render(arg1)
   local var0 = arg1.props
   local var1 = arg1.state
   local var195 = type(var0.Cancel)
   if var195 == "function" then
      local var0 = false
   end
   assert(true, "PurchaseFlow expects a Cancel callback.")
   local var3 = var0.AssetData
   local var4 = var3.Asset
   local var203 = var8
   var203 = var4.Id
   local var6 = var203.constructAssetThumbnailUrl(var203, var0.X, var0.Y)
   local var7 = var4.Name
   local var8 = var3.Creator.Name
   local var9 = var3.Product
   if var9 then
      local var0 = var9.Price or 0
   end
   local var10 = 0
   local var11 = 0
   if var10 > var11 then
      local var0 = false
   end
   local var221 = var0.Balance
   if var11 >= var10 then
      local var0 = false
   end
   local var13 = true
   local var14 = true
   if var14 then
      local var227 = {}
      local var228 = var13
      if var228 then
         local var232 = {}
         var232.Name = var7
         var232.Creator = var8
         var232.Cost = var10
         var232.Balance = var11
         var232.Thumbnail = var6
         var232.OnClose = arg1.cancel
         var232.OnButtonClicked = arg1.onPurchaseClicked
         local var0 = var5.createElement(var6, var232)
      end
      var227.BuyPlugin = var228
      local var1 = var13
      if var1 then
         local var240 = {}
         var240.Name = var7
         var240.Creator = var8
         var240.Cost = var10
         var240.Balance = var11
         var240.Thumbnail = var6
         var240.OnClose = arg1.cancel
         var240.OnButtonClicked = arg1.onBuyRobuxClicked
         local var0 = var5.createElement(var7, var240)
      end
      var227.BuyRobux = var1
      local var2 = var5.createFragment(var227)
   end
   return var14
end

local var267 = {}
var267.Network = require(var2.Core.ContextServices.NetworkContext)
var13 = require(var3.Framework).ContextServices.withContext(var267)(var13)
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
      local var263 = arg1.props
      var263 = arg1
      return var263.OnPurchaseClicked(var263)
   end
   
   return var0
end)(var13)
