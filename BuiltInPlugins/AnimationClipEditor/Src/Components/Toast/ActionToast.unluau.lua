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
   local var190 = {}
   var190.Size = UDim2.new(0, var0.ButtonWidth or var4.PROMPT_BUTTON_SIZE.X, 0, var4.PROMPT_BUTTON_SIZE.Y)
   var190.LayoutOrder = arg2
   var190.Style = arg3.Style
   var190.Text = arg3.Text
   function var190.OnClick()
      var0.OnButtonClicked(arg3.Key)
   end
   
   return var3.createElement(var6, var190)
end

local function fun6(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var1.toastTheme
   local var3 = var4.PROMPT_BUTTON_SIZE.Y
   local var4 = var0.Text
   local var5 = {}
   local var232 = {}
   var232.SortOrder = Enum.SortOrder.LayoutOrder
   var232.FillDirection = Enum.FillDirection.Horizontal
   var232.HorizontalAlignment = Enum.HorizontalAlignment.Center
   local var239 = UDim.new(0, var4.PROMPT_BUTTON_PADDING)
   var232.Padding = var239
   var5.Layout = var3.createElement("UIListLayout", var232)
   local var243 = ipairs(var0.Buttons)
   local var244 = var5
   local var249 = arg1:renderButton(var239, var246, var2.textSize)
   table.insert()
   local var254 = {}
   var254.AnchorPoint = Vector2.new(1, 1)
   var249 = var1:GetTextSize(var4, var2.textSize, var1.font, var0).Y + var4.PROMPT_VERTICAL_PADDING * 3 + var3
   var254.Size = UDim2.new(0, 380, 0, var249)
   local var264 = {}
   local var268 = {}
   var268.PaddingTop = UDim.new(0, var4.PROMPT_VERTICAL_PADDING)
   var268.PaddingBottom = UDim.new(0, var4.PROMPT_VERTICAL_PADDING)
   var268.PaddingLeft = UDim.new(0, var4.PROMPT_HORIZONTAL_PADDING)
   var268.PaddingRight = UDim.new(0, var4.PROMPT_HORIZONTAL_PADDING)
   var264.Padding = var3.createElement("UIPadding", var268)
   local var293 = {}
   var293.Size = UDim2.new(1, 0, 1, 0)
   var293.BackgroundTransparency = 1
   var293.Text = var4
   var293.TextWrapped = true
   var293.TextXAlignment = Enum.TextXAlignment.Left
   var293.TextYAlignment = Enum.TextYAlignment.Top
   var293.TextSize = var2.textSize
   var293.TextColor3 = var2.textColor
   var293.Font = var1.font
   var264.Text = var3.createElement("TextLabel", var293)
   local var311 = {}
   var311.Size = UDim2.new(1, 0, 0, var3)
   var311.AnchorPoint = Vector2.new(0.5, 1)
   var311.Position = UDim2.new(0.5, 0, 1, 0)
   local var328 = 1
   var311.BackgroundTransparency = var328
   var328 = var5
   var264.Buttons = var3.createElement("Frame", var311, var328)
   return var3.createElement(var8, var254, var264)
end

function var9.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var1.toastTheme
   local var3 = var4.PROMPT_BUTTON_SIZE.Y
   local var4 = var0.Text
   local var5 = {}
   local var232 = {}
   var232.SortOrder = Enum.SortOrder.LayoutOrder
   var232.FillDirection = Enum.FillDirection.Horizontal
   var232.HorizontalAlignment = Enum.HorizontalAlignment.Center
   local var239 = UDim.new(0, var4.PROMPT_BUTTON_PADDING)
   var232.Padding = var239
   var5.Layout = var3.createElement("UIListLayout", var232)
   local var243 = ipairs(var0.Buttons)
   local var244 = var5
   local var249 = arg1:renderButton(var239, var246, var2.textSize)
   table.insert()
   local var254 = {}
   var254.AnchorPoint = Vector2.new(1, 1)
   var249 = var1:GetTextSize(var4, var2.textSize, var1.font, var0).Y + var4.PROMPT_VERTICAL_PADDING * 3 + var3
   var254.Size = UDim2.new(0, 380, 0, var249)
   local var264 = {}
   local var268 = {}
   var268.PaddingTop = UDim.new(0, var4.PROMPT_VERTICAL_PADDING)
   var268.PaddingBottom = UDim.new(0, var4.PROMPT_VERTICAL_PADDING)
   var268.PaddingLeft = UDim.new(0, var4.PROMPT_HORIZONTAL_PADDING)
   var268.PaddingRight = UDim.new(0, var4.PROMPT_HORIZONTAL_PADDING)
   var264.Padding = var3.createElement("UIPadding", var268)
   local var293 = {}
   var293.Size = UDim2.new(1, 0, 1, 0)
   var293.BackgroundTransparency = 1
   var293.Text = var4
   var293.TextWrapped = true
   var293.TextXAlignment = Enum.TextXAlignment.Left
   var293.TextYAlignment = Enum.TextYAlignment.Top
   var293.TextSize = var2.textSize
   var293.TextColor3 = var2.textColor
   var293.Font = var1.font
   var264.Text = var3.createElement("TextLabel", var293)
   local var311 = {}
   var311.Size = UDim2.new(1, 0, 0, var3)
   var311.AnchorPoint = Vector2.new(0.5, 1)
   var311.Position = UDim2.new(0.5, 0, 1, 0)
   local var328 = 1
   var311.BackgroundTransparency = var328
   var328 = var5
   var264.Buttons = var3.createElement("Frame", var311, var328)
   return var3.createElement(var8, var254, var264)
end

fun6 = var7.withContext
local var331 = {}
var331.Stylizer = var7.Stylizer
var9 = fun6(var331)(var9)
return var9
