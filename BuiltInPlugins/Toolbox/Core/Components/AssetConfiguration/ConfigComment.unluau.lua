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
   local var239 = {}
   var239.Size = UDim2.new(1, 0, 0, var0.TotalHeight)
   var239.BackgroundTransparency = 1
   var239.BorderSizePixel = 0
   var239.LayoutOrder = var0.LayoutOrder
   local var248 = {}
   local var252 = {}
   var252.FillDirection = Enum.FillDirection.Horizontal
   var252.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var252.VerticalAlignment = Enum.VerticalAlignment.Top
   var252.SortOrder = Enum.SortOrder.LayoutOrder
   var252.Padding = UDim.new(0, 0)
   var248.UIListLayout = var2.createElement("UIListLayout", var252)
   local var265 = {}
   var265.Size = UDim2.new(0, var6.TITLE_GUTTER_WIDTH, 1, 0)
   var265.BackgroundTransparency = 1
   var265.BorderSizePixel = 0
   var265.Text = var0.Title
   var265.TextXAlignment = Enum.TextXAlignment.Left
   var265.TextYAlignment = Enum.TextYAlignment.Top
   var265.TextSize = var5.FONT_SIZE_TITLE
   var265.TextColor3 = arg1.props.Stylizer.publishAsset.titleTextColor
   var265.Font = var5.FONT
   var265.LayoutOrder = 1
   var248.Title = var2.createElement("TextLabel", var265)
   local var287 = {}
   var287.Disabled = var0.CommentEnabled
   var287.LayoutOrder = 2
   var287.OnClick = arg1.toggleCallback
   var287.Selected = var0.CommentOn
   var287.Size = UDim2.new(0, 40, 0, 24)
   var248.ToggleButton = var2.createElement(var7, var287)
   return var2.createElement("Frame", var239, var248)
end

function var8.render(arg1)
   local var0 = arg1.props
   local var1 = var0.ToggleCallback
   local var239 = {}
   var239.Size = UDim2.new(1, 0, 0, var0.TotalHeight)
   var239.BackgroundTransparency = 1
   var239.BorderSizePixel = 0
   var239.LayoutOrder = var0.LayoutOrder
   local var248 = {}
   local var252 = {}
   var252.FillDirection = Enum.FillDirection.Horizontal
   var252.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var252.VerticalAlignment = Enum.VerticalAlignment.Top
   var252.SortOrder = Enum.SortOrder.LayoutOrder
   var252.Padding = UDim.new(0, 0)
   var248.UIListLayout = var2.createElement("UIListLayout", var252)
   local var265 = {}
   var265.Size = UDim2.new(0, var6.TITLE_GUTTER_WIDTH, 1, 0)
   var265.BackgroundTransparency = 1
   var265.BorderSizePixel = 0
   var265.Text = var0.Title
   var265.TextXAlignment = Enum.TextXAlignment.Left
   var265.TextYAlignment = Enum.TextYAlignment.Top
   var265.TextSize = var5.FONT_SIZE_TITLE
   var265.TextColor3 = arg1.props.Stylizer.publishAsset.titleTextColor
   var265.Font = var5.FONT
   var265.LayoutOrder = 1
   var248.Title = var2.createElement("TextLabel", var265)
   local var287 = {}
   var287.Disabled = var0.CommentEnabled
   var287.LayoutOrder = 2
   var287.OnClick = arg1.toggleCallback
   var287.Selected = var0.CommentOn
   var287.Size = UDim2.new(0, 40, 0, 24)
   var248.ToggleButton = var2.createElement(var7, var287)
   return var2.createElement("Frame", var239, var248)
end

fun2 = var3.withContext
local var299 = {}
var299.Stylizer = var3.Stylizer
var8 = fun2(var299)(var8)
return var8
