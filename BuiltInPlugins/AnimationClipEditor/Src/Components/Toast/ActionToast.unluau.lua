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
   local var217 = {}
   var217.Size = UDim2.new(0, var0.ButtonWidth or var4.PROMPT_BUTTON_SIZE.X, 0, var4.PROMPT_BUTTON_SIZE.Y)
   var217.LayoutOrder = arg2
   var217.Style = arg3.Style
   var217.Text = arg3.Text
   function var217.OnClick()
      var0.OnButtonClicked(arg3.Key)
   end
   
   return var3.createElement(var6, var217)
end

local function fun6(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var1.toastTheme
   local var3 = var4.PROMPT_BUTTON_SIZE.Y
   local var4 = var0.Text
   local var5 = {}
   local var259 = {}
   var259.SortOrder = Enum.SortOrder.LayoutOrder
   var259.FillDirection = Enum.FillDirection.Horizontal
   var259.HorizontalAlignment = Enum.HorizontalAlignment.Center
   local var266 = UDim.new(0, var4.PROMPT_BUTTON_PADDING)
   var259.Padding = var266
   var5.Layout = var3.createElement("UIListLayout", var259)
   local var270 = ipairs(var0.Buttons)
   local var271 = var5
   local var276 = arg1:renderButton(var266, var273, var2.textSize)
   table.insert()
   local var281 = {}
   var281.AnchorPoint = Vector2.new(1, 1)
   var276 = var1:GetTextSize(var4, var2.textSize, var1.font, var0).Y + var4.PROMPT_VERTICAL_PADDING * 3 + var3
   var281.Size = UDim2.new(0, 380, 0, var276)
   local var291 = {}
   local var295 = {}
   var295.PaddingTop = UDim.new(0, var4.PROMPT_VERTICAL_PADDING)
   var295.PaddingBottom = UDim.new(0, var4.PROMPT_VERTICAL_PADDING)
   var295.PaddingLeft = UDim.new(0, var4.PROMPT_HORIZONTAL_PADDING)
   var295.PaddingRight = UDim.new(0, var4.PROMPT_HORIZONTAL_PADDING)
   var291.Padding = var3.createElement("UIPadding", var295)
   local var320 = {}
   var320.Size = UDim2.new(1, 0, 1, 0)
   var320.BackgroundTransparency = 1
   var320.Text = var4
   var320.TextWrapped = true
   var320.TextXAlignment = Enum.TextXAlignment.Left
   var320.TextYAlignment = Enum.TextYAlignment.Top
   var320.TextSize = var2.textSize
   var320.TextColor3 = var2.textColor
   var320.Font = var1.font
   var291.Text = var3.createElement("TextLabel", var320)
   local var338 = {}
   var338.Size = UDim2.new(1, 0, 0, var3)
   var338.AnchorPoint = Vector2.new(0.5, 1)
   var338.Position = UDim2.new(0.5, 0, 1, 0)
   local var355 = 1
   var338.BackgroundTransparency = var355
   var355 = var5
   var291.Buttons = var3.createElement("Frame", var338, var355)
   return var3.createElement(var8, var281, var291)
end

function var9.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var1.toastTheme
   local var3 = var4.PROMPT_BUTTON_SIZE.Y
   local var4 = var0.Text
   local var5 = {}
   local var259 = {}
   var259.SortOrder = Enum.SortOrder.LayoutOrder
   var259.FillDirection = Enum.FillDirection.Horizontal
   var259.HorizontalAlignment = Enum.HorizontalAlignment.Center
   local var266 = UDim.new(0, var4.PROMPT_BUTTON_PADDING)
   var259.Padding = var266
   var5.Layout = var3.createElement("UIListLayout", var259)
   local var270 = ipairs(var0.Buttons)
   local var271 = var5
   local var276 = arg1:renderButton(var266, var273, var2.textSize)
   table.insert()
   local var281 = {}
   var281.AnchorPoint = Vector2.new(1, 1)
   var276 = var1:GetTextSize(var4, var2.textSize, var1.font, var0).Y + var4.PROMPT_VERTICAL_PADDING * 3 + var3
   var281.Size = UDim2.new(0, 380, 0, var276)
   local var291 = {}
   local var295 = {}
   var295.PaddingTop = UDim.new(0, var4.PROMPT_VERTICAL_PADDING)
   var295.PaddingBottom = UDim.new(0, var4.PROMPT_VERTICAL_PADDING)
   var295.PaddingLeft = UDim.new(0, var4.PROMPT_HORIZONTAL_PADDING)
   var295.PaddingRight = UDim.new(0, var4.PROMPT_HORIZONTAL_PADDING)
   var291.Padding = var3.createElement("UIPadding", var295)
   local var320 = {}
   var320.Size = UDim2.new(1, 0, 1, 0)
   var320.BackgroundTransparency = 1
   var320.Text = var4
   var320.TextWrapped = true
   var320.TextXAlignment = Enum.TextXAlignment.Left
   var320.TextYAlignment = Enum.TextYAlignment.Top
   var320.TextSize = var2.textSize
   var320.TextColor3 = var2.textColor
   var320.Font = var1.font
   var291.Text = var3.createElement("TextLabel", var320)
   local var338 = {}
   var338.Size = UDim2.new(1, 0, 0, var3)
   var338.AnchorPoint = Vector2.new(0.5, 1)
   var338.Position = UDim2.new(0.5, 0, 1, 0)
   local var355 = 1
   var338.BackgroundTransparency = var355
   var355 = var5
   var291.Buttons = var3.createElement("Frame", var338, var355)
   return var3.createElement(var8, var281, var291)
end

fun6 = var7.withContext
local var358 = {}
var358.Stylizer = var7.Stylizer
var9 = fun6(var358)(var9)
return var9
