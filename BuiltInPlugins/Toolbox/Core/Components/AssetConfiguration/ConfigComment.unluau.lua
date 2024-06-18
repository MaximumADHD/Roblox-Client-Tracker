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
   local var240 = {}
   var240.Size = UDim2.new(1, 0, 0, var0.TotalHeight)
   var240.BackgroundTransparency = 1
   var240.BorderSizePixel = 0
   var240.LayoutOrder = var0.LayoutOrder
   local var249 = {}
   local var253 = {}
   var253.FillDirection = Enum.FillDirection.Horizontal
   var253.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var253.VerticalAlignment = Enum.VerticalAlignment.Top
   var253.SortOrder = Enum.SortOrder.LayoutOrder
   var253.Padding = UDim.new(0, 0)
   var249.UIListLayout = var2.createElement("UIListLayout", var253)
   local var266 = {}
   var266.Size = UDim2.new(0, var6.TITLE_GUTTER_WIDTH, 1, 0)
   var266.BackgroundTransparency = 1
   var266.BorderSizePixel = 0
   var266.Text = var0.Title
   var266.TextXAlignment = Enum.TextXAlignment.Left
   var266.TextYAlignment = Enum.TextYAlignment.Top
   var266.TextSize = var5.FONT_SIZE_TITLE
   var266.TextColor3 = arg1.props.Stylizer.publishAsset.titleTextColor
   var266.Font = var5.FONT
   var266.LayoutOrder = 1
   var249.Title = var2.createElement("TextLabel", var266)
   local var288 = {}
   var288.Disabled = var0.CommentEnabled
   var288.LayoutOrder = 2
   var288.OnClick = arg1.toggleCallback
   var288.Selected = var0.CommentOn
   var288.Size = UDim2.new(0, 40, 0, 24)
   var249.ToggleButton = var2.createElement(var7, var288)
   return var2.createElement("Frame", var240, var249)
end

function var8.render(arg1)
   local var0 = arg1.props
   local var1 = var0.ToggleCallback
   local var240 = {}
   var240.Size = UDim2.new(1, 0, 0, var0.TotalHeight)
   var240.BackgroundTransparency = 1
   var240.BorderSizePixel = 0
   var240.LayoutOrder = var0.LayoutOrder
   local var249 = {}
   local var253 = {}
   var253.FillDirection = Enum.FillDirection.Horizontal
   var253.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var253.VerticalAlignment = Enum.VerticalAlignment.Top
   var253.SortOrder = Enum.SortOrder.LayoutOrder
   var253.Padding = UDim.new(0, 0)
   var249.UIListLayout = var2.createElement("UIListLayout", var253)
   local var266 = {}
   var266.Size = UDim2.new(0, var6.TITLE_GUTTER_WIDTH, 1, 0)
   var266.BackgroundTransparency = 1
   var266.BorderSizePixel = 0
   var266.Text = var0.Title
   var266.TextXAlignment = Enum.TextXAlignment.Left
   var266.TextYAlignment = Enum.TextYAlignment.Top
   var266.TextSize = var5.FONT_SIZE_TITLE
   var266.TextColor3 = arg1.props.Stylizer.publishAsset.titleTextColor
   var266.Font = var5.FONT
   var266.LayoutOrder = 1
   var249.Title = var2.createElement("TextLabel", var266)
   local var288 = {}
   var288.Disabled = var0.CommentEnabled
   var288.LayoutOrder = 2
   var288.OnClick = arg1.toggleCallback
   var288.Selected = var0.CommentOn
   var288.Size = UDim2.new(0, 40, 0, 24)
   var249.ToggleButton = var2.createElement(var7, var288)
   return var2.createElement("Frame", var240, var249)
end

fun2 = var3.withContext
local var300 = {}
var300.Stylizer = var3.Stylizer
var8 = fun2(var300)(var8)
return var8
