-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var1.Framework)
local var4 = require(var0.Core.Components.DropdownMenu)
local var5 = var0.Core.Util
local var6 = require(var5.Constants)
local var7 = require(var5.AssetConfigConstants)
local var8 = require(var5.AssetConfigUtil)
local var9 = var3.ContextServices
local var10 = var2.PureComponent:extend("ConfigGenre")
local function fun0(arg1)
   local var0 = arg1.props
   local var1 = arg1.state
   local var59 = {}
   var59.Size = UDim2.new(1, 0, 0, var0.TotalHeight)
   var59.BackgroundTransparency = 1
   var59.BorderSizePixel = 0
   var59.LayoutOrder = var0.LayoutOrder
   var2.Ref = var0.ForwardRef
   local var71 = {}
   local var75 = {}
   var75.FillDirection = Enum.FillDirection.Horizontal
   var75.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var75.VerticalAlignment = Enum.VerticalAlignment.Top
   var75.SortOrder = Enum.SortOrder.LayoutOrder
   var75.Padding = UDim.new(0, 0)
   var71.UIListLayout = var2.createElement("UIListLayout", var75)
   local var88 = {}
   var88.Size = UDim2.new(0, var7.TITLE_GUTTER_WIDTH, 1, 0)
   var88.BackgroundTransparency = 1
   var88.BorderSizePixel = 0
   var88.Text = var0.Title
   var88.TextXAlignment = Enum.TextXAlignment.Left
   var88.TextYAlignment = Enum.TextYAlignment.Top
   var88.TextSize = var6.FONT_SIZE_TITLE
   var88.TextColor3 = var0.Stylizer.publishAsset.titleTextColor
   var88.Font = var6.FONT
   var88.LayoutOrder = 1
   var71.Title = var2.createElement("TextLabel", var88)
   local var110 = {}
   var110.Size = UDim2.new(0, 220, 0, 38)
   var110.visibleDropDownCount = 5
   var110.selectedDropDownIndex = var8.getGenreIndex(var0.genres or {}[1])
   var110.items = var8.getGenreTypes()
   var110.fontSize = var6.FONT_SIZE_LARGE
   var110.onItemClicked = var0.onDropDownSelect
   var110.setDropdownHeight = var0.setDropdownHeight
   var110.LayoutOrder = 2
   var71.DropDown = var2.createElement(var4, var110)
   return var2.createElement("Frame", var59, var71)
end

function var10.render(arg1)
   local var0 = arg1.props
   local var1 = arg1.state
   local var59 = {}
   var59.Size = UDim2.new(1, 0, 0, var0.TotalHeight)
   var59.BackgroundTransparency = 1
   var59.BorderSizePixel = 0
   var59.LayoutOrder = var0.LayoutOrder
   var2.Ref = var0.ForwardRef
   local var71 = {}
   local var75 = {}
   var75.FillDirection = Enum.FillDirection.Horizontal
   var75.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var75.VerticalAlignment = Enum.VerticalAlignment.Top
   var75.SortOrder = Enum.SortOrder.LayoutOrder
   var75.Padding = UDim.new(0, 0)
   var71.UIListLayout = var2.createElement("UIListLayout", var75)
   local var88 = {}
   var88.Size = UDim2.new(0, var7.TITLE_GUTTER_WIDTH, 1, 0)
   var88.BackgroundTransparency = 1
   var88.BorderSizePixel = 0
   var88.Text = var0.Title
   var88.TextXAlignment = Enum.TextXAlignment.Left
   var88.TextYAlignment = Enum.TextYAlignment.Top
   var88.TextSize = var6.FONT_SIZE_TITLE
   var88.TextColor3 = var0.Stylizer.publishAsset.titleTextColor
   var88.Font = var6.FONT
   var88.LayoutOrder = 1
   var71.Title = var2.createElement("TextLabel", var88)
   local var110 = {}
   var110.Size = UDim2.new(0, 220, 0, 38)
   var110.visibleDropDownCount = 5
   var110.selectedDropDownIndex = var8.getGenreIndex(var0.genres or {}[1])
   var110.items = var8.getGenreTypes()
   var110.fontSize = var6.FONT_SIZE_LARGE
   var110.onItemClicked = var0.onDropDownSelect
   var110.setDropdownHeight = var0.setDropdownHeight
   var110.LayoutOrder = 2
   var71.DropDown = var2.createElement(var4, var110)
   return var2.createElement("Frame", var59, var71)
end

fun0 = var9.withContext
local var123 = {}
var123.Stylizer = var9.Stylizer
local var127 = fun0(var123)(var10)
var10 = var127
var127 = var3.Wrappers.withForwardRef
var10 = var127(var10)
return var10
