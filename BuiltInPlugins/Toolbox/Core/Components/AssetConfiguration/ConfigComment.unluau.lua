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
   local var668 = {}
   var668.Size = UDim2.new(1, 0, 0, var0.TotalHeight)
   var668.BackgroundTransparency = 1
   var668.BorderSizePixel = 0
   var668.LayoutOrder = var0.LayoutOrder
   local var677 = {}
   local var681 = {}
   var681.FillDirection = Enum.FillDirection.Horizontal
   var681.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var681.VerticalAlignment = Enum.VerticalAlignment.Top
   var681.SortOrder = Enum.SortOrder.LayoutOrder
   var681.Padding = UDim.new(0, 0)
   var677.UIListLayout = var2.createElement("UIListLayout", var681)
   local var694 = {}
   var694.Size = UDim2.new(0, var6.TITLE_GUTTER_WIDTH, 1, 0)
   var694.BackgroundTransparency = 1
   var694.BorderSizePixel = 0
   var694.Text = var0.Title
   var694.TextXAlignment = Enum.TextXAlignment.Left
   var694.TextYAlignment = Enum.TextYAlignment.Top
   var694.TextSize = var5.FONT_SIZE_TITLE
   var694.TextColor3 = arg1.props.Stylizer.publishAsset.titleTextColor
   var694.Font = var5.FONT
   var694.LayoutOrder = 1
   var677.Title = var2.createElement("TextLabel", var694)
   local var716 = {}
   var716.Disabled = var0.CommentEnabled
   var716.LayoutOrder = 2
   var716.OnClick = arg1.toggleCallback
   var716.Selected = var0.CommentOn
   var716.Size = UDim2.new(0, 40, 0, 24)
   var677.ToggleButton = var2.createElement(var7, var716)
   return var2.createElement("Frame", var668, var677)
end

function var8.render(arg1)
   local var0 = arg1.props
   local var1 = var0.ToggleCallback
   local var668 = {}
   var668.Size = UDim2.new(1, 0, 0, var0.TotalHeight)
   var668.BackgroundTransparency = 1
   var668.BorderSizePixel = 0
   var668.LayoutOrder = var0.LayoutOrder
   local var677 = {}
   local var681 = {}
   var681.FillDirection = Enum.FillDirection.Horizontal
   var681.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var681.VerticalAlignment = Enum.VerticalAlignment.Top
   var681.SortOrder = Enum.SortOrder.LayoutOrder
   var681.Padding = UDim.new(0, 0)
   var677.UIListLayout = var2.createElement("UIListLayout", var681)
   local var694 = {}
   var694.Size = UDim2.new(0, var6.TITLE_GUTTER_WIDTH, 1, 0)
   var694.BackgroundTransparency = 1
   var694.BorderSizePixel = 0
   var694.Text = var0.Title
   var694.TextXAlignment = Enum.TextXAlignment.Left
   var694.TextYAlignment = Enum.TextYAlignment.Top
   var694.TextSize = var5.FONT_SIZE_TITLE
   var694.TextColor3 = arg1.props.Stylizer.publishAsset.titleTextColor
   var694.Font = var5.FONT
   var694.LayoutOrder = 1
   var677.Title = var2.createElement("TextLabel", var694)
   local var716 = {}
   var716.Disabled = var0.CommentEnabled
   var716.LayoutOrder = 2
   var716.OnClick = arg1.toggleCallback
   var716.Selected = var0.CommentOn
   var716.Size = UDim2.new(0, 40, 0, 24)
   var677.ToggleButton = var2.createElement(var7, var716)
   return var2.createElement("Frame", var668, var677)
end

fun21 = var3.withContext
local var728 = {}
var728.Stylizer = var3.Stylizer
var8 = fun21(var728)(var8)
return var8
