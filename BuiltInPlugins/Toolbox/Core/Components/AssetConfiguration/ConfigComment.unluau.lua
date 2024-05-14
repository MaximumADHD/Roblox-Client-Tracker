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
   local var238 = {}
   var238.Size = UDim2.new(1, 0, 0, var0.TotalHeight)
   var238.BackgroundTransparency = 1
   var238.BorderSizePixel = 0
   var238.LayoutOrder = var0.LayoutOrder
   local var247 = {}
   local var251 = {}
   var251.FillDirection = Enum.FillDirection.Horizontal
   var251.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var251.VerticalAlignment = Enum.VerticalAlignment.Top
   var251.SortOrder = Enum.SortOrder.LayoutOrder
   var251.Padding = UDim.new(0, 0)
   var247.UIListLayout = var2.createElement("UIListLayout", var251)
   local var264 = {}
   var264.Size = UDim2.new(0, var6.TITLE_GUTTER_WIDTH, 1, 0)
   var264.BackgroundTransparency = 1
   var264.BorderSizePixel = 0
   var264.Text = var0.Title
   var264.TextXAlignment = Enum.TextXAlignment.Left
   var264.TextYAlignment = Enum.TextYAlignment.Top
   var264.TextSize = var5.FONT_SIZE_TITLE
   var264.TextColor3 = arg1.props.Stylizer.publishAsset.titleTextColor
   var264.Font = var5.FONT
   var264.LayoutOrder = 1
   var247.Title = var2.createElement("TextLabel", var264)
   local var286 = {}
   var286.Disabled = var0.CommentEnabled
   var286.LayoutOrder = 2
   var286.OnClick = arg1.toggleCallback
   var286.Selected = var0.CommentOn
   var286.Size = UDim2.new(0, 40, 0, 24)
   var247.ToggleButton = var2.createElement(var7, var286)
   return var2.createElement("Frame", var238, var247)
end

function var8.render(arg1)
   local var0 = arg1.props
   local var1 = var0.ToggleCallback
   local var238 = {}
   var238.Size = UDim2.new(1, 0, 0, var0.TotalHeight)
   var238.BackgroundTransparency = 1
   var238.BorderSizePixel = 0
   var238.LayoutOrder = var0.LayoutOrder
   local var247 = {}
   local var251 = {}
   var251.FillDirection = Enum.FillDirection.Horizontal
   var251.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var251.VerticalAlignment = Enum.VerticalAlignment.Top
   var251.SortOrder = Enum.SortOrder.LayoutOrder
   var251.Padding = UDim.new(0, 0)
   var247.UIListLayout = var2.createElement("UIListLayout", var251)
   local var264 = {}
   var264.Size = UDim2.new(0, var6.TITLE_GUTTER_WIDTH, 1, 0)
   var264.BackgroundTransparency = 1
   var264.BorderSizePixel = 0
   var264.Text = var0.Title
   var264.TextXAlignment = Enum.TextXAlignment.Left
   var264.TextYAlignment = Enum.TextYAlignment.Top
   var264.TextSize = var5.FONT_SIZE_TITLE
   var264.TextColor3 = arg1.props.Stylizer.publishAsset.titleTextColor
   var264.Font = var5.FONT
   var264.LayoutOrder = 1
   var247.Title = var2.createElement("TextLabel", var264)
   local var286 = {}
   var286.Disabled = var0.CommentEnabled
   var286.LayoutOrder = 2
   var286.OnClick = arg1.toggleCallback
   var286.Selected = var0.CommentOn
   var286.Size = UDim2.new(0, 40, 0, 24)
   var247.ToggleButton = var2.createElement(var7, var286)
   return var2.createElement("Frame", var238, var247)
end

fun2 = var3.withContext
local var298 = {}
var298.Stylizer = var3.Stylizer
var8 = fun2(var298)(var8)
return var8
