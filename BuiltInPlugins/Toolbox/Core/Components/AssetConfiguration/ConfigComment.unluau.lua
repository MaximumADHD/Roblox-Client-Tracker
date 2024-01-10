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
   local var261 = {}
   var261.Size = UDim2.new(1, 0, 0, var0.TotalHeight)
   var261.BackgroundTransparency = 1
   var261.BorderSizePixel = 0
   var261.LayoutOrder = var0.LayoutOrder
   local var270 = {}
   local var274 = {}
   var274.FillDirection = Enum.FillDirection.Horizontal
   var274.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var274.VerticalAlignment = Enum.VerticalAlignment.Top
   var274.SortOrder = Enum.SortOrder.LayoutOrder
   var274.Padding = UDim.new(0, 0)
   var270.UIListLayout = var2.createElement("UIListLayout", var274)
   local var287 = {}
   var287.Size = UDim2.new(0, var6.TITLE_GUTTER_WIDTH, 1, 0)
   var287.BackgroundTransparency = 1
   var287.BorderSizePixel = 0
   var287.Text = var0.Title
   var287.TextXAlignment = Enum.TextXAlignment.Left
   var287.TextYAlignment = Enum.TextYAlignment.Top
   var287.TextSize = var5.FONT_SIZE_TITLE
   var287.TextColor3 = arg1.props.Stylizer.publishAsset.titleTextColor
   var287.Font = var5.FONT
   var287.LayoutOrder = 1
   var270.Title = var2.createElement("TextLabel", var287)
   local var309 = {}
   var309.Disabled = var0.CommentEnabled
   var309.LayoutOrder = 2
   var309.OnClick = arg1.toggleCallback
   var309.Selected = var0.CommentOn
   var309.Size = UDim2.new(0, 40, 0, 24)
   var270.ToggleButton = var2.createElement(var7, var309)
   return var2.createElement("Frame", var261, var270)
end

function var8.render(arg1)
   local var0 = arg1.props
   local var1 = var0.ToggleCallback
   local var261 = {}
   var261.Size = UDim2.new(1, 0, 0, var0.TotalHeight)
   var261.BackgroundTransparency = 1
   var261.BorderSizePixel = 0
   var261.LayoutOrder = var0.LayoutOrder
   local var270 = {}
   local var274 = {}
   var274.FillDirection = Enum.FillDirection.Horizontal
   var274.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var274.VerticalAlignment = Enum.VerticalAlignment.Top
   var274.SortOrder = Enum.SortOrder.LayoutOrder
   var274.Padding = UDim.new(0, 0)
   var270.UIListLayout = var2.createElement("UIListLayout", var274)
   local var287 = {}
   var287.Size = UDim2.new(0, var6.TITLE_GUTTER_WIDTH, 1, 0)
   var287.BackgroundTransparency = 1
   var287.BorderSizePixel = 0
   var287.Text = var0.Title
   var287.TextXAlignment = Enum.TextXAlignment.Left
   var287.TextYAlignment = Enum.TextYAlignment.Top
   var287.TextSize = var5.FONT_SIZE_TITLE
   var287.TextColor3 = arg1.props.Stylizer.publishAsset.titleTextColor
   var287.Font = var5.FONT
   var287.LayoutOrder = 1
   var270.Title = var2.createElement("TextLabel", var287)
   local var309 = {}
   var309.Disabled = var0.CommentEnabled
   var309.LayoutOrder = 2
   var309.OnClick = arg1.toggleCallback
   var309.Selected = var0.CommentOn
   var309.Size = UDim2.new(0, 40, 0, 24)
   var270.ToggleButton = var2.createElement(var7, var309)
   return var2.createElement("Frame", var261, var270)
end

fun2 = var3.withContext
local var321 = {}
var321.Stylizer = var3.Stylizer
var8 = fun2(var321)(var8)
return var8
