-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Cryo)
local var3 = require(var0.Packages.Framework)
local var4 = var3.ContextServices
local var5 = var3.UI.Container
local var6 = var1.Component:extend(script.Name)
local function fun0(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var34 = {}
   local var43 = {}
   var43.LayoutOrder = 1
   var43.Text = var0.Localization:getText("General", "SettingsInsufficientPermission")
   var43.Size = UDim2.fromScale(1, 1)
   var43.BackgroundTransparency = 1
   local var55 = {}
   local var59 = {}
   var59.PaddingLeft = UDim.new(0, var1.settingsPage.failLabelPaddingX / 2)
   var59.PaddingRight = UDim.new(0, var1.settingsPage.failLabelPaddingX / 2)
   var55.Padding = var1.createElement("UIPadding", var59)
   var34.Label = var1.createElement("TextLabel", var2.Dictionary.join(var1.fontStyle.Normal, var43), var55)
   return var1.createElement(var5, {}, var34)
end

function var6.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var34 = {}
   local var43 = {}
   var43.LayoutOrder = 1
   var43.Text = var0.Localization:getText("General", "SettingsInsufficientPermission")
   var43.Size = UDim2.fromScale(1, 1)
   var43.BackgroundTransparency = 1
   local var55 = {}
   local var59 = {}
   var59.PaddingLeft = UDim.new(0, var1.settingsPage.failLabelPaddingX / 2)
   var59.PaddingRight = UDim.new(0, var1.settingsPage.failLabelPaddingX / 2)
   var55.Padding = var1.createElement("UIPadding", var59)
   var34.Label = var1.createElement("TextLabel", var2.Dictionary.join(var1.fontStyle.Normal, var43), var55)
   return var1.createElement(var5, {}, var34)
end

fun0 = var4.withContext
local var75 = {}
var75.Stylizer = var4.Stylizer
var75.Localization = var4.Localization
var6 = fun0(var75)(var6)
return var6
