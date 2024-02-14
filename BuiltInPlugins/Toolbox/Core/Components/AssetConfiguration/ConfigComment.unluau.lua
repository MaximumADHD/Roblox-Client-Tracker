-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var1.Framework).ContextServices
local var4 = var0.Core.Util
local var5 = require(var4.Constants)
local var6 = require(var4.AssetConfigConstants)
local var7 = require(var1.Framework).UI.ToggleButton
local var8 = var2.PureComponent:extend("ConfigComment")
function var8.init(arg1, arg2)
   function arg1.toggleCallback()
      local var0 = arg1.props
      var0.ToggleCallback(var0.CommentOn)
   end
   
end

local function fun21(arg1)
   local var0 = arg1.props
   local var1 = var0.ToggleCallback
   local var685 = {}
   var685.Size = UDim2.new(1, 0, 0, var0.TotalHeight)
   var685.BackgroundTransparency = 1
   var685.BorderSizePixel = 0
   var685.LayoutOrder = var0.LayoutOrder
   local var694 = {}
   local var698 = {}
   var698.FillDirection = Enum.FillDirection.Horizontal
   var698.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var698.VerticalAlignment = Enum.VerticalAlignment.Top
   var698.SortOrder = Enum.SortOrder.LayoutOrder
   var698.Padding = UDim.new(0, 0)
   var694.UIListLayout = var2.createElement("UIListLayout", var698)
   local var711 = {}
   var711.Size = UDim2.new(0, var6.TITLE_GUTTER_WIDTH, 1, 0)
   var711.BackgroundTransparency = 1
   var711.BorderSizePixel = 0
   var711.Text = var0.Title
   var711.TextXAlignment = Enum.TextXAlignment.Left
   var711.TextYAlignment = Enum.TextYAlignment.Top
   var711.TextSize = var5.FONT_SIZE_TITLE
   var711.TextColor3 = arg1.props.Stylizer.publishAsset.titleTextColor
   var711.Font = var5.FONT
   var711.LayoutOrder = 1
   var694.Title = var2.createElement("TextLabel", var711)
   local var733 = {}
   var733.Disabled = var0.CommentEnabled
   var733.LayoutOrder = 2
   var733.OnClick = arg1.toggleCallback
   var733.Selected = var0.CommentOn
   var733.Size = UDim2.new(0, 40, 0, 24)
   var694.ToggleButton = var2.createElement(var7, var733)
   return var2.createElement("Frame", var685, var694)
end

function var8.render(arg1)
   local var0 = arg1.props
   local var1 = var0.ToggleCallback
   local var685 = {}
   var685.Size = UDim2.new(1, 0, 0, var0.TotalHeight)
   var685.BackgroundTransparency = 1
   var685.BorderSizePixel = 0
   var685.LayoutOrder = var0.LayoutOrder
   local var694 = {}
   local var698 = {}
   var698.FillDirection = Enum.FillDirection.Horizontal
   var698.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var698.VerticalAlignment = Enum.VerticalAlignment.Top
   var698.SortOrder = Enum.SortOrder.LayoutOrder
   var698.Padding = UDim.new(0, 0)
   var694.UIListLayout = var2.createElement("UIListLayout", var698)
   local var711 = {}
   var711.Size = UDim2.new(0, var6.TITLE_GUTTER_WIDTH, 1, 0)
   var711.BackgroundTransparency = 1
   var711.BorderSizePixel = 0
   var711.Text = var0.Title
   var711.TextXAlignment = Enum.TextXAlignment.Left
   var711.TextYAlignment = Enum.TextYAlignment.Top
   var711.TextSize = var5.FONT_SIZE_TITLE
   var711.TextColor3 = arg1.props.Stylizer.publishAsset.titleTextColor
   var711.Font = var5.FONT
   var711.LayoutOrder = 1
   var694.Title = var2.createElement("TextLabel", var711)
   local var733 = {}
   var733.Disabled = var0.CommentEnabled
   var733.LayoutOrder = 2
   var733.OnClick = arg1.toggleCallback
   var733.Selected = var0.CommentOn
   var733.Size = UDim2.new(0, 40, 0, 24)
   var694.ToggleButton = var2.createElement(var7, var733)
   return var2.createElement("Frame", var685, var694)
end

fun21 = var3.withContext
local var745 = {}
var745.Stylizer = var3.Stylizer
var8 = fun21(var745)(var8)
return var8
