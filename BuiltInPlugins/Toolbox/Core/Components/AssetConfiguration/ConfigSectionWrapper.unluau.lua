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
local var91 = {}
var91.Size = UDim2.new(1, 0, 0, 0)
var11.defaultProps = var91
local function fun3(arg1)
   local var0 = arg1.props
   local var1 = var9.new()
   local var108 = {}
   var108.AutomaticSize = Enum.AutomaticSize.Y
   var108.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var108.Layout = Enum.FillDirection.Horizontal
   var108.LayoutOrder = var0.LayoutOrder
   var108.Size = var0.Size
   var108.VerticalAlignment = Enum.VerticalAlignment.Top
   var2.Ref = var0.ForwardRef
   local var118 = {}
   local var122 = {}
   var122.AutomaticSize = Enum.AutomaticSize.Y
   var122.LayoutOrder = var1:getNextOrder()
   var122.Size = UDim2.new(0, var8.TITLE_GUTTER_WIDTH, 0, 0)
   var122.Text = var0.Title
   var122.TextColor = var0.Stylizer.publishAsset.titleTextColor
   var122.TextSize = var7.FONT_SIZE_TITLE
   var122.TextXAlignment = Enum.TextXAlignment.Left
   var122.TextYAlignment = Enum.TextYAlignment.Top
   var118.Title = var2.createElement(var5, var122)
   local var143 = {}
   var143.AutomaticSize = Enum.AutomaticSize.Y
   var143.LayoutOrder = var1:getNextOrder()
   var143.Size = UDim2.new(1, var8.TITLE_GUTTER_WIDTH, 0, var7.FONT_SIZE_TITLE)
   var118.Contents = var2.createElement(var4, var143, var0[var2.Children])
   return var2.createElement(var4, var108, var118)
end

function var11.render(arg1)
   local var0 = arg1.props
   local var1 = var9.new()
   local var108 = {}
   var108.AutomaticSize = Enum.AutomaticSize.Y
   var108.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var108.Layout = Enum.FillDirection.Horizontal
   var108.LayoutOrder = var0.LayoutOrder
   var108.Size = var0.Size
   var108.VerticalAlignment = Enum.VerticalAlignment.Top
   var2.Ref = var0.ForwardRef
   local var118 = {}
   local var122 = {}
   var122.AutomaticSize = Enum.AutomaticSize.Y
   var122.LayoutOrder = var1:getNextOrder()
   var122.Size = UDim2.new(0, var8.TITLE_GUTTER_WIDTH, 0, 0)
   var122.Text = var0.Title
   var122.TextColor = var0.Stylizer.publishAsset.titleTextColor
   var122.TextSize = var7.FONT_SIZE_TITLE
   var122.TextXAlignment = Enum.TextXAlignment.Left
   var122.TextYAlignment = Enum.TextYAlignment.Top
   var118.Title = var2.createElement(var5, var122)
   local var143 = {}
   var143.AutomaticSize = Enum.AutomaticSize.Y
   var143.LayoutOrder = var1:getNextOrder()
   var143.Size = UDim2.new(1, var8.TITLE_GUTTER_WIDTH, 0, var7.FONT_SIZE_TITLE)
   var118.Contents = var2.createElement(var4, var143, var0[var2.Children])
   return var2.createElement(var4, var108, var118)
end

fun3 = var10.withContext
local var161 = {}
var161.Stylizer = var10.Stylizer
local var165 = fun3(var161)(var11)
var11 = var165
var165 = var3.Wrappers.withForwardRef
var11 = var165(var11)
return var11
