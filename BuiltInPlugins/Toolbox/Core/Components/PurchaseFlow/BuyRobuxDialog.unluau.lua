-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var0.Core.Components.PurchaseFlow.PurchaseDialog)
local var4 = require(var1.Framework).ContextServices
local var5 = var2.PureComponent:extend("BuyRobuxDialog")
local function fun0(arg1)
   local var0 = arg1.props
   local var1 = var0.Balance
   local var37 = {}
   local var2 = {}
   var2.Key = false
   var2.Text = var0.Localization:getText("Purchase", "Cancel")
   local var46 = {}
   var46.Key = true
   var46.Text = var0.Localization:getText("Purchase", "BuyRobux")
   var46.Style = "RoundPrimary"
   var37.Buttons = {}
   var37.OnButtonClicked = var0.OnButtonClicked
   var37.OnClose = var0.OnClose
   var37.Title = var0.Localization:getText("Purchase", "InsufficientTitle")
   local var62 = {}
   var62.robux = var0.Cost - var1
   var62.name = var0.Name
   var62.creator = var0.Creator
   var37.Prompt = var0.Localization:getText("Purchase", "InsufficientPrompt", var62)
   var37.Thumbnail = var0.Thumbnail
   var37.Balance = var1
   return var2.createElement(var3, var37)
end

function var5.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Balance
   local var37 = {}
   local var2 = {}
   var2.Key = false
   var2.Text = var0.Localization:getText("Purchase", "Cancel")
   local var46 = {}
   var46.Key = true
   var46.Text = var0.Localization:getText("Purchase", "BuyRobux")
   var46.Style = "RoundPrimary"
   var37.Buttons = {}
   var37.OnButtonClicked = var0.OnButtonClicked
   var37.OnClose = var0.OnClose
   var37.Title = var0.Localization:getText("Purchase", "InsufficientTitle")
   local var62 = {}
   var62.robux = var0.Cost - var1
   var62.name = var0.Name
   var62.creator = var0.Creator
   var37.Prompt = var0.Localization:getText("Purchase", "InsufficientPrompt", var62)
   var37.Thumbnail = var0.Thumbnail
   var37.Balance = var1
   return var2.createElement(var3, var37)
end

fun0 = var4.withContext
local var66 = {}
var66.Localization = var4.Localization
var5 = fun0(var66)(var5)
return var5
