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

local function fun2(arg1)
   local var0 = arg1.props
   local var1 = var0.ToggleCallback
   local var250 = {}
   var250.Size = UDim2.new(1, 0, 0, var0.TotalHeight)
   var250.BackgroundTransparency = 1
   var250.BorderSizePixel = 0
   var250.LayoutOrder = var0.LayoutOrder
   local var259 = {}
   local var263 = {}
   var263.FillDirection = Enum.FillDirection.Horizontal
   var263.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var263.VerticalAlignment = Enum.VerticalAlignment.Top
   var263.SortOrder = Enum.SortOrder.LayoutOrder
   var263.Padding = UDim.new(0, 0)
   var259.UIListLayout = var2.createElement("UIListLayout", var263)
   local var276 = {}
   var276.Size = UDim2.new(0, var6.TITLE_GUTTER_WIDTH, 1, 0)
   var276.BackgroundTransparency = 1
   var276.BorderSizePixel = 0
   var276.Text = var0.Title
   var276.TextXAlignment = Enum.TextXAlignment.Left
   var276.TextYAlignment = Enum.TextYAlignment.Top
   var276.TextSize = var5.FONT_SIZE_TITLE
   var276.TextColor3 = arg1.props.Stylizer.publishAsset.titleTextColor
   var276.Font = var5.FONT
   var276.LayoutOrder = 1
   var259.Title = var2.createElement("TextLabel", var276)
   local var298 = {}
   var298.Disabled = var0.CommentEnabled
   var298.LayoutOrder = 2
   var298.OnClick = arg1.toggleCallback
   var298.Selected = var0.CommentOn
   var298.Size = UDim2.new(0, 40, 0, 24)
   var259.ToggleButton = var2.createElement(var7, var298)
   return var2.createElement("Frame", var250, var259)
end

function var8.render(arg1)
   local var0 = arg1.props
   local var1 = var0.ToggleCallback
   local var250 = {}
   var250.Size = UDim2.new(1, 0, 0, var0.TotalHeight)
   var250.BackgroundTransparency = 1
   var250.BorderSizePixel = 0
   var250.LayoutOrder = var0.LayoutOrder
   local var259 = {}
   local var263 = {}
   var263.FillDirection = Enum.FillDirection.Horizontal
   var263.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var263.VerticalAlignment = Enum.VerticalAlignment.Top
   var263.SortOrder = Enum.SortOrder.LayoutOrder
   var263.Padding = UDim.new(0, 0)
   var259.UIListLayout = var2.createElement("UIListLayout", var263)
   local var276 = {}
   var276.Size = UDim2.new(0, var6.TITLE_GUTTER_WIDTH, 1, 0)
   var276.BackgroundTransparency = 1
   var276.BorderSizePixel = 0
   var276.Text = var0.Title
   var276.TextXAlignment = Enum.TextXAlignment.Left
   var276.TextYAlignment = Enum.TextYAlignment.Top
   var276.TextSize = var5.FONT_SIZE_TITLE
   var276.TextColor3 = arg1.props.Stylizer.publishAsset.titleTextColor
   var276.Font = var5.FONT
   var276.LayoutOrder = 1
   var259.Title = var2.createElement("TextLabel", var276)
   local var298 = {}
   var298.Disabled = var0.CommentEnabled
   var298.LayoutOrder = 2
   var298.OnClick = arg1.toggleCallback
   var298.Selected = var0.CommentOn
   var298.Size = UDim2.new(0, 40, 0, 24)
   var259.ToggleButton = var2.createElement(var7, var298)
   return var2.createElement("Frame", var250, var259)
end

fun2 = var3.withContext
local var310 = {}
var310.Stylizer = var3.Stylizer
var8 = fun2(var310)(var8)
return var8
