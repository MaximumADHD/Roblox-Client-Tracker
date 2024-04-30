-- Generated with Unluau (https://github.com/valencefun/unluau)
if not game:GetFastFlag("LocalSecretsInStudio") then
   return nil
end
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
   local var36 = {}
   var36.LayoutOrder = var0.LayoutOrder
   var36.Title = var0.Localization:getText("General", "TitleSecrets")
   local var43 = {}
   local var47 = {}
   var47.Height = 130
   var47.MultiLine = true
   var47.OnTextChanged = var0.OnChanged
   var47.Text = var0.Secrets
   var43.TextBox = var1.createElement(var5, var47)
   return var1.createElement(var6, var36, var43)
end

function var8.render(arg1)
   local var0 = arg1.props
   local var36 = {}
   var36.LayoutOrder = var0.LayoutOrder
   var36.Title = var0.Localization:getText("General", "TitleSecrets")
   local var43 = {}
   local var47 = {}
   var47.Height = 130
   var47.MultiLine = true
   var47.OnTextChanged = var0.OnChanged
   var47.Text = var0.Secrets
   var43.TextBox = var1.createElement(var5, var47)
   return var1.createElement(var6, var36, var43)
end

fun0 = var7.withContext
local var54 = {}
var54.Localization = var7.Localization
var8 = fun0(var54)(var8)
return var8
