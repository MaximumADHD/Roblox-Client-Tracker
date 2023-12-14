-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = require(var0.Src.Components.ConvertToPackageWindow.AssetThumbnailPreview)
local var4 = require(var0.Src.Util.LayoutOrderIterator)
local var5 = var1.PureComponent:extend("PreviewArea")
local function fun0(arg1)
   local var0 = arg1.props
   local var42 = {}
   var42.Size = UDim2.new(0, var0.TotalWidth, 1, 0)
   var42.BackgroundTransparency = 0
   var42.BackgroundColor3 = var0.Stylizer.previewArea.backgroundColor
   var42.BorderSizePixel = 0
   var42.LayoutOrder = var0.LayoutOrder
   local var52 = {}
   local var56 = {}
   var56.PaddingTop = UDim.new(0, 24)
   var56.PaddingBottom = UDim.new(0, 5)
   var56.PaddingLeft = UDim.new(0, 5)
   var56.PaddingRight = UDim.new(0, 5)
   var52.Padding = var1.createElement("UIPadding", var56)
   local var77 = {}
   var77.FillDirection = Enum.FillDirection.Vertical
   var77.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var77.VerticalAlignment = Enum.VerticalAlignment.Top
   var77.SortOrder = Enum.SortOrder.LayoutOrder
   var77.Padding = UDim.new(0, 20)
   var52.UIListLayout = var1.createElement("UIListLayout", var77)
   local var90 = {}
   var90.Size = UDim2.new(0, 150, 0, 150)
   var90.ShowTitle = false
   var90.LayoutOrder = var4.new():getNextOrder()
   var52.AssetThumbnailPreview = var1.createElement(var3, var90)
   return var1.createElement("Frame", var42, var52)
end

function var5.render(arg1)
   local var0 = arg1.props
   local var42 = {}
   var42.Size = UDim2.new(0, var0.TotalWidth, 1, 0)
   var42.BackgroundTransparency = 0
   var42.BackgroundColor3 = var0.Stylizer.previewArea.backgroundColor
   var42.BorderSizePixel = 0
   var42.LayoutOrder = var0.LayoutOrder
   local var52 = {}
   local var56 = {}
   var56.PaddingTop = UDim.new(0, 24)
   var56.PaddingBottom = UDim.new(0, 5)
   var56.PaddingLeft = UDim.new(0, 5)
   var56.PaddingRight = UDim.new(0, 5)
   var52.Padding = var1.createElement("UIPadding", var56)
   local var77 = {}
   var77.FillDirection = Enum.FillDirection.Vertical
   var77.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var77.VerticalAlignment = Enum.VerticalAlignment.Top
   var77.SortOrder = Enum.SortOrder.LayoutOrder
   var77.Padding = UDim.new(0, 20)
   var52.UIListLayout = var1.createElement("UIListLayout", var77)
   local var90 = {}
   var90.Size = UDim2.new(0, 150, 0, 150)
   var90.ShowTitle = false
   var90.LayoutOrder = var4.new():getNextOrder()
   var52.AssetThumbnailPreview = var1.createElement(var3, var90)
   return var1.createElement("Frame", var42, var52)
end

fun0 = var2.withContext
local var102 = {}
var102.Stylizer = var2.Stylizer
var5 = fun0(var102)(var5)
return var5
