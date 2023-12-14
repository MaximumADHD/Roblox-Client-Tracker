-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var0.Core.Components.PurchaseFlow.PurchaseDialog)
local var4 = require(var1.Framework).ContextServices
local var5 = require(var0.Core.Util.ContextHelper).withLocalization
local var6 = var2.PureComponent:extend("BuyRobuxDialog")
local function fun1(arg1)
   return var5(function(arg1, arg2)
      local var0 = arg1.props
      local var1 = var0.Balance
      local var47 = {}
      local var2 = {}
      var2.Key = false
      var2.Text = var0.Localization:getText("Purchase", "Cancel")
      local var56 = {}
      var56.Key = true
      var56.Text = var0.Localization:getText("Purchase", "BuyRobux")
      var56.Style = "RoundPrimary"
      var47.Buttons = {}
      var47.OnButtonClicked = var0.OnButtonClicked
      var47.OnClose = var0.OnClose
      var47.Title = var0.Localization:getText("Purchase", "InsufficientTitle")
      local var72 = {}
      var72.robux = var0.Cost - var1
      var72.name = var0.Name
      var72.creator = var0.Creator
      var47.Prompt = var0.Localization:getText("Purchase", "InsufficientPrompt", var72)
      var47.Thumbnail = var0.Thumbnail
      var47.Balance = var1
      return var2.createElement(var3, var47)
   end)
end

function var6.render(arg1)
   return var5(function(arg1, arg2)
      local var0 = arg1.props
      local var1 = var0.Balance
      local var47 = {}
      local var2 = {}
      var2.Key = false
      var2.Text = var0.Localization:getText("Purchase", "Cancel")
      local var56 = {}
      var56.Key = true
      var56.Text = var0.Localization:getText("Purchase", "BuyRobux")
      var56.Style = "RoundPrimary"
      var47.Buttons = {}
      var47.OnButtonClicked = var0.OnButtonClicked
      var47.OnClose = var0.OnClose
      var47.Title = var0.Localization:getText("Purchase", "InsufficientTitle")
      local var72 = {}
      var72.robux = var0.Cost - var1
      var72.name = var0.Name
      var72.creator = var0.Creator
      var47.Prompt = var0.Localization:getText("Purchase", "InsufficientPrompt", var72)
      var47.Thumbnail = var0.Thumbnail
      var47.Balance = var1
      return var2.createElement(var3, var47)
   end)
end

fun1 = var4.withContext
local var77 = {}
var77.Localization = var4.Localization
var6 = fun1(var77)(var6)
return var6
