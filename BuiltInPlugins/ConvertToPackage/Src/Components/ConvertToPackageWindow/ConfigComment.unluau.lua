-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = script.Parent.Parent.Parent.Parent
local var2 = var1.Packages
local var3 = require(var2.Framework)
local var4 = require(var2.Roact)
local var5 = var3.ContextServices
local var6 = require(var1.Src.Util.Constants)
local var7 = var3.UI.ToggleButton
local var8 = var4.PureComponent:extend("ConfigComment")
local function fun3(arg1)
   local var0 = arg1.props
   local var227 = {}
   var227.Size = UDim2.new(1, 0, 0, var0.TotalHeight)
   var227.BackgroundTransparency = 1
   var227.BorderSizePixel = 0
   var227.LayoutOrder = var0.LayoutOrder
   local var236 = {}
   local var240 = {}
   var240.FillDirection = Enum.FillDirection.Horizontal
   var240.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var240.VerticalAlignment = Enum.VerticalAlignment.Top
   var240.SortOrder = Enum.SortOrder.LayoutOrder
   var240.Padding = UDim.new(0, 0)
   var236.UIListLayout = var4.createElement("UIListLayout", var240)
   local var253 = {}
   var253.Size = UDim2.new(0, var6.TITLE_GUTTER_WIDTH, 1, 0)
   var253.BackgroundTransparency = 1
   var253.BorderSizePixel = 0
   var253.Text = var0.Title
   var253.TextXAlignment = Enum.TextXAlignment.Left
   var253.TextYAlignment = Enum.TextYAlignment.Top
   var253.TextSize = var6.FONT_SIZE_TITLE
   var253.TextColor3 = var0.Stylizer.publishAsset.titleTextColor
   var253.Font = var6.FONT
   var253.LayoutOrder = 1
   var236.Title = var4.createElement("TextLabel", var253)
   local var275 = {}
   var275.Disabled = var0.CommentEnabled
   var275.LayoutOrder = 2
   var275.OnClick = var0.ToggleCallback
   var275.Selected = var0.CommentOn
   var236.ToggleButton = var4.createElement(var7, var275)
   return var4.createElement("Frame", var227, var236)
end

function var8.render(arg1)
   local var0 = arg1.props
   local var227 = {}
   var227.Size = UDim2.new(1, 0, 0, var0.TotalHeight)
   var227.BackgroundTransparency = 1
   var227.BorderSizePixel = 0
   var227.LayoutOrder = var0.LayoutOrder
   local var236 = {}
   local var240 = {}
   var240.FillDirection = Enum.FillDirection.Horizontal
   var240.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var240.VerticalAlignment = Enum.VerticalAlignment.Top
   var240.SortOrder = Enum.SortOrder.LayoutOrder
   var240.Padding = UDim.new(0, 0)
   var236.UIListLayout = var4.createElement("UIListLayout", var240)
   local var253 = {}
   var253.Size = UDim2.new(0, var6.TITLE_GUTTER_WIDTH, 1, 0)
   var253.BackgroundTransparency = 1
   var253.BorderSizePixel = 0
   var253.Text = var0.Title
   var253.TextXAlignment = Enum.TextXAlignment.Left
   var253.TextYAlignment = Enum.TextYAlignment.Top
   var253.TextSize = var6.FONT_SIZE_TITLE
   var253.TextColor3 = var0.Stylizer.publishAsset.titleTextColor
   var253.Font = var6.FONT
   var253.LayoutOrder = 1
   var236.Title = var4.createElement("TextLabel", var253)
   local var275 = {}
   var275.Disabled = var0.CommentEnabled
   var275.LayoutOrder = 2
   var275.OnClick = var0.ToggleCallback
   var275.Selected = var0.CommentOn
   var236.ToggleButton = var4.createElement(var7, var275)
   return var4.createElement("Frame", var227, var236)
end

fun3 = var5.withContext
local var280 = {}
var280.Stylizer = var5.Stylizer
var8 = fun3(var280)(var8)
return var8
