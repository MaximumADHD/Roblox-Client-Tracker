-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var1.Framework)
local var4 = var3.ContextServices
local var5 = var0.Core.Util
local var6 = require(var5.Constants)
local var7 = require(var5.AssetConfigConstants)
local var8 = require(var5.LayoutOrderIterator)
local var9 = var3.UI
local var10 = var9.ToggleButton
local var11 = var9.TextLabel
local var12 = var3.Util.StyleModifier
local var13 = var2.PureComponent:extend("ConfigDeleteLocal")
function var13.init(arg1, arg2)
   function arg1.toggleCallback()
      local var0 = arg1.props
      var0.ToggleCallback(var0.DeleteLocal)
   end
   
end

local function fun2(arg1)
   local var0 = arg1.props
   local var1 = var8.new()
   local var2 = var8.new()
   local var196 = {}
   var196.Size = UDim2.new(1, 0, 0, var0.TotalHeight)
   var196.BackgroundTransparency = 1
   var196.BorderSizePixel = 0
   var196.LayoutOrder = var0.LayoutOrder
   local var205 = {}
   local var209 = {}
   var209.FillDirection = Enum.FillDirection.Horizontal
   var209.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var209.VerticalAlignment = Enum.VerticalAlignment.Top
   var209.SortOrder = Enum.SortOrder.LayoutOrder
   var209.Padding = UDim.new(0, 0)
   var205.UIListLayout = var2.createElement("UIListLayout", var209)
   local var222 = {}
   var222.Size = UDim2.new(0, var7.TITLE_GUTTER_WIDTH, 1, 0)
   var222.BackgroundTransparency = 1
   var222.BorderSizePixel = 0
   var222.Text = var0.Title
   var222.TextXAlignment = Enum.TextXAlignment.Left
   var222.TextYAlignment = Enum.TextYAlignment.Top
   var222.TextSize = var6.FONT_SIZE_TITLE
   var222.TextColor3 = arg1.props.Stylizer.publishAsset.titleTextColor
   var222.Font = var6.FONT
   var222.LayoutOrder = var1:getNextOrder()
   var205.Title = var2.createElement("TextLabel", var222)
   local var245 = {}
   var245.AutomaticSize = Enum.AutomaticSize.Y
   var245.BackgroundTransparency = 1
   var245.Size = UDim2.new(1, var7.TITLE_GUTTER_WIDTH, 0, 0)
   var245.LayoutOrder = var1:getNextOrder()
   local var258 = {}
   local var262 = {}
   var262.PaddingBottom = UDim.new(0, 25)
   var262.PaddingLeft = UDim.new(0, 0)
   var262.PaddingRight = UDim.new(0, 0)
   var262.PaddingTop = UDim.new(0, 0)
   var258.UIPadding = var2.createElement("UIPadding", var262)
   local var283 = {}
   var283.SortOrder = Enum.SortOrder.LayoutOrder
   var283.FillDirection = Enum.FillDirection.Vertical
   var283.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var283.VerticalAlignment = Enum.VerticalAlignment.Top
   var283.Padding = UDim.new(0, 0)
   var258.UIListLayout = var2.createElement("UIListLayout", var283)
   local var296 = {}
   var296.OnClick = arg1.toggleCallback
   var296.Selected = var0.DeleteLocal
   var296.Size = UDim2.new(0, 40, 0, 24)
   var296.LayoutOrder = var2:getNextOrder()
   var258.ToggleButton = var2.createElement(var10, var296)
   local var310 = {}
   var310.AutomaticSize = Enum.AutomaticSize.Y
   var310.Size = UDim2.new(1, 0, 0, 0)
   var310.Text = var0.Localization:getText("AssetConfigDeleteLocal", "InformationText")
   var310.StyleModifier = var12.Disabled
   var310.TextWrapped = true
   var310.TextXAlignment = Enum.TextXAlignment.Left
   var310.TextYAlignment = Enum.TextYAlignment.Center
   var310.TextSize = var6.FONT_SIZE_LARGE
   var310.LayoutOrder = var2:getNextOrder()
   var258.TipsLabel = var2.createElement(var11, var310)
   var205.RightFrame = var2.createElement("Frame", var245, var258)
   return var2.createElement("Frame", var196, var205)
