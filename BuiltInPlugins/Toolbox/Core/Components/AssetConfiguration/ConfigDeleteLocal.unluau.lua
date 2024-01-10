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

local function fun6(arg1)
   local var0 = arg1.props
   local var1 = var8.new()
   local var2 = var8.new()
   local var332 = {}
   var332.Size = UDim2.new(1, 0, 0, var0.TotalHeight)
   var332.BackgroundTransparency = 1
   var332.BorderSizePixel = 0
   var332.LayoutOrder = var0.LayoutOrder
   local var341 = {}
   local var345 = {}
   var345.FillDirection = Enum.FillDirection.Horizontal
   var345.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var345.VerticalAlignment = Enum.VerticalAlignment.Top
   var345.SortOrder = Enum.SortOrder.LayoutOrder
   var345.Padding = UDim.new(0, 0)
   var341.UIListLayout = var2.createElement("UIListLayout", var345)
   local var358 = {}
   var358.Size = UDim2.new(0, var7.TITLE_GUTTER_WIDTH, 1, 0)
   var358.BackgroundTransparency = 1
   var358.BorderSizePixel = 0
   var358.Text = var0.Title
   var358.TextXAlignment = Enum.TextXAlignment.Left
   var358.TextYAlignment = Enum.TextYAlignment.Top
   var358.TextSize = var6.FONT_SIZE_TITLE
   var358.TextColor3 = arg1.props.Stylizer.publishAsset.titleTextColor
   var358.Font = var6.FONT
   var358.LayoutOrder = var1:getNextOrder()
   var341.Title = var2.createElement("TextLabel", var358)
   local var381 = {}
   var381.AutomaticSize = Enum.AutomaticSize.Y
   var381.BackgroundTransparency = 1
   var381.Size = UDim2.new(1, var7.TITLE_GUTTER_WIDTH, 0, 0)
   var381.LayoutOrder = var1:getNextOrder()
   local var394 = {}
   local var398 = {}
   var398.PaddingBottom = UDim.new(0, 25)
   var398.PaddingLeft = UDim.new(0, 0)
   var398.PaddingRight = UDim.new(0, 0)
   var398.PaddingTop = UDim.new(0, 0)
   var394.UIPadding = var2.createElement("UIPadding", var398)
   local var419 = {}
   var419.SortOrder = Enum.SortOrder.LayoutOrder
   var419.FillDirection = Enum.FillDirection.Vertical
   var419.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var419.VerticalAlignment = Enum.VerticalAlignment.Top
   var419.Padding = UDim.new(0, 0)
   var394.UIListLayout = var2.createElement("UIListLayout", var419)
   local var432 = {}
   var432.OnClick = arg1.toggleCallback
   var432.Selected = var0.DeleteLocal
   var432.Size = UDim2.new(0, 40, 0, 24)
   var432.LayoutOrder = var2:getNextOrder()
   var394.ToggleButton = var2.createElement(var10, var432)
   local var446 = {}
   var446.AutomaticSize = Enum.AutomaticSize.Y
   var446.Size = UDim2.new(1, 0, 0, 0)
   var446.Text = var0.Localization:getText("AssetConfigDeleteLocal", "InformationText")
   var446.StyleModifier = var12.Disabled
   var446.TextWrapped = true
   var446.TextXAlignment = Enum.TextXAlignment.Left
   var446.TextYAlignment = Enum.TextYAlignment.Center
   var446.TextSize = var6.FONT_SIZE_LARGE
   var446.LayoutOrder = var2:getNextOrder()
   var394.TipsLabel = var2.createElement(var11, var446)
   var341.RightFrame = var2.createElement("Frame", var381, var394)
   return var2.createElement("Frame", var332, var341)
end

function var13.render(arg1)
   local var0 = arg1.props
   local var1 = var8.new()
   local var2 = var8.new()
   local var332 = {}
   var332.Size = UDim2.new(1, 0, 0, var0.TotalHeight)
   var332.BackgroundTransparency = 1
   var332.BorderSizePixel = 0
   var332.LayoutOrder = var0.LayoutOrder
   local var341 = {}
   local var345 = {}
   var345.FillDirection = Enum.FillDirection.Horizontal
   var345.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var345.VerticalAlignment = Enum.VerticalAlignment.Top
   var345.SortOrder = Enum.SortOrder.LayoutOrder
   var345.Padding = UDim.new(0, 0)
   var341.UIListLayout = var2.createElement("UIListLayout", var345)
   local var358 = {}
   var358.Size = UDim2.new(0, var7.TITLE_GUTTER_WIDTH, 1, 0)
   var358.BackgroundTransparency = 1
   var358.BorderSizePixel = 0
   var358.Text = var0.Title
   var358.TextXAlignment = Enum.TextXAlignment.Left
   var358.TextYAlignment = Enum.TextYAlignment.Top
   var358.TextSize = var6.FONT_SIZE_TITLE
   var358.TextColor3 = arg1.props.Stylizer.publishAsset.titleTextColor
   var358.Font = var6.FONT
   var358.LayoutOrder = var1:getNextOrder()
   var341.Title = var2.createElement("TextLabel", var358)
   local var381 = {}
   var381.AutomaticSize = Enum.AutomaticSize.Y
   var381.BackgroundTransparency = 1
   var381.Size = UDim2.new(1, var7.TITLE_GUTTER_WIDTH, 0, 0)
   var381.LayoutOrder = var1:getNextOrder()
   local var394 = {}
   local var398 = {}
   var398.PaddingBottom = UDim.new(0, 25)
   var398.PaddingLeft = UDim.new(0, 0)
   var398.PaddingRight = UDim.new(0, 0)
   var398.PaddingTop = UDim.new(0, 0)
   var394.UIPadding = var2.createElement("UIPadding", var398)
   local var419 = {}
   var419.SortOrder = Enum.SortOrder.LayoutOrder
   var419.FillDirection = Enum.FillDirection.Vertical
   var419.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var419.VerticalAlignment = Enum.VerticalAlignment.Top
   var419.Padding = UDim.new(0, 0)
   var394.UIListLayout = var2.createElement("UIListLayout", var419)
   local var432 = {}
   var432.OnClick = arg1.toggleCallback
   var432.Selected = var0.DeleteLocal
   var432.Size = UDim2.new(0, 40, 0, 24)
   var432.LayoutOrder = var2:getNextOrder()
   var394.ToggleButton = var2.createElement(var10, var432)
   local var446 = {}
   var446.AutomaticSize = Enum.AutomaticSize.Y
   var446.Size = UDim2.new(1, 0, 0, 0)
   var446.Text = var0.Localization:getText("AssetConfigDeleteLocal", "InformationText")
   var446.StyleModifier = var12.Disabled
   var446.TextWrapped = true
   var446.TextXAlignment = Enum.TextXAlignment.Left
   var446.TextYAlignment = Enum.TextYAlignment.Center
   var446.TextSize = var6.FONT_SIZE_LARGE
   var446.LayoutOrder = var2:getNextOrder()
   var394.TipsLabel = var2.createElement(var11, var446)
   var341.RightFrame = var2.createElement("Frame", var381, var394)
   return var2.createElement("Frame", var332, var341)
end

fun6 = var4.withContext
local var466 = {}
var466.Stylizer = var4.Stylizer
var466.Localization = var4.Localization
var13 = fun6(var466)(var13)
return var13
