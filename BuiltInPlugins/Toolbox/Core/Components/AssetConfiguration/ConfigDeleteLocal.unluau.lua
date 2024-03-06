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
   local var326 = {}
   var326.Size = UDim2.new(1, 0, 0, var0.TotalHeight)
   var326.BackgroundTransparency = 1
   var326.BorderSizePixel = 0
   var326.LayoutOrder = var0.LayoutOrder
   local var335 = {}
   local var339 = {}
   var339.FillDirection = Enum.FillDirection.Horizontal
   var339.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var339.VerticalAlignment = Enum.VerticalAlignment.Top
   var339.SortOrder = Enum.SortOrder.LayoutOrder
   var339.Padding = UDim.new(0, 0)
   var335.UIListLayout = var2.createElement("UIListLayout", var339)
   local var352 = {}
   var352.Size = UDim2.new(0, var7.TITLE_GUTTER_WIDTH, 1, 0)
   var352.BackgroundTransparency = 1
   var352.BorderSizePixel = 0
   var352.Text = var0.Title
   var352.TextXAlignment = Enum.TextXAlignment.Left
   var352.TextYAlignment = Enum.TextYAlignment.Top
   var352.TextSize = var6.FONT_SIZE_TITLE
   var352.TextColor3 = arg1.props.Stylizer.publishAsset.titleTextColor
   var352.Font = var6.FONT
   var352.LayoutOrder = var1:getNextOrder()
   var335.Title = var2.createElement("TextLabel", var352)
   local var375 = {}
   var375.AutomaticSize = Enum.AutomaticSize.Y
   var375.BackgroundTransparency = 1
   var375.Size = UDim2.new(1, var7.TITLE_GUTTER_WIDTH, 0, 0)
   var375.LayoutOrder = var1:getNextOrder()
   local var388 = {}
   local var392 = {}
   var392.PaddingBottom = UDim.new(0, 25)
   var392.PaddingLeft = UDim.new(0, 0)
   var392.PaddingRight = UDim.new(0, 0)
   var392.PaddingTop = UDim.new(0, 0)
   var388.UIPadding = var2.createElement("UIPadding", var392)
   local var413 = {}
   var413.SortOrder = Enum.SortOrder.LayoutOrder
   var413.FillDirection = Enum.FillDirection.Vertical
   var413.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var413.VerticalAlignment = Enum.VerticalAlignment.Top
   var413.Padding = UDim.new(0, 0)
   var388.UIListLayout = var2.createElement("UIListLayout", var413)
   local var426 = {}
   var426.OnClick = arg1.toggleCallback
   var426.Selected = var0.DeleteLocal
   var426.Size = UDim2.new(0, 40, 0, 24)
   var426.LayoutOrder = var2:getNextOrder()
   var388.ToggleButton = var2.createElement(var10, var426)
   local var440 = {}
   var440.AutomaticSize = Enum.AutomaticSize.Y
   var440.Size = UDim2.new(1, 0, 0, 0)
   var440.Text = var0.Localization:getText("AssetConfigDeleteLocal", "InformationText")
   var440.StyleModifier = var12.Disabled
   var440.TextWrapped = true
   var440.TextXAlignment = Enum.TextXAlignment.Left
   var440.TextYAlignment = Enum.TextYAlignment.Center
   var440.TextSize = var6.FONT_SIZE_LARGE
   var440.LayoutOrder = var2:getNextOrder()
   var388.TipsLabel = var2.createElement(var11, var440)
   var335.RightFrame = var2.createElement("Frame", var375, var388)
   return var2.createElement("Frame", var326, var335)
end

function var13.render(arg1)
   local var0 = arg1.props
   local var1 = var8.new()
   local var2 = var8.new()
   local var326 = {}
   var326.Size = UDim2.new(1, 0, 0, var0.TotalHeight)
   var326.BackgroundTransparency = 1
   var326.BorderSizePixel = 0
   var326.LayoutOrder = var0.LayoutOrder
   local var335 = {}
   local var339 = {}
   var339.FillDirection = Enum.FillDirection.Horizontal
   var339.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var339.VerticalAlignment = Enum.VerticalAlignment.Top
   var339.SortOrder = Enum.SortOrder.LayoutOrder
   var339.Padding = UDim.new(0, 0)
   var335.UIListLayout = var2.createElement("UIListLayout", var339)
   local var352 = {}
   var352.Size = UDim2.new(0, var7.TITLE_GUTTER_WIDTH, 1, 0)
   var352.BackgroundTransparency = 1
   var352.BorderSizePixel = 0
   var352.Text = var0.Title
   var352.TextXAlignment = Enum.TextXAlignment.Left
   var352.TextYAlignment = Enum.TextYAlignment.Top
   var352.TextSize = var6.FONT_SIZE_TITLE
   var352.TextColor3 = arg1.props.Stylizer.publishAsset.titleTextColor
   var352.Font = var6.FONT
   var352.LayoutOrder = var1:getNextOrder()
   var335.Title = var2.createElement("TextLabel", var352)
   local var375 = {}
   var375.AutomaticSize = Enum.AutomaticSize.Y
   var375.BackgroundTransparency = 1
   var375.Size = UDim2.new(1, var7.TITLE_GUTTER_WIDTH, 0, 0)
   var375.LayoutOrder = var1:getNextOrder()
   local var388 = {}
   local var392 = {}
   var392.PaddingBottom = UDim.new(0, 25)
   var392.PaddingLeft = UDim.new(0, 0)
   var392.PaddingRight = UDim.new(0, 0)
   var392.PaddingTop = UDim.new(0, 0)
   var388.UIPadding = var2.createElement("UIPadding", var392)
   local var413 = {}
   var413.SortOrder = Enum.SortOrder.LayoutOrder
   var413.FillDirection = Enum.FillDirection.Vertical
   var413.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var413.VerticalAlignment = Enum.VerticalAlignment.Top
   var413.Padding = UDim.new(0, 0)
   var388.UIListLayout = var2.createElement("UIListLayout", var413)
   local var426 = {}
   var426.OnClick = arg1.toggleCallback
   var426.Selected = var0.DeleteLocal
   var426.Size = UDim2.new(0, 40, 0, 24)
   var426.LayoutOrder = var2:getNextOrder()
   var388.ToggleButton = var2.createElement(var10, var426)
   local var440 = {}
   var440.AutomaticSize = Enum.AutomaticSize.Y
   var440.Size = UDim2.new(1, 0, 0, 0)
   var440.Text = var0.Localization:getText("AssetConfigDeleteLocal", "InformationText")
   var440.StyleModifier = var12.Disabled
   var440.TextWrapped = true
   var440.TextXAlignment = Enum.TextXAlignment.Left
   var440.TextYAlignment = Enum.TextYAlignment.Center
   var440.TextSize = var6.FONT_SIZE_LARGE
   var440.LayoutOrder = var2:getNextOrder()
   var388.TipsLabel = var2.createElement(var11, var440)
   var335.RightFrame = var2.createElement("Frame", var375, var388)
   return var2.createElement("Frame", var326, var335)
end

fun6 = var4.withContext
local var460 = {}
var460.Stylizer = var4.Stylizer
var460.Localization = var4.Localization
var13 = fun6(var460)(var13)
return var13
