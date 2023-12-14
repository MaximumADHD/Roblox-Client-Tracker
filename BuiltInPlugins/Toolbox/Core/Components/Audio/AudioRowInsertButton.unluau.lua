-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var0.Core.Util.Constants)
local var4 = require(var1.Framework).ContextServices
local var5 = var2.PureComponent:extend("AudioRowInsertButtonMetadata")
local function fun0(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer.itemRow
   local var32 = {}
   var32.Size = UDim2.new(0, 50, 1, 0)
   var32.LayoutOrder = var0.LayoutOrder
   var32.BackgroundTransparency = 1
   local var40 = {}
   local var44 = {}
   var44.FillDirection = Enum.FillDirection.Vertical
   var44.SortOrder = Enum.SortOrder.LayoutOrder
   var44.VerticalAlignment = Enum.VerticalAlignment.Center
   var40.Layout = var2.createElement("UIListLayout", var44)
   local var52 = {}
   var52.TextColor3 = var1.insertButtonTextColor
   var52.Font = var3.FONT
   var52.TextSize = 15
   var52.Text = var0.Localization:getText("Common", "Insert")
   var52.Size = UDim2.new(1, 0, 0, 20)
   var52.BackgroundColor3 = var1.insertButtonColor
   var2.Event.MouseButton1Click = var0.OnClick
   local var71 = {}
   local var75 = {}
   var75.CornerRadius = UDim.new(0, 5)
   var71.UICorner = var2.createElement("UICorner", var75)
   var40.Button = var2.createElement("TextButton", var52, var71)
   return var2.createElement("Frame", var32, var40)
end

function var5.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer.itemRow
   local var32 = {}
   var32.Size = UDim2.new(0, 50, 1, 0)
   var32.LayoutOrder = var0.LayoutOrder
   var32.BackgroundTransparency = 1
   local var40 = {}
   local var44 = {}
   var44.FillDirection = Enum.FillDirection.Vertical
   var44.SortOrder = Enum.SortOrder.LayoutOrder
   var44.VerticalAlignment = Enum.VerticalAlignment.Center
   var40.Layout = var2.createElement("UIListLayout", var44)
   local var52 = {}
   var52.TextColor3 = var1.insertButtonTextColor
   var52.Font = var3.FONT
   var52.TextSize = 15
   var52.Text = var0.Localization:getText("Common", "Insert")
   var52.Size = UDim2.new(1, 0, 0, 20)
   var52.BackgroundColor3 = var1.insertButtonColor
   var2.Event.MouseButton1Click = var0.OnClick
   local var71 = {}
   local var75 = {}
   var75.CornerRadius = UDim.new(0, 5)
   var71.UICorner = var2.createElement("UICorner", var75)
   var40.Button = var2.createElement("TextButton", var52, var71)
   return var2.createElement("Frame", var32, var40)
end

fun0 = var4.withContext
local var83 = {}
var83.Localization = var4.Localization
var83.Stylizer = var4.Stylizer
var5 = fun0(var83)(var5)
return var5
