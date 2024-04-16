-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var0.Core.Components.PurchaseFlow.PurchaseDialog)
local var4 = require(var1.Framework).ContextServices
local var5 = var2.PureComponent:extend("BuyPluginDialog")
local function fun0(arg1)
   local var0 = arg1.props
   local var36 = {}
   local var1 = {}
   var1.Key = false
   var1.Text = var0.Localization:getText("Purchase", "Cancel")
   local var45 = {}
   var45.Key = true
   var45.Text = var0.Localization:getText("Purchase", "Buy")
   var45.Style = "RoundPrimary"
   var36.Buttons = {}
   var36.OnButtonClicked = var0.OnButtonClicked
   var36.OnClose = var0.OnClose
   var36.Title = var0.Localization:getText("Purchase", "BuyTitle")
   local var61 = {}
   var61.name = var0.Name
   var61.creator = var0.Creator
   var61.robux = var0.Cost
   var36.Prompt = var0.Localization:getText("Purchase", "BuyPrompt", var61)
   var36.Thumbnail = var0.Thumbnail
   var36.Balance = var0.Balance
   return var2.createElement(var3, var36)
end

function var5.render(arg1)
   local var0 = arg1.props
   local var36 = {}
   local var1 = {}
   var1.Key = false
   var1.Text = var0.Localization:getText("Purchase", "Cancel")
   local var45 = {}
   var45.Key = true
   var45.Text = var0.Localization:getText("Purchase", "Buy")
   var45.Style = "RoundPrimary"
   var36.Buttons = {}
   var36.OnButtonClicked = var0.OnButtonClicked
   var36.OnClose = var0.OnClose
   var36.Title = var0.Localization:getText("Purchase", "BuyTitle")
   local var61 = {}
   var61.name = var0.Name
   var61.creator = var0.Creator
   var61.robux = var0.Cost
   var36.Prompt = var0.Localization:getText("Purchase", "BuyPrompt", var61)
   var36.Thumbnail = var0.Thumbnail
   var36.Balance = var0.Balance
   return var2.createElement(var3, var36)
end

fun0 = var4.withContext
local var65 = {}
var65.Localization = var4.Localization
var5 = fun0(var65)(var5)
return var5
