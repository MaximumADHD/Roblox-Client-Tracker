-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Cryo)
local var3 = require(var0.Packages.Framework)
local var4 = var3.UI
local var5 = var4.TextInput
local var6 = var4.TitledFrame
local var7 = var3.ContextServices
local var8 = var1.PureComponent:extend("Secrets")
local function fun0(arg1)
   local var0 = arg1.props
   local var31 = {}
   var31.LayoutOrder = var0.LayoutOrder
   var31.Title = var0.Localization:getText("General", "TitleSecrets")
   local var38 = {}
   local var42 = {}
   var42.Height = 130
   var42.MultiLine = true
   var42.OnTextChanged = var0.OnChanged
   var42.Text = var0.Secrets
   var38.TextBox = var1.createElement(var5, var42)
   return var1.createElement(var6, var31, var38)
end

function var8.render(arg1)
   local var0 = arg1.props
   local var31 = {}
   var31.LayoutOrder = var0.LayoutOrder
   var31.Title = var0.Localization:getText("General", "TitleSecrets")
   local var38 = {}
   local var42 = {}
   var42.Height = 130
   var42.MultiLine = true
   var42.OnTextChanged = var0.OnChanged
   var42.Text = var0.Secrets
   var38.TextBox = var1.createElement(var5, var42)
   return var1.createElement(var6, var31, var38)
end

fun0 = var7.withContext
local var49 = {}
var49.Localization = var7.Localization
var8 = fun0(var49)(var8)
return var8
