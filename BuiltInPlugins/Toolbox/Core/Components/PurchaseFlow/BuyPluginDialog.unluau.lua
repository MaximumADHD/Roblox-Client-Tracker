-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var0.Core.Components.PurchaseFlow.PurchaseDialog)
local var4 = require(var0.Core.Util.ContextHelper).withLocalization
local var5 = require(var1.Framework).ContextServices
local var6 = require(var0.Core.Util.SharedFlags.getFFlagToolboxCleanupLegacyContext)
local var7 = var2.PureComponent:extend("BuyPluginDialog")
local function fun1(arg1)
   if var6() then
      local var0 = arg1.props
      local var50 = {}
      local var1 = {}
      var1.Key = false
      var1.Text = var0.Localization:getText("Purchase", "Cancel")
      local var59 = {}
      var59.Key = true
      var59.Text = var0.Localization:getText("Purchase", "Buy")
      var59.Style = "RoundPrimary"
      var50.Buttons = {}
      var50.OnButtonClicked = var0.OnButtonClicked
      var50.OnClose = var0.OnClose
      var50.Title = var0.Localization:getText("Purchase", "BuyTitle")
      local var75 = {}
      var75.name = var0.Name
      var75.creator = var0.Creator
      var75.robux = var0.Cost
      var50.Prompt = var0.Localization:getText("Purchase", "BuyPrompt", var75)
      var50.Thumbnail = var0.Thumbnail
      var50.Balance = var0.Balance
      return var2.createElement(var3, var50)
   end
   return var4(function(arg1, arg2)
      local var0 = arg1.props
      local var94 = {}
      local var1 = {}
      var1.Key = false
      var1.Text = var0.Localization:getText("Purchase", "Cancel")
      local var103 = {}
      var103.Key = true
      var103.Text = var0.Localization:getText("Purchase", "Buy")
      var103.Style = "RoundPrimary"
      var94.Buttons = {}
      var94.OnButtonClicked = var0.OnButtonClicked
      var94.OnClose = var0.OnClose
      var94.Title = var0.Localization:getText("Purchase", "BuyTitle")
      local var119 = {}
      var119.name = var0.Name
      var119.creator = var0.Creator
      var119.robux = var0.Cost
      var94.Prompt = var0.Localization:getText("Purchase", "BuyPrompt", var119)
      var94.Thumbnail = var0.Thumbnail
      var94.Balance = var0.Balance
      return var2.createElement(var3, var94)
   end)
end

function var7.render(arg1)
   if var6() then
      local var0 = arg1.props
      local var50 = {}
      local var1 = {}
      var1.Key = false
      var1.Text = var0.Localization:getText("Purchase", "Cancel")
      local var59 = {}
      var59.Key = true
      var59.Text = var0.Localization:getText("Purchase", "Buy")
      var59.Style = "RoundPrimary"
      var50.Buttons = {}
      var50.OnButtonClicked = var0.OnButtonClicked
      var50.OnClose = var0.OnClose
      var50.Title = var0.Localization:getText("Purchase", "BuyTitle")
      local var75 = {}
      var75.name = var0.Name
      var75.creator = var0.Creator
      var75.robux = var0.Cost
      var50.Prompt = var0.Localization:getText("Purchase", "BuyPrompt", var75)
      var50.Thumbnail = var0.Thumbnail
      var50.Balance = var0.Balance
      return var2.createElement(var3, var50)
   end
   return var4(function(arg1, arg2)
      local var0 = arg1.props
      local var94 = {}
      local var1 = {}
      var1.Key = false
      var1.Text = var0.Localization:getText("Purchase", "Cancel")
      local var103 = {}
      var103.Key = true
      var103.Text = var0.Localization:getText("Purchase", "Buy")
      var103.Style = "RoundPrimary"
      var94.Buttons = {}
      var94.OnButtonClicked = var0.OnButtonClicked
      var94.OnClose = var0.OnClose
      var94.Title = var0.Localization:getText("Purchase", "BuyTitle")
      local var119 = {}
      var119.name = var0.Name
      var119.creator = var0.Creator
      var119.robux = var0.Cost
      var94.Prompt = var0.Localization:getText("Purchase", "BuyPrompt", var119)
      var94.Thumbnail = var0.Thumbnail
      var94.Balance = var0.Balance
      return var2.createElement(var3, var94)
   end)
end

fun1 = var5.withContext
local var124 = {}
var124.Localization = var5.Localization
var7 = fun1(var124)(var7)
return var7
