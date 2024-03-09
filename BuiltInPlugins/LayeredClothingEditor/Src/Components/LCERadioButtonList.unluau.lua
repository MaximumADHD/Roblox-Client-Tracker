-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI
local var5 = var4.TextLabel
local var6 = var4.RadioButtonList
local var7 = var4.Pane
local var8 = var2.Util
local var9 = var8.LayoutOrderIterator
local var10 = var1.PureComponent:extend("LCERadioButtonList")
var8.Typecheck.wrap(var10, script)
local function fun1(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var9.new()
   local var249 = {}
   var249.AutomaticSize = Enum.AutomaticSize.XY
   var249.LayoutOrder = var0.LayoutOrder
   var249.Layout = Enum.FillDirection.Vertical
   var249.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var249.VerticalAlignment = Enum.VerticalAlignment.Top
   var249.Spacing = var1.HeaderPadding
   local var255 = {}
   local var259 = {}
   var259.TextXAlignment = Enum.TextXAlignment.Left
   var259.TextYAlignment = Enum.TextYAlignment.Center
   var259.Size = UDim2.new(1, 0, 0, 24)
   var259.Text = var0.Title
   var259.Font = var1.FontBold
   var259.LayoutOrder = var2:getNextOrder()
   var255.Title = var1.createElement(var5, var259)
   local var275 = {}
   var275.Buttons = var0.Buttons
   var275.OnClick = var0.OnClick
   var275.LayoutOrder = var2:getNextOrder()
   var275.SelectedKey = var0.InitialSelectedKey
   var255.List = var1.createElement(var6, var275)
   return var1.createElement(var7, var249, var255)
end

function var10.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var9.new()
   local var249 = {}
   var249.AutomaticSize = Enum.AutomaticSize.XY
   var249.LayoutOrder = var0.LayoutOrder
   var249.Layout = Enum.FillDirection.Vertical
   var249.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var249.VerticalAlignment = Enum.VerticalAlignment.Top
   var249.Spacing = var1.HeaderPadding
   local var255 = {}
   local var259 = {}
   var259.TextXAlignment = Enum.TextXAlignment.Left
   var259.TextYAlignment = Enum.TextYAlignment.Center
   var259.Size = UDim2.new(1, 0, 0, 24)
   var259.Text = var0.Title
   var259.Font = var1.FontBold
   var259.LayoutOrder = var2:getNextOrder()
   var255.Title = var1.createElement(var5, var259)
   local var275 = {}
   var275.Buttons = var0.Buttons
   var275.OnClick = var0.OnClick
   var275.LayoutOrder = var2:getNextOrder()
   var275.SelectedKey = var0.InitialSelectedKey
   var255.List = var1.createElement(var6, var275)
   return var1.createElement(var7, var249, var255)
end

fun1 = var3.withContext
local var280 = {}
var280.Stylizer = var3.Stylizer
var10 = fun1(var280)(var10)
return var10
