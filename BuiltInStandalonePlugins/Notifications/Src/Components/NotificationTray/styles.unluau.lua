-- Generated with Unluau (https://github.com/valencefun/unluau)
local var46 = require(script.Parent.Parent.Parent.Parent.Packages.Framework).Styling
local var1 = var46.createStyleRule
var46 = var1
local var49 = {}
var49.Size = UDim2.new(1, 0, 1, 0)
var49.BackgroundColor3 = "$BackgroundPaper"
var49.BorderSizePixel = 0
local var61 = {}
var61.Size = UDim2.new(1, 65532, 1, 65498)
var61.Position = UDim2.new(0, 0, 0, 38)
var61.CanvasSize = UDim2.new(1, 65532, 1, 65498)
var61.AutomaticCanvasSize = Enum.AutomaticSize.Y
var61.BackgroundTransparency = 1
var61.BorderSizePixel = 0
var61.ScrollBarThickness = 6
var61.ScrollBarImageColor3 = "$NotificationScrollBarColor"
var61.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar
var61.ScrollingDirection = Enum.ScrollingDirection.Y
local var90 = {}
var90.FillDirection = Enum.FillDirection.Vertical
var90.HorizontalAlignment = Enum.HorizontalAlignment.Left
var90.SortOrder = Enum.SortOrder.LayoutOrder
var90.VerticalAlignment = Enum.VerticalAlignment.Top
var90.Padding = UDim.new(0, 4)
local var99 = var1("::UIListLayout", var90)
local var2 = var1(">> .Component-NotificationTrayScrollingFrame", var61, {})
local var103 = {}
var103.Size = UDim2.new(1, 0, 0, 0)
var103.AutomaticSize = Enum.AutomaticSize.Y
var103.BackgroundTransparency = 1
local var115 = {}
var115.PaddingTop = UDim.new(0, 12)
var115.PaddingBottom = UDim.new(0, 12)
local var3 = var1("::UIPadding", var115)
local var4 = var1(">> .Component-NotificationTrayLoading", var103, {})
return var46(".Component-NotificationTray", var49, {})
