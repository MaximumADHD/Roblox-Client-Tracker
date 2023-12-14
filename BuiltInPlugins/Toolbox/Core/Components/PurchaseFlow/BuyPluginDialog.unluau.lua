-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var0.Core.Components.PurchaseFlow.PurchaseDialog)
local var4 = require(var0.Core.Util.ContextHelper).withLocalization
local var5 = require(var1.Framework).ContextServices
local var6 = var2.PureComponent:extend("BuyPluginDialog")
local function fun1(arg1)
   return var4(function(arg1, arg2)
      local var0 = arg1.props
      local var46 = {}
      local var1 = {}
      var1.Key = false
      var1.Text = var0.Localization:getText("Purchase", "Cancel")
      local var55 = {}
      var55.Key = true
      var55.Text = var0.Localization:getText("Purchase", "Buy")
      var55.Style = "RoundPrimary"
      var46.Buttons = {}
      var46.OnButtonClicked = var0.OnButtonClicked
      var46.OnClose = var0.OnClose
      var46.Title = var0.Localization:getText("Purchase", "BuyTitle")
      local var71 = {}
      var71.name = var0.Name
      var71.creator = var0.Creator
      var71.robux = var0.Cost
      var46.Prompt = var0.Localization:getText("Purchase", "BuyPrompt", var71)
      var46.Thumbnail = var0.Thumbnail
      var46.Balance = var0.Balance
      return var2.createElement(var3, var46)
   end)
end

function var6.render(arg1)
   return var4(function(arg1, arg2)
      local var0 = arg1.props
      local var46 = {}
      local var1 = {}
      var1.Key = false
      var1.Text = var0.Localization:getText("Purchase", "Cancel")
      local var55 = {}
      var55.Key = true
      var55.Text = var0.Localization:getText("Purchase", "Buy")
      var55.Style = "RoundPrimary"
      var46.Buttons = {}
      var46.OnButtonClicked = var0.OnButtonClicked
      var46.OnClose = var0.OnClose
      var46.Title = var0.Localization:getText("Purchase", "BuyTitle")
      local var71 = {}
      var71.name = var0.Name
      var71.creator = var0.Creator
      var71.robux = var0.Cost
      var46.Prompt = var0.Localization:getText("Purchase", "BuyPrompt", var71)
      var46.Thumbnail = var0.Thumbnail
      var46.Balance = var0.Balance
      return var2.createElement(var3, var46)
   end)
end

fun1 = var5.withContext
local var76 = {}
var76.Localization = var5.Localization
var6 = fun1(var76)(var6)
return var6
