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
   local var55 = {}
   var55.Size = UDim2.new(0, var0.ButtonWidth or var4.PROMPT_BUTTON_SIZE.X, 0, var4.PROMPT_BUTTON_SIZE.Y)
   var55.LayoutOrder = arg2
   var55.Style = arg3.Style
   var55.Text = arg3.Text
   function var55.OnClick()
      var0.OnButtonClicked(arg3.Key)
   end
   
   return var3.createElement(var6, var55)
end

local function fun2(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var1.toastTheme
   local var3 = var4.PROMPT_BUTTON_SIZE.Y
   local var4 = var0.Text
   local var5 = {}
   local var97 = {}
   var97.SortOrder = Enum.SortOrder.LayoutOrder
   var97.FillDirection = Enum.FillDirection.Horizontal
   var97.HorizontalAlignment = Enum.HorizontalAlignment.Center
   local var104 = UDim.new(0, var4.PROMPT_BUTTON_PADDING)
   var97.Padding = var104
   var5.Layout = var3.createElement("UIListLayout", var97)
   local var108 = ipairs(var0.Buttons)
   local var109 = var5
   local var114 = arg1:renderButton(var104, var111, var2.textSize)
   table.insert()
   local var119 = {}
   var119.AnchorPoint = Vector2.new(1, 1)
   var114 = var1:GetTextSize(var4, var2.textSize, var1.font, var0).Y + var4.PROMPT_VERTICAL_PADDING * 3 + var3
   var119.Size = UDim2.new(0, 380, 0, var114)
   local var129 = {}
   local var133 = {}
   var133.PaddingTop = UDim.new(0, var4.PROMPT_VERTICAL_PADDING)
   var133.PaddingBottom = UDim.new(0, var4.PROMPT_VERTICAL_PADDING)
   var133.PaddingLeft = UDim.new(0, var4.PROMPT_HORIZONTAL_PADDING)
   var133.PaddingRight = UDim.new(0, var4.PROMPT_HORIZONTAL_PADDING)
   var129.Padding = var3.createElement("UIPadding", var133)
   local var158 = {}
   var158.Size = UDim2.new(1, 0, 1, 0)
   var158.BackgroundTransparency = 1
   var158.Text = var4
   var158.TextWrapped = true
   var158.TextXAlignment = Enum.TextXAlignment.Left
   var158.TextYAlignment = Enum.TextYAlignment.Top
   var158.TextSize = var2.textSize
   var158.TextColor3 = var2.textColor
   var158.Font = var1.font
   var129.Text = var3.createElement("TextLabel", var158)
   local var176 = {}
   var176.Size = UDim2.new(1, 0, 0, var3)
   var176.AnchorPoint = Vector2.new(0.5, 1)
   var176.Position = UDim2.new(0.5, 0, 1, 0)
   local var193 = 1
   var176.BackgroundTransparency = var193
   var193 = var5
   var129.Buttons = var3.createElement("Frame", var176, var193)
   return var3.createElement(var8, var119, var129)
end

function var9.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var1.toastTheme
   local var3 = var4.PROMPT_BUTTON_SIZE.Y
   local var4 = var0.Text
   local var5 = {}
   local var97 = {}
   var97.SortOrder = Enum.SortOrder.LayoutOrder
   var97.FillDirection = Enum.FillDirection.Horizontal
   var97.HorizontalAlignment = Enum.HorizontalAlignment.Center
   local var104 = UDim.new(0, var4.PROMPT_BUTTON_PADDING)
   var97.Padding = var104
   var5.Layout = var3.createElement("UIListLayout", var97)
   local var108 = ipairs(var0.Buttons)
   local var109 = var5
   local var114 = arg1:renderButton(var104, var111, var2.textSize)
   table.insert()
   local var119 = {}
   var119.AnchorPoint = Vector2.new(1, 1)
   var114 = var1:GetTextSize(var4, var2.textSize, var1.font, var0).Y + var4.PROMPT_VERTICAL_PADDING * 3 + var3
   var119.Size = UDim2.new(0, 380, 0, var114)
   local var129 = {}
   local var133 = {}
   var133.PaddingTop = UDim.new(0, var4.PROMPT_VERTICAL_PADDING)
   var133.PaddingBottom = UDim.new(0, var4.PROMPT_VERTICAL_PADDING)
   var133.PaddingLeft = UDim.new(0, var4.PROMPT_HORIZONTAL_PADDING)
   var133.PaddingRight = UDim.new(0, var4.PROMPT_HORIZONTAL_PADDING)
   var129.Padding = var3.createElement("UIPadding", var133)
   local var158 = {}
   var158.Size = UDim2.new(1, 0, 1, 0)
   var158.BackgroundTransparency = 1
   var158.Text = var4
   var158.TextWrapped = true
   var158.TextXAlignment = Enum.TextXAlignment.Left
   var158.TextYAlignment = Enum.TextYAlignment.Top
   var158.TextSize = var2.textSize
   var158.TextColor3 = var2.textColor
   var158.Font = var1.font
   var129.Text = var3.createElement("TextLabel", var158)
   local var176 = {}
   var176.Size = UDim2.new(1, 0, 0, var3)
   var176.AnchorPoint = Vector2.new(0.5, 1)
   var176.Position = UDim2.new(0.5, 0, 1, 0)
   local var193 = 1
   var176.BackgroundTransparency = var193
   var193 = var5
   var129.Buttons = var3.createElement("Frame", var176, var193)
   return var3.createElement(var8, var119, var129)
end

fun2 = var7.withContext
local var196 = {}
var196.Stylizer = var7.Stylizer
var9 = fun2(var196)(var9)
return var9
