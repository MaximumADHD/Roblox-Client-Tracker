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
local function fun10(arg1)
   local var0 = arg1.props
   local var1 = arg1.state
   local var647 = {}
   var647.Size = UDim2.new(1, 0, 0, var0.TotalHeight)
   var647.BackgroundTransparency = 1
   var647.BorderSizePixel = 0
   var647.LayoutOrder = var0.LayoutOrder
   var2.Ref = var0.ForwardRef
   local var659 = {}
   local var663 = {}
   var663.FillDirection = Enum.FillDirection.Horizontal
   var663.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var663.VerticalAlignment = Enum.VerticalAlignment.Top
   var663.SortOrder = Enum.SortOrder.LayoutOrder
   var663.Padding = UDim.new(0, 0)
   var659.UIListLayout = var2.createElement("UIListLayout", var663)
   local var676 = {}
   var676.Size = UDim2.new(0, var7.TITLE_GUTTER_WIDTH, 1, 0)
   var676.BackgroundTransparency = 1
   var676.BorderSizePixel = 0
   var676.Text = var0.Title
   var676.TextXAlignment = Enum.TextXAlignment.Left
   var676.TextYAlignment = Enum.TextYAlignment.Top
   var676.TextSize = var6.FONT_SIZE_TITLE
   var676.TextColor3 = var0.Stylizer.publishAsset.titleTextColor
   var676.Font = var6.FONT
   var676.LayoutOrder = 1
   var659.Title = var2.createElement("TextLabel", var676)
   local var698 = {}
   var698.Size = UDim2.new(0, 220, 0, 38)
   var698.visibleDropDownCount = 5
   var698.selectedDropDownIndex = var8.getGenreIndex(var0.genres or {}[1])
   var698.items = var8.getGenreTypes()
   var698.fontSize = var6.FONT_SIZE_LARGE
   var698.onItemClicked = var0.onDropDownSelect
   var698.setDropdownHeight = var0.setDropdownHeight
   var698.LayoutOrder = 2
   var659.DropDown = var2.createElement(var4, var698)
   return var2.createElement("Frame", var647, var659)
end

function var10.render(arg1)
   local var0 = arg1.props
   local var1 = arg1.state
   local var647 = {}
   var647.Size = UDim2.new(1, 0, 0, var0.TotalHeight)
   var647.BackgroundTransparency = 1
   var647.BorderSizePixel = 0
   var647.LayoutOrder = var0.LayoutOrder
   var2.Ref = var0.ForwardRef
   local var659 = {}
   local var663 = {}
   var663.FillDirection = Enum.FillDirection.Horizontal
   var663.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var663.VerticalAlignment = Enum.VerticalAlignment.Top
   var663.SortOrder = Enum.SortOrder.LayoutOrder
   var663.Padding = UDim.new(0, 0)
   var659.UIListLayout = var2.createElement("UIListLayout", var663)
   local var676 = {}
   var676.Size = UDim2.new(0, var7.TITLE_GUTTER_WIDTH, 1, 0)
   var676.BackgroundTransparency = 1
   var676.BorderSizePixel = 0
   var676.Text = var0.Title
   var676.TextXAlignment = Enum.TextXAlignment.Left
   var676.TextYAlignment = Enum.TextYAlignment.Top
   var676.TextSize = var6.FONT_SIZE_TITLE
   var676.TextColor3 = var0.Stylizer.publishAsset.titleTextColor
   var676.Font = var6.FONT
   var676.LayoutOrder = 1
   var659.Title = var2.createElement("TextLabel", var676)
   local var698 = {}
   var698.Size = UDim2.new(0, 220, 0, 38)
   var698.visibleDropDownCount = 5
   var698.selectedDropDownIndex = var8.getGenreIndex(var0.genres or {}[1])
   var698.items = var8.getGenreTypes()
   var698.fontSize = var6.FONT_SIZE_LARGE
   var698.onItemClicked = var0.onDropDownSelect
   var698.setDropdownHeight = var0.setDropdownHeight
   var698.LayoutOrder = 2
   var659.DropDown = var2.createElement(var4, var698)
   return var2.createElement("Frame", var647, var659)
end

fun10 = var9.withContext
local var711 = {}
var711.Stylizer = var9.Stylizer
local var715 = fun10(var711)(var10)
var10 = var715
var715 = var3.Wrappers.withForwardRef
var10 = var715(var10)
return var10
