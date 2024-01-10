-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var1.Framework)
local var4 = var3.UI.Pane
local var5 = var3.UI.TextLabel
local var6 = var0.Core.Util
local var7 = require(var6.Constants)
local var8 = require(var6.AssetConfigConstants)
local var9 = var3.Util.LayoutOrderIterator
local var10 = var3.ContextServices
local var11 = var2.PureComponent:extend("ConfigureSectionWrapper")
local var98 = {}
var98.Size = UDim2.new(1, 0, 0, 0)
var11.defaultProps = var98
local function fun2(arg1)
   local var0 = arg1.props
   local var1 = var9.new()
   local var115 = {}
   var115.AutomaticSize = Enum.AutomaticSize.Y
   var115.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var115.Layout = Enum.FillDirection.Horizontal
   var115.LayoutOrder = var0.LayoutOrder
   var115.Size = var0.Size
   var115.VerticalAlignment = Enum.VerticalAlignment.Top
   var2.Ref = var0.ForwardRef
   local var125 = {}
   local var129 = {}
   var129.AutomaticSize = Enum.AutomaticSize.Y
   var129.LayoutOrder = var1:getNextOrder()
   var129.Size = UDim2.new(0, var8.TITLE_GUTTER_WIDTH, 0, 0)
   var129.Text = var0.Title
   var129.TextColor = var0.Stylizer.publishAsset.titleTextColor
   var129.TextSize = var7.FONT_SIZE_TITLE
   var129.TextXAlignment = Enum.TextXAlignment.Left
   var129.TextYAlignment = Enum.TextYAlignment.Top
   var125.Title = var2.createElement(var5, var129)
   local var150 = {}
   var150.AutomaticSize = Enum.AutomaticSize.Y
   var150.LayoutOrder = var1:getNextOrder()
   var150.Size = UDim2.new(1, var8.TITLE_GUTTER_WIDTH, 0, var7.FONT_SIZE_TITLE)
   var125.Contents = var2.createElement(var4, var150, var0[var2.Children])
   return var2.createElement(var4, var115, var125)
end

function var11.render(arg1)
   local var0 = arg1.props
   local var1 = var9.new()
   local var115 = {}
   var115.AutomaticSize = Enum.AutomaticSize.Y
   var115.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var115.Layout = Enum.FillDirection.Horizontal
   var115.LayoutOrder = var0.LayoutOrder
   var115.Size = var0.Size
   var115.VerticalAlignment = Enum.VerticalAlignment.Top
   var2.Ref = var0.ForwardRef
   local var125 = {}
   local var129 = {}
   var129.AutomaticSize = Enum.AutomaticSize.Y
   var129.LayoutOrder = var1:getNextOrder()
   var129.Size = UDim2.new(0, var8.TITLE_GUTTER_WIDTH, 0, 0)
   var129.Text = var0.Title
   var129.TextColor = var0.Stylizer.publishAsset.titleTextColor
   var129.TextSize = var7.FONT_SIZE_TITLE
   var129.TextXAlignment = Enum.TextXAlignment.Left
   var129.TextYAlignment = Enum.TextYAlignment.Top
   var125.Title = var2.createElement(var5, var129)
   local var150 = {}
   var150.AutomaticSize = Enum.AutomaticSize.Y
   var150.LayoutOrder = var1:getNextOrder()
   var150.Size = UDim2.new(1, var8.TITLE_GUTTER_WIDTH, 0, var7.FONT_SIZE_TITLE)
   var125.Contents = var2.createElement(var4, var150, var0[var2.Children])
   return var2.createElement(var4, var115, var125)
end

fun2 = var10.withContext
local var168 = {}
var168.Stylizer = var10.Stylizer
local var172 = fun2(var168)(var11)
var11 = var172
var172 = var3.Wrappers.withForwardRef
var11 = var172(var11)
return var11
