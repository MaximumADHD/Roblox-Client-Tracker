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
   local var58 = {}
   var58.Size = UDim2.new(0, var0.ButtonWidth or var4.PROMPT_BUTTON_SIZE.X, 0, var4.PROMPT_BUTTON_SIZE.Y)
   var58.LayoutOrder = arg2
   var58.Style = arg3.Style
   var58.Text = arg3.Text
   function var58.OnClick()
      var0.OnButtonClicked(arg3.Key)
   end
   
   return var3.createElement(var6, var58)
end

local function fun2(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var1.toastTheme
   local var3 = var4.PROMPT_BUTTON_SIZE.Y
   local var4 = var0.Text
   local var5 = {}
   local var29 = {}
   var29.SortOrder = Enum.SortOrder.LayoutOrder
   var29.FillDirection = Enum.FillDirection.Horizontal
   var29.HorizontalAlignment = Enum.HorizontalAlignment.Center
   local var36 = UDim.new(0, var4.PROMPT_BUTTON_PADDING)
   var29.Padding = var36
   var5.Layout = var3.createElement("UIListLayout", var29)
   local var40 = ipairs(var0.Buttons)
   local var41 = var5
   local var46 = arg1:renderButton(var36, var43, var2.textSize)
   table.insert()
   local var51 = {}
   var51.AnchorPoint = Vector2.new(1, 1)
   var46 = var1:GetTextSize(var4, var2.textSize, var1.font, var0).Y + var4.PROMPT_VERTICAL_PADDING * 3 + var3
   var51.Size = UDim2.new(0, 380, 0, var46)
   local var61 = {}
   local var65 = {}
   var65.PaddingTop = UDim.new(0, var4.PROMPT_VERTICAL_PADDING)
   var65.PaddingBottom = UDim.new(0, var4.PROMPT_VERTICAL_PADDING)
   var65.PaddingLeft = UDim.new(0, var4.PROMPT_HORIZONTAL_PADDING)
   var65.PaddingRight = UDim.new(0, var4.PROMPT_HORIZONTAL_PADDING)
   var61.Padding = var3.createElement("UIPadding", var65)
   local var90 = {}
   var90.Size = UDim2.new(1, 0, 1, 0)
   var90.BackgroundTransparency = 1
   var90.Text = var4
   var90.TextWrapped = true
   var90.TextXAlignment = Enum.TextXAlignment.Left
   var90.TextYAlignment = Enum.TextYAlignment.Top
   var90.TextSize = var2.textSize
   var90.TextColor3 = var2.textColor
   var90.Font = var1.font
   var61.Text = var3.createElement("TextLabel", var90)
   local var108 = {}
   var108.Size = UDim2.new(1, 0, 0, var3)
   var108.AnchorPoint = Vector2.new(0.5, 1)
   var108.Position = UDim2.new(0.5, 0, 1, 0)
   local var125 = 1
   var108.BackgroundTransparency = var125
   var125 = var5
   var61.Buttons = var3.createElement("Frame", var108, var125)
   return var3.createElement(var8, var51, var61)
end

function var9.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var1.toastTheme
   local var3 = var4.PROMPT_BUTTON_SIZE.Y
   local var4 = var0.Text
   local var5 = {}
   local var29 = {}
   var29.SortOrder = Enum.SortOrder.LayoutOrder
   var29.FillDirection = Enum.FillDirection.Horizontal
   var29.HorizontalAlignment = Enum.HorizontalAlignment.Center
   local var36 = UDim.new(0, var4.PROMPT_BUTTON_PADDING)
   var29.Padding = var36
   var5.Layout = var3.createElement("UIListLayout", var29)
   local var40 = ipairs(var0.Buttons)
   local var41 = var5
   local var46 = arg1:renderButton(var36, var43, var2.textSize)
   table.insert()
   local var51 = {}
   var51.AnchorPoint = Vector2.new(1, 1)
   var46 = var1:GetTextSize(var4, var2.textSize, var1.font, var0).Y + var4.PROMPT_VERTICAL_PADDING * 3 + var3
   var51.Size = UDim2.new(0, 380, 0, var46)
   local var61 = {}
   local var65 = {}
   var65.PaddingTop = UDim.new(0, var4.PROMPT_VERTICAL_PADDING)
   var65.PaddingBottom = UDim.new(0, var4.PROMPT_VERTICAL_PADDING)
   var65.PaddingLeft = UDim.new(0, var4.PROMPT_HORIZONTAL_PADDING)
   var65.PaddingRight = UDim.new(0, var4.PROMPT_HORIZONTAL_PADDING)
   var61.Padding = var3.createElement("UIPadding", var65)
   local var90 = {}
   var90.Size = UDim2.new(1, 0, 1, 0)
   var90.BackgroundTransparency = 1
   var90.Text = var4
   var90.TextWrapped = true
   var90.TextXAlignment = Enum.TextXAlignment.Left
   var90.TextYAlignment = Enum.TextYAlignment.Top
   var90.TextSize = var2.textSize
   var90.TextColor3 = var2.textColor
   var90.Font = var1.font
   var61.Text = var3.createElement("TextLabel", var90)
   local var108 = {}
   var108.Size = UDim2.new(1, 0, 0, var3)
   var108.AnchorPoint = Vector2.new(0.5, 1)
   var108.Position = UDim2.new(0.5, 0, 1, 0)
   local var125 = 1
   var108.BackgroundTransparency = var125
   var125 = var5
   var61.Buttons = var3.createElement("Frame", var108, var125)
   return var3.createElement(var8, var51, var61)
end

fun2 = var7.withContext
local var128 = {}
var128.Stylizer = var7.Stylizer
var9 = fun2(var128)(var9)
return var9
