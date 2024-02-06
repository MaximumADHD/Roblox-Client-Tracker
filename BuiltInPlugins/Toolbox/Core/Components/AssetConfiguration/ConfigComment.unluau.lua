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
   local var695 = {}
   var695.Size = UDim2.new(1, 0, 0, var0.TotalHeight)
   var695.BackgroundTransparency = 1
   var695.BorderSizePixel = 0
   var695.LayoutOrder = var0.LayoutOrder
   local var704 = {}
   local var708 = {}
   var708.FillDirection = Enum.FillDirection.Horizontal
   var708.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var708.VerticalAlignment = Enum.VerticalAlignment.Top
   var708.SortOrder = Enum.SortOrder.LayoutOrder
   var708.Padding = UDim.new(0, 0)
   var704.UIListLayout = var2.createElement("UIListLayout", var708)
   local var721 = {}
   var721.Size = UDim2.new(0, var6.TITLE_GUTTER_WIDTH, 1, 0)
   var721.BackgroundTransparency = 1
   var721.BorderSizePixel = 0
   var721.Text = var0.Title
   var721.TextXAlignment = Enum.TextXAlignment.Left
   var721.TextYAlignment = Enum.TextYAlignment.Top
   var721.TextSize = var5.FONT_SIZE_TITLE
   var721.TextColor3 = arg1.props.Stylizer.publishAsset.titleTextColor
   var721.Font = var5.FONT
   var721.LayoutOrder = 1
   var704.Title = var2.createElement("TextLabel", var721)
   local var743 = {}
   var743.Disabled = var0.CommentEnabled
   var743.LayoutOrder = 2
   var743.OnClick = arg1.toggleCallback
   var743.Selected = var0.CommentOn
   var743.Size = UDim2.new(0, 40, 0, 24)
   var704.ToggleButton = var2.createElement(var7, var743)
   return var2.createElement("Frame", var695, var704)
end

function var8.render(arg1)
   local var0 = arg1.props
   local var1 = var0.ToggleCallback
   local var695 = {}
   var695.Size = UDim2.new(1, 0, 0, var0.TotalHeight)
   var695.BackgroundTransparency = 1
   var695.BorderSizePixel = 0
   var695.LayoutOrder = var0.LayoutOrder
   local var704 = {}
   local var708 = {}
   var708.FillDirection = Enum.FillDirection.Horizontal
   var708.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var708.VerticalAlignment = Enum.VerticalAlignment.Top
   var708.SortOrder = Enum.SortOrder.LayoutOrder
   var708.Padding = UDim.new(0, 0)
   var704.UIListLayout = var2.createElement("UIListLayout", var708)
   local var721 = {}
   var721.Size = UDim2.new(0, var6.TITLE_GUTTER_WIDTH, 1, 0)
   var721.BackgroundTransparency = 1
   var721.BorderSizePixel = 0
   var721.Text = var0.Title
   var721.TextXAlignment = Enum.TextXAlignment.Left
   var721.TextYAlignment = Enum.TextYAlignment.Top
   var721.TextSize = var5.FONT_SIZE_TITLE
   var721.TextColor3 = arg1.props.Stylizer.publishAsset.titleTextColor
   var721.Font = var5.FONT
   var721.LayoutOrder = 1
   var704.Title = var2.createElement("TextLabel", var721)
   local var743 = {}
   var743.Disabled = var0.CommentEnabled
   var743.LayoutOrder = 2
   var743.OnClick = arg1.toggleCallback
   var743.Selected = var0.CommentOn
   var743.Size = UDim2.new(0, 40, 0, 24)
   var704.ToggleButton = var2.createElement(var7, var743)
   return var2.createElement("Frame", var695, var704)
end

fun21 = var3.withContext
local var755 = {}
var755.Stylizer = var3.Stylizer
var8 = fun21(var755)(var8)
return var8
