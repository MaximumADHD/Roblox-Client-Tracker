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
   local var315 = {}
   var315.Size = UDim2.new(0, var0.ButtonWidth or var4.PROMPT_BUTTON_SIZE.X, 0, var4.PROMPT_BUTTON_SIZE.Y)
   var315.LayoutOrder = arg2
   var315.Style = arg3.Style
   var315.Text = arg3.Text
   function var315.OnClick()
      var0.OnButtonClicked(arg3.Key)
   end
   
   return var3.createElement(var6, var315)
end

local function fun6(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var1.toastTheme
   local var3 = var4.PROMPT_BUTTON_SIZE.Y
   local var4 = var0.Text
   local var5 = {}
   local var357 = {}
   var357.SortOrder = Enum.SortOrder.LayoutOrder
   var357.FillDirection = Enum.FillDirection.Horizontal
   var357.HorizontalAlignment = Enum.HorizontalAlignment.Center
   local var364 = UDim.new(0, var4.PROMPT_BUTTON_PADDING)
   var357.Padding = var364
   var5.Layout = var3.createElement("UIListLayout", var357)
   local var368 = ipairs(var0.Buttons)
   local var369 = var5
   local var374 = arg1:renderButton(var364, var371, var2.textSize)
   table.insert()
   local var379 = {}
   var379.AnchorPoint = Vector2.new(1, 1)
   var374 = var1:GetTextSize(var4, var2.textSize, var1.font, var0).Y + var4.PROMPT_VERTICAL_PADDING * 3 + var3
   var379.Size = UDim2.new(0, 380, 0, var374)
   local var389 = {}
   local var393 = {}
   var393.PaddingTop = UDim.new(0, var4.PROMPT_VERTICAL_PADDING)
   var393.PaddingBottom = UDim.new(0, var4.PROMPT_VERTICAL_PADDING)
   var393.PaddingLeft = UDim.new(0, var4.PROMPT_HORIZONTAL_PADDING)
   var393.PaddingRight = UDim.new(0, var4.PROMPT_HORIZONTAL_PADDING)
   var389.Padding = var3.createElement("UIPadding", var393)
   local var418 = {}
   var418.Size = UDim2.new(1, 0, 1, 0)
   var418.BackgroundTransparency = 1
   var418.Text = var4
   var418.TextWrapped = true
   var418.TextXAlignment = Enum.TextXAlignment.Left
   var418.TextYAlignment = Enum.TextYAlignment.Top
   var418.TextSize = var2.textSize
   var418.TextColor3 = var2.textColor
   var418.Font = var1.font
   var389.Text = var3.createElement("TextLabel", var418)
   local var436 = {}
   var436.Size = UDim2.new(1, 0, 0, var3)
   var436.AnchorPoint = Vector2.new(0.5, 1)
   var436.Position = UDim2.new(0.5, 0, 1, 0)
   local var453 = 1
   var436.BackgroundTransparency = var453
   var453 = var5
   var389.Buttons = var3.createElement("Frame", var436, var453)
   return var3.createElement(var8, var379, var389)
end

function var9.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var1.toastTheme
   local var3 = var4.PROMPT_BUTTON_SIZE.Y
   local var4 = var0.Text
   local var5 = {}
   local var357 = {}
   var357.SortOrder = Enum.SortOrder.LayoutOrder
   var357.FillDirection = Enum.FillDirection.Horizontal
   var357.HorizontalAlignment = Enum.HorizontalAlignment.Center
   local var364 = UDim.new(0, var4.PROMPT_BUTTON_PADDING)
   var357.Padding = var364
   var5.Layout = var3.createElement("UIListLayout", var357)
   local var368 = ipairs(var0.Buttons)
   local var369 = var5
   local var374 = arg1:renderButton(var364, var371, var2.textSize)
   table.insert()
   local var379 = {}
   var379.AnchorPoint = Vector2.new(1, 1)
   var374 = var1:GetTextSize(var4, var2.textSize, var1.font, var0).Y + var4.PROMPT_VERTICAL_PADDING * 3 + var3
   var379.Size = UDim2.new(0, 380, 0, var374)
   local var389 = {}
   local var393 = {}
   var393.PaddingTop = UDim.new(0, var4.PROMPT_VERTICAL_PADDING)
   var393.PaddingBottom = UDim.new(0, var4.PROMPT_VERTICAL_PADDING)
   var393.PaddingLeft = UDim.new(0, var4.PROMPT_HORIZONTAL_PADDING)
   var393.PaddingRight = UDim.new(0, var4.PROMPT_HORIZONTAL_PADDING)
   var389.Padding = var3.createElement("UIPadding", var393)
   local var418 = {}
   var418.Size = UDim2.new(1, 0, 1, 0)
   var418.BackgroundTransparency = 1
   var418.Text = var4
   var418.TextWrapped = true
   var418.TextXAlignment = Enum.TextXAlignment.Left
   var418.TextYAlignment = Enum.TextYAlignment.Top
   var418.TextSize = var2.textSize
   var418.TextColor3 = var2.textColor
   var418.Font = var1.font
   var389.Text = var3.createElement("TextLabel", var418)
   local var436 = {}
   var436.Size = UDim2.new(1, 0, 0, var3)
   var436.AnchorPoint = Vector2.new(0.5, 1)
   var436.Position = UDim2.new(0.5, 0, 1, 0)
   local var453 = 1
   var436.BackgroundTransparency = var453
   var453 = var5
   var389.Buttons = var3.createElement("Frame", var436, var453)
   return var3.createElement(var8, var379, var389)
end

fun6 = var7.withContext
local var456 = {}
var456.Stylizer = var7.Stylizer
var9 = fun6(var456)(var9)
return var9