end

function var13.render(arg1)
   local var0 = arg1.props
   local var1 = var8.new()
   local var2 = var8.new()
   local var196 = {}
   var196.Size = UDim2.new(1, 0, 0, var0.TotalHeight)
   var196.BackgroundTransparency = 1
   var196.BorderSizePixel = 0
   var196.LayoutOrder = var0.LayoutOrder
   local var205 = {}
   local var209 = {}
   var209.FillDirection = Enum.FillDirection.Horizontal
   var209.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var209.VerticalAlignment = Enum.VerticalAlignment.Top
   var209.SortOrder = Enum.SortOrder.LayoutOrder
   var209.Padding = UDim.new(0, 0)
   var205.UIListLayout = var2.createElement("UIListLayout", var209)
   local var222 = {}
   var222.Size = UDim2.new(0, var7.TITLE_GUTTER_WIDTH, 1, 0)
   var222.BackgroundTransparency = 1
   var222.BorderSizePixel = 0
   var222.Text = var0.Title
   var222.TextXAlignment = Enum.TextXAlignment.Left
   var222.TextYAlignment = Enum.TextYAlignment.Top
   var222.TextSize = var6.FONT_SIZE_TITLE
   var222.TextColor3 = arg1.props.Stylizer.publishAsset.titleTextColor
   var222.Font = var6.FONT
   var222.LayoutOrder = var1:getNextOrder()
   var205.Title = var2.createElement("TextLabel", var222)
   local var245 = {}
   var245.AutomaticSize = Enum.AutomaticSize.Y
   var245.BackgroundTransparency = 1
   var245.Size = UDim2.new(1, var7.TITLE_GUTTER_WIDTH, 0, 0)
   var245.LayoutOrder = var1:getNextOrder()
   local var258 = {}
   local var262 = {}
   var262.PaddingBottom = UDim.new(0, 25)
   var262.PaddingLeft = UDim.new(0, 0)
   var262.PaddingRight = UDim.new(0, 0)
   var262.PaddingTop = UDim.new(0, 0)
   var258.UIPadding = var2.createElement("UIPadding", var262)
   local var283 = {}
   var283.SortOrder = Enum.SortOrder.LayoutOrder
   var283.FillDirection = Enum.FillDirection.Vertical
   var283.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var283.VerticalAlignment = Enum.VerticalAlignment.Top
   var283.Padding = UDim.new(0, 0)
   var258.UIListLayout = var2.createElement("UIListLayout", var283)
   local var296 = {}
   var296.OnClick = arg1.toggleCallback
   var296.Selected = var0.DeleteLocal
   var296.Size = UDim2.new(0, 40, 0, 24)
   var296.LayoutOrder = var2:getNextOrder()
   var258.ToggleButton = var2.createElement(var10, var296)
   local var310 = {}
   var310.AutomaticSize = Enum.AutomaticSize.Y
   var310.Size = UDim2.new(1, 0, 0, 0)
   var310.Text = var0.Localization:getText("AssetConfigDeleteLocal", "InformationText")
   var310.StyleModifier = var12.Disabled
   var310.TextWrapped = true
   var310.TextXAlignment = Enum.TextXAlignment.Left
   var310.TextYAlignment = Enum.TextYAlignment.Center
   var310.TextSize = var6.FONT_SIZE_LARGE
   var310.LayoutOrder = var2:getNextOrder()
   var258.TipsLabel = var2.createElement(var11, var310)
   var205.RightFrame = var2.createElement("Frame", var245, var258)
   return var2.createElement("Frame", var196, var205)
end

fun2 = var4.withContext
local var330 = {}
var330.Stylizer = var4.Stylizer
var330.Localization = var4.Localization
var13 = fun2(var330)(var13)
return var13
