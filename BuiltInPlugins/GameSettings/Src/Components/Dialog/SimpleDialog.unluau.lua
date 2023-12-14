-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Cryo)
local var3 = require(var0.Packages.Framework).ContextServices
local var4 = require(var0.Src.Components.Dialog.BaseDialog)
local var5 = var1.PureComponent:extend("SimpleDialog")
local function fun0(arg1)
   local var0 = arg1.props
   local var38 = {}
   var38.Buttons = var0.Buttons
   var38.OnResult = var0.OnResult
   local var40 = {}
   local var49 = {}
   var49.AutomaticSize = Enum.AutomaticSize.Y
   var49.Size = UDim2.new(1, 0, 0, 0)
   var49.BackgroundTransparency = 1
   var49.Text = var0.Header
   var49.TextWrapped = true
   var40.Header = var1.createElement("TextLabel", var2.Dictionary.join(var0.Stylizer.fontStyle.Title, var49))
   var40.Body = var0.Body
   return var1.createElement(var4, var38, var40)
end

function var5.render(arg1)
   local var0 = arg1.props
   local var38 = {}
   var38.Buttons = var0.Buttons
   var38.OnResult = var0.OnResult
   local var40 = {}
   local var49 = {}
   var49.AutomaticSize = Enum.AutomaticSize.Y
   var49.Size = UDim2.new(1, 0, 0, 0)
   var49.BackgroundTransparency = 1
   var49.Text = var0.Header
   var49.TextWrapped = true
   var40.Header = var1.createElement("TextLabel", var2.Dictionary.join(var0.Stylizer.fontStyle.Title, var49))
   var40.Body = var0.Body
   return var1.createElement(var4, var38, var40)
end

fun0 = var3.withContext
local var62 = {}
var62.Stylizer = var3.Stylizer
var5 = fun0(var62)(var5)
return var5
