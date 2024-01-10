-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = Vector2.new(340, 10000)
local var1 = game:GetService("TextService")
local var2 = script:FindFirstAncestor("AnimationClipEditor")
local var3 = require(var2.Packages.Roact)
local var4 = require(var2.Src.Util.Constants)
local var5 = require(var2.Packages.Framework)
local var6 = var5.UI.Button
local var7 = var5.ContextServices
local var8 = require(var2.Src.Components.Toast.BaseToast)
local var9 = var3.PureComponent:extend("ActionToast")
function var9.renderButton(arg1, arg2, arg3, arg4)
   local var0 = arg1.props
   local var259 = {}
   var259.Size = UDim2.new(0, var0.ButtonWidth or var4.PROMPT_BUTTON_SIZE.X, 0, var4.PROMPT_BUTTON_SIZE.Y)
   var259.LayoutOrder = arg2
   var259.Style = arg3.Style
   var259.Text = arg3.Text
   function var259.OnClick()
      var0.OnButtonClicked(arg3.Key)
   end
   
   return var3.createElement(var6, var259)
end

local function fun6(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var1.toastTheme
   local var3 = var4.PROMPT_BUTTON_SIZE.Y
   local var4 = var0.Text
   local var5 = {}
   local var301 = {}
   var301.SortOrder = Enum.SortOrder.LayoutOrder
   var301.FillDirection = Enum.FillDirection.Horizontal
   var301.HorizontalAlignment = Enum.HorizontalAlignment.Center
   local var308 = UDim.new(0, var4.PROMPT_BUTTON_PADDING)
   var301.Padding = var308
   var5.Layout = var3.createElement("UIListLayout", var301)
   local var312 = ipairs(var0.Buttons)
   local var313 = var5
   local var318 = arg1:renderButton(var308, var315, var2.textSize)
   table.insert()
   local var323 = {}
   var323.AnchorPoint = Vector2.new(1, 1)
   var318 = var1:GetTextSize(var4, var2.textSize, var1.font, var0).Y + var4.PROMPT_VERTICAL_PADDING * 3 + var3
   var323.Size = UDim2.new(0, 380, 0, var318)
   local var333 = {}
   local var337 = {}
   var337.PaddingTop = UDim.new(0, var4.PROMPT_VERTICAL_PADDING)
   var337.PaddingBottom = UDim.new(0, var4.PROMPT_VERTICAL_PADDING)
   var337.PaddingLeft = UDim.new(0, var4.PROMPT_HORIZONTAL_PADDING)
   var337.PaddingRight = UDim.new(0, var4.PROMPT_HORIZONTAL_PADDING)
   var333.Padding = var3.createElement("UIPadding", var337)
   local var362 = {}
   var362.Size = UDim2.new(1, 0, 1, 0)
   var362.BackgroundTransparency = 1
   var362.Text = var4
   var362.TextWrapped = true
   var362.TextXAlignment = Enum.TextXAlignment.Left
   var362.TextYAlignment = Enum.TextYAlignment.Top
   var362.TextSize = var2.textSize
   var362.TextColor3 = var2.textColor
   var362.Font = var1.font
   var333.Text = var3.createElement("TextLabel", var362)
   local var380 = {}
   var380.Size = UDim2.new(1, 0, 0, var3)
   var380.AnchorPoint = Vector2.new(0.5, 1)
   var380.Position = UDim2.new(0.5, 0, 1, 0)
   local var397 = 1
   var380.BackgroundTransparency = var397
   var397 = var5
   var333.Buttons = var3.createElement("Frame", var380, var397)
   return var3.createElement(var8, var323, var333)
end

function var9.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var1.toastTheme
   local var3 = var4.PROMPT_BUTTON_SIZE.Y
   local var4 = var0.Text
   local var5 = {}
   local var301 = {}
   var301.SortOrder = Enum.SortOrder.LayoutOrder
   var301.FillDirection = Enum.FillDirection.Horizontal
   var301.HorizontalAlignment = Enum.HorizontalAlignment.Center
   local var308 = UDim.new(0, var4.PROMPT_BUTTON_PADDING)
   var301.Padding = var308
   var5.Layout = var3.createElement("UIListLayout", var301)
   local var312 = ipairs(var0.Buttons)
   local var313 = var5
   local var318 = arg1:renderButton(var308, var315, var2.textSize)
   table.insert()
   local var323 = {}
   var323.AnchorPoint = Vector2.new(1, 1)
   var318 = var1:GetTextSize(var4, var2.textSize, var1.font, var0).Y + var4.PROMPT_VERTICAL_PADDING * 3 + var3
   var323.Size = UDim2.new(0, 380, 0, var318)
   local var333 = {}
   local var337 = {}
   var337.PaddingTop = UDim.new(0, var4.PROMPT_VERTICAL_PADDING)
   var337.PaddingBottom = UDim.new(0, var4.PROMPT_VERTICAL_PADDING)
   var337.PaddingLeft = UDim.new(0, var4.PROMPT_HORIZONTAL_PADDING)
   var337.PaddingRight = UDim.new(0, var4.PROMPT_HORIZONTAL_PADDING)
   var333.Padding = var3.createElement("UIPadding", var337)
   local var362 = {}
   var362.Size = UDim2.new(1, 0, 1, 0)
   var362.BackgroundTransparency = 1
   var362.Text = var4
   var362.TextWrapped = true
   var362.TextXAlignment = Enum.TextXAlignment.Left
   var362.TextYAlignment = Enum.TextYAlignment.Top
   var362.TextSize = var2.textSize
   var362.TextColor3 = var2.textColor
   var362.Font = var1.font
   var333.Text = var3.createElement("TextLabel", var362)
   local var380 = {}
   var380.Size = UDim2.new(1, 0, 0, var3)
   var380.AnchorPoint = Vector2.new(0.5, 1)
   var380.Position = UDim2.new(0.5, 0, 1, 0)
   local var397 = 1
   var380.BackgroundTransparency = var397
   var397 = var5
   var333.Buttons = var3.createElement("Frame", var380, var397)
   return var3.createElement(var8, var323, var333)
end

fun6 = var7.withContext
local var400 = {}
var400.Stylizer = var7.Stylizer
var9 = fun6(var400)(var9)
return var9
