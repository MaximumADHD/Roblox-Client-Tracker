-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var0.Core.Components.PurchaseFlow.PurchaseDialog)
local var4 = require(var1.Framework).ContextServices
local var5 = require(var0.Core.Util.ContextHelper).withLocalization
local var6 = require(var0.Core.Util.SharedFlags.getFFlagToolboxCleanupLegacyContext)
local var7 = var2.PureComponent:extend("BuyRobuxDialog")
local function fun1(arg1)
   if var6() then
      local var0 = arg1.props
      local var1 = var0.Balance
      local var51 = {}
      local var2 = {}
      var2.Key = false
      var2.Text = var0.Localization:getText("Purchase", "Cancel")
      local var60 = {}
      var60.Key = true
      var60.Text = var0.Localization:getText("Purchase", "BuyRobux")
      var60.Style = "RoundPrimary"
      var51.Buttons = {}
      var51.OnButtonClicked = var0.OnButtonClicked
      var51.OnClose = var0.OnClose
      var51.Title = var0.Localization:getText("Purchase", "InsufficientTitle")
      local var76 = {}
      var76.robux = var0.Cost - var1
      var76.name = var0.Name
      var76.creator = var0.Creator
      var51.Prompt = var0.Localization:getText("Purchase", "InsufficientPrompt", var76)
      var51.Thumbnail = var0.Thumbnail
      var51.Balance = var1
      return var2.createElement(var3, var51)
   end
   return var5(function(arg1, arg2)
      local var0 = arg1.props
      local var1 = var0.Balance
      local var96 = {}
      local var2 = {}
      var2.Key = false
      var2.Text = var0.Localization:getText("Purchase", "Cancel")
      local var105 = {}
      var105.Key = true
      var105.Text = var0.Localization:getText("Purchase", "BuyRobux")
      var105.Style = "RoundPrimary"
      var96.Buttons = {}
      var96.OnButtonClicked = var0.OnButtonClicked
      var96.OnClose = var0.OnClose
      var96.Title = var0.Localization:getText("Purchase", "InsufficientTitle")
      local var121 = {}
      var121.robux = var0.Cost - var1
      var121.name = var0.Name
      var121.creator = var0.Creator
      var96.Prompt = var0.Localization:getText("Purchase", "InsufficientPrompt", var121)
      var96.Thumbnail = var0.Thumbnail
      var96.Balance = var1
      return var2.createElement(var3, var96)
   end)
end

function var7.render(arg1)
   if var6() then
      local var0 = arg1.props
      local var1 = var0.Balance
      local var51 = {}
      local var2 = {}
      var2.Key = false
      var2.Text = var0.Localization:getText("Purchase", "Cancel")
      local var60 = {}
      var60.Key = true
      var60.Text = var0.Localization:getText("Purchase", "BuyRobux")
      var60.Style = "RoundPrimary"
      var51.Buttons = {}
      var51.OnButtonClicked = var0.OnButtonClicked
      var51.OnClose = var0.OnClose
      var51.Title = var0.Localization:getText("Purchase", "InsufficientTitle")
      local var76 = {}
      var76.robux = var0.Cost - var1
      var76.name = var0.Name
      var76.creator = var0.Creator
      var51.Prompt = var0.Localization:getText("Purchase", "InsufficientPrompt", var76)
      var51.Thumbnail = var0.Thumbnail
      var51.Balance = var1
      return var2.createElement(var3, var51)
   end
   return var5(function(arg1, arg2)
      local var0 = arg1.props
      local var1 = var0.Balance
      local var96 = {}
      local var2 = {}
      var2.Key = false
      var2.Text = var0.Localization:getText("Purchase", "Cancel")
      local var105 = {}
      var105.Key = true
      var105.Text = var0.Localization:getText("Purchase", "BuyRobux")
      var105.Style = "RoundPrimary"
      var96.Buttons = {}
      var96.OnButtonClicked = var0.OnButtonClicked
      var96.OnClose = var0.OnClose
      var96.Title = var0.Localization:getText("Purchase", "InsufficientTitle")
      local var121 = {}
      var121.robux = var0.Cost - var1
      var121.name = var0.Name
      var121.creator = var0.Creator
      var96.Prompt = var0.Localization:getText("Purchase", "InsufficientPrompt", var121)
      var96.Thumbnail = var0.Thumbnail
      var96.Balance = var1
      return var2.createElement(var3, var96)
   end)
end

fun1 = var4.withContext
local var126 = {}
var126.Localization = var4.Localization
var7 = fun1(var126)(var7)
return var7
