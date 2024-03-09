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
   local var673 = {}
   var673.Size = UDim2.new(1, 0, 0, var0.TotalHeight)
   var673.BackgroundTransparency = 1
   var673.BorderSizePixel = 0
   var673.LayoutOrder = var0.LayoutOrder
   local var682 = {}
   local var686 = {}
   var686.FillDirection = Enum.FillDirection.Horizontal
   var686.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var686.VerticalAlignment = Enum.VerticalAlignment.Top
   var686.SortOrder = Enum.SortOrder.LayoutOrder
   var686.Padding = UDim.new(0, 0)
   var682.UIListLayout = var2.createElement("UIListLayout", var686)
   local var699 = {}
   var699.Size = UDim2.new(0, var6.TITLE_GUTTER_WIDTH, 1, 0)
   var699.BackgroundTransparency = 1
   var699.BorderSizePixel = 0
   var699.Text = var0.Title
   var699.TextXAlignment = Enum.TextXAlignment.Left
   var699.TextYAlignment = Enum.TextYAlignment.Top
   var699.TextSize = var5.FONT_SIZE_TITLE
   var699.TextColor3 = arg1.props.Stylizer.publishAsset.titleTextColor
   var699.Font = var5.FONT
   var699.LayoutOrder = 1
   var682.Title = var2.createElement("TextLabel", var699)
   local var721 = {}
   var721.Disabled = var0.CommentEnabled
   var721.LayoutOrder = 2
   var721.OnClick = arg1.toggleCallback
   var721.Selected = var0.CommentOn
   var721.Size = UDim2.new(0, 40, 0, 24)
   var682.ToggleButton = var2.createElement(var7, var721)
   return var2.createElement("Frame", var673, var682)
end

function var8.render(arg1)
   local var0 = arg1.props
   local var1 = var0.ToggleCallback
   local var673 = {}
   var673.Size = UDim2.new(1, 0, 0, var0.TotalHeight)
   var673.BackgroundTransparency = 1
   var673.BorderSizePixel = 0
   var673.LayoutOrder = var0.LayoutOrder
   local var682 = {}
   local var686 = {}
   var686.FillDirection = Enum.FillDirection.Horizontal
   var686.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var686.VerticalAlignment = Enum.VerticalAlignment.Top
   var686.SortOrder = Enum.SortOrder.LayoutOrder
   var686.Padding = UDim.new(0, 0)
   var682.UIListLayout = var2.createElement("UIListLayout", var686)
   local var699 = {}
   var699.Size = UDim2.new(0, var6.TITLE_GUTTER_WIDTH, 1, 0)
   var699.BackgroundTransparency = 1
   var699.BorderSizePixel = 0
   var699.Text = var0.Title
   var699.TextXAlignment = Enum.TextXAlignment.Left
   var699.TextYAlignment = Enum.TextYAlignment.Top
   var699.TextSize = var5.FONT_SIZE_TITLE
   var699.TextColor3 = arg1.props.Stylizer.publishAsset.titleTextColor
   var699.Font = var5.FONT
   var699.LayoutOrder = 1
   var682.Title = var2.createElement("TextLabel", var699)
   local var721 = {}
   var721.Disabled = var0.CommentEnabled
   var721.LayoutOrder = 2
   var721.OnClick = arg1.toggleCallback
   var721.Selected = var0.CommentOn
   var721.Size = UDim2.new(0, 40, 0, 24)
   var682.ToggleButton = var2.createElement(var7, var721)
   return var2.createElement("Frame", var673, var682)
end

fun21 = var3.withContext
local var733 = {}
var733.Stylizer = var3.Stylizer
var8 = fun21(var733)(var8)
return var8
