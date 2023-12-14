-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var1.Framework)
local var4 = var3.ContextServices
local var5 = var3.UI.TextInput
local var6 = require(var0.Src.Util.Constants)
local var7 = var2.PureComponent:extend("ConfigTextField")
function var7.init(arg1, arg2)
   arg1.state = {}
   function arg1.onTextChanged(arg1)
      local var30 = {}
      var30.currentContent = arg1
      arg1:setState(var30)
      local var33 = arg1.props
      var33 = arg1
      var33.TextChangeCallBack(var33)
   end
   
end

local function fun2(arg1)
   local var0 = arg1.props
   local var1 = var0.TotalHeight
   local var2 = var0.MaxCount
   local var44 = arg1.state.currentContent
   local var49 = {}
   var49.Size = UDim2.new(1, 0, 0, var1)
   var49.BackgroundTransparency = 1
   var49.BorderSizePixel = 0
   var49.LayoutOrder = var0.LayoutOrder
   local var58 = {}
   local var62 = {}
   var62.FillDirection = Enum.FillDirection.Horizontal
   var62.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var62.VerticalAlignment = Enum.VerticalAlignment.Top
   var62.SortOrder = Enum.SortOrder.LayoutOrder
   var62.Padding = UDim.new(0, 0)
   var58.UIListLayout = var2.createElement("UIListLayout", var62)
   local var75 = {}
   var75.Size = UDim2.new(0, var6.TITLE_GUTTER_WIDTH, 1, 0)
   var75.BackgroundTransparency = 1
   var75.BorderSizePixel = 0
   var75.Text = var0.Title
   var75.TextXAlignment = Enum.TextXAlignment.Left
   var75.TextYAlignment = Enum.TextYAlignment.Top
   var75.TextSize = var6.FONT_SIZE_TITLE
   var75.TextColor3 = var0.Stylizer.publishAsset.titleTextColor
   var75.Font = var6.FONT
   var75.LayoutOrder = 1
   var58.Title = var2.createElement("TextLabel", var75)
   local var97 = {}
   var97.LayoutOrder = 2
   var97.MaxLength = var2
   if var2 > 50 then
      local var0 = false
   end
   var97.MultiLine = true
   var97.OnTextChanged = arg1.onTextChanged
   var97.Text = var0.TextContent
   var97.Size = UDim2.new(1, var6.TITLE_GUTTER_WIDTH, 0, var1 - 40 - 20)
   var58.TextField = var2.createElement(var5, var97)
   return var2.createElement("Frame", var49, var58)
end

function var7.render(arg1)
   local var0 = arg1.props
   local var1 = var0.TotalHeight
   local var2 = var0.MaxCount
   local var44 = arg1.state.currentContent
   local var49 = {}
   var49.Size = UDim2.new(1, 0, 0, var1)
   var49.BackgroundTransparency = 1
   var49.BorderSizePixel = 0
   var49.LayoutOrder = var0.LayoutOrder
   local var58 = {}
   local var62 = {}
   var62.FillDirection = Enum.FillDirection.Horizontal
   var62.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var62.VerticalAlignment = Enum.VerticalAlignment.Top
   var62.SortOrder = Enum.SortOrder.LayoutOrder
   var62.Padding = UDim.new(0, 0)
   var58.UIListLayout = var2.createElement("UIListLayout", var62)
   local var75 = {}
   var75.Size = UDim2.new(0, var6.TITLE_GUTTER_WIDTH, 1, 0)
   var75.BackgroundTransparency = 1
   var75.BorderSizePixel = 0
   var75.Text = var0.Title
   var75.TextXAlignment = Enum.TextXAlignment.Left
   var75.TextYAlignment = Enum.TextYAlignment.Top
   var75.TextSize = var6.FONT_SIZE_TITLE
   var75.TextColor3 = var0.Stylizer.publishAsset.titleTextColor
   var75.Font = var6.FONT
   var75.LayoutOrder = 1
   var58.Title = var2.createElement("TextLabel", var75)
   local var97 = {}
   var97.LayoutOrder = 2
   var97.MaxLength = var2
   if var2 > 50 then
      local var0 = false
   end
   var97.MultiLine = true
   var97.OnTextChanged = arg1.onTextChanged
   var97.Text = var0.TextContent
   var97.Size = UDim2.new(1, var6.TITLE_GUTTER_WIDTH, 0, var1 - 40 - 20)
   var58.TextField = var2.createElement(var5, var97)
   return var2.createElement("Frame", var49, var58)
end

fun2 = var4.withContext
local var114 = {}
var114.Stylizer = var4.Stylizer
var7 = fun2(var114)(var7)
return var7
