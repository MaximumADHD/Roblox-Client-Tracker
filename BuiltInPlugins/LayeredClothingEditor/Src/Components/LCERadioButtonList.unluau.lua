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
   local var251 = {}
   var251.AutomaticSize = Enum.AutomaticSize.XY
   var251.LayoutOrder = var0.LayoutOrder
   var251.Layout = Enum.FillDirection.Vertical
   var251.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var251.VerticalAlignment = Enum.VerticalAlignment.Top
   var251.Spacing = var1.HeaderPadding
   local var257 = {}
   local var261 = {}
   var261.TextXAlignment = Enum.TextXAlignment.Left
   var261.TextYAlignment = Enum.TextYAlignment.Center
   var261.Size = UDim2.new(1, 0, 0, 24)
   var261.Text = var0.Title
   var261.Font = var1.FontBold
   var261.LayoutOrder = var2:getNextOrder()
   var257.Title = var1.createElement(var5, var261)
   local var277 = {}
   var277.Buttons = var0.Buttons
   var277.OnClick = var0.OnClick
   var277.LayoutOrder = var2:getNextOrder()
   var277.SelectedKey = var0.InitialSelectedKey
   var257.List = var1.createElement(var6, var277)
   return var1.createElement(var7, var251, var257)
end

function var10.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var9.new()
   local var251 = {}
   var251.AutomaticSize = Enum.AutomaticSize.XY
   var251.LayoutOrder = var0.LayoutOrder
   var251.Layout = Enum.FillDirection.Vertical
   var251.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var251.VerticalAlignment = Enum.VerticalAlignment.Top
   var251.Spacing = var1.HeaderPadding
   local var257 = {}
   local var261 = {}
   var261.TextXAlignment = Enum.TextXAlignment.Left
   var261.TextYAlignment = Enum.TextYAlignment.Center
   var261.Size = UDim2.new(1, 0, 0, 24)
   var261.Text = var0.Title
   var261.Font = var1.FontBold
   var261.LayoutOrder = var2:getNextOrder()
   var257.Title = var1.createElement(var5, var261)
   local var277 = {}
   var277.Buttons = var0.Buttons
   var277.OnClick = var0.OnClick
   var277.LayoutOrder = var2:getNextOrder()
   var277.SelectedKey = var0.InitialSelectedKey
   var257.List = var1.createElement(var6, var277)
   return var1.createElement(var7, var251, var257)
end

fun1 = var3.withContext
local var282 = {}
var282.Stylizer = var3.Stylizer
var10 = fun1(var282)(var10)
return var10
