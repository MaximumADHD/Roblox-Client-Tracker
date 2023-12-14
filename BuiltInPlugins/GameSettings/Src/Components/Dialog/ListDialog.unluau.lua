-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = require(var0.Packages.Cryo)
local var4 = var2.UI.BulletList
local var5 = var2.ContextServices
local var6 = require(var0.Src.Components.Dialog.BaseDialog)
local var7 = var1.PureComponent:extend("ListDialog")
local function fun0(arg1)
   local var0 = arg1.props
   local var1 = {}
   local var46 = {}
   var46.AutomaticSize = Enum.AutomaticSize.Y
   var46.Size = UDim2.new(1, 65476, 0, 0)
   var46.BackgroundTransparency = 1
   var46.Text = var0.Header
   var46.TextXAlignment = Enum.TextXAlignment.Left
   var46.TextWrapped = true
   var1.Header = var1.createElement("TextLabel", var3.Dictionary.join(var0.Stylizer.fontStyle.SemiBold, var46))
   local var62 = {}
   var62.TextTruncate = Enum.TextTruncate.AtEnd
   var62.Items = var0.Entries
   var62.Size = UDim2.new(1, 65476, 0, 0)
   var1.List = var1.createElement(var4, var62)
   local var74 = {}
   var74.Buttons = var0.Buttons
   local var75 = var0.OnResult
   var74.OnResult = var75
   var75 = var1
   return var1.createElement(var6, var74, var75)
end

function var7.render(arg1)
   local var0 = arg1.props
   local var1 = {}
   local var46 = {}
   var46.AutomaticSize = Enum.AutomaticSize.Y
   var46.Size = UDim2.new(1, 65476, 0, 0)
   var46.BackgroundTransparency = 1
   var46.Text = var0.Header
   var46.TextXAlignment = Enum.TextXAlignment.Left
   var46.TextWrapped = true
   var1.Header = var1.createElement("TextLabel", var3.Dictionary.join(var0.Stylizer.fontStyle.SemiBold, var46))
   local var62 = {}
   var62.TextTruncate = Enum.TextTruncate.AtEnd
   var62.Items = var0.Entries
   var62.Size = UDim2.new(1, 65476, 0, 0)
   var1.List = var1.createElement(var4, var62)
   local var74 = {}
   var74.Buttons = var0.Buttons
   local var75 = var0.OnResult
   var74.OnResult = var75
   var75 = var1
   return var1.createElement(var6, var74, var75)
end

fun0 = var5.withContext
local var77 = {}
var77.Stylizer = var5.Stylizer
var7 = fun0(var77)(var7)
return var7
