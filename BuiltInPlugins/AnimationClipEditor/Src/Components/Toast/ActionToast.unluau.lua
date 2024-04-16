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
   local var186 = {}
   var186.Size = UDim2.new(0, var0.ButtonWidth or var4.PROMPT_BUTTON_SIZE.X, 0, var4.PROMPT_BUTTON_SIZE.Y)
   var186.LayoutOrder = arg2
   var186.Style = arg3.Style
   var186.Text = arg3.Text
   function var186.OnClick()
      var0.OnButtonClicked(arg3.Key)
   end
   
   return var3.createElement(var6, var186)
end

local function fun6(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var1.toastTheme
   local var3 = var4.PROMPT_BUTTON_SIZE.Y
   local var4 = var0.Text
   local var5 = {}
   local var228 = {}
   var228.SortOrder = Enum.SortOrder.LayoutOrder
   var228.FillDirection = Enum.FillDirection.Horizontal
   var228.HorizontalAlignment = Enum.HorizontalAlignment.Center
   local var235 = UDim.new(0, var4.PROMPT_BUTTON_PADDING)
   var228.Padding = var235
   var5.Layout = var3.createElement("UIListLayout", var228)
   local var239 = ipairs(var0.Buttons)
   local var240 = var5
   local var245 = arg1:renderButton(var235, var242, var2.textSize)
   table.insert()
   local var250 = {}
   var250.AnchorPoint = Vector2.new(1, 1)
   var245 = var1:GetTextSize(var4, var2.textSize, var1.font, var0).Y + var4.PROMPT_VERTICAL_PADDING * 3 + var3
   var250.Size = UDim2.new(0, 380, 0, var245)
   local var260 = {}
   local var264 = {}
   var264.PaddingTop = UDim.new(0, var4.PROMPT_VERTICAL_PADDING)
   var264.PaddingBottom = UDim.new(0, var4.PROMPT_VERTICAL_PADDING)
   var264.PaddingLeft = UDim.new(0, var4.PROMPT_HORIZONTAL_PADDING)
   var264.PaddingRight = UDim.new(0, var4.PROMPT_HORIZONTAL_PADDING)
   var260.Padding = var3.createElement("UIPadding", var264)
   local var289 = {}
   var289.Size = UDim2.new(1, 0, 1, 0)
   var289.BackgroundTransparency = 1
   var289.Text = var4
   var289.TextWrapped = true
   var289.TextXAlignment = Enum.TextXAlignment.Left
   var289.TextYAlignment = Enum.TextYAlignment.Top
   var289.TextSize = var2.textSize
   var289.TextColor3 = var2.textColor
   var289.Font = var1.font
   var260.Text = var3.createElement("TextLabel", var289)
   local var307 = {}
   var307.Size = UDim2.new(1, 0, 0, var3)
   var307.AnchorPoint = Vector2.new(0.5, 1)
   var307.Position = UDim2.new(0.5, 0, 1, 0)
   local var324 = 1
   var307.BackgroundTransparency = var324
   var324 = var5
   var260.Buttons = var3.createElement("Frame", var307, var324)
   return var3.createElement(var8, var250, var260)
end

function var9.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var1.toastTheme
   local var3 = var4.PROMPT_BUTTON_SIZE.Y
   local var4 = var0.Text
   local var5 = {}
   local var228 = {}
   var228.SortOrder = Enum.SortOrder.LayoutOrder
   var228.FillDirection = Enum.FillDirection.Horizontal
   var228.HorizontalAlignment = Enum.HorizontalAlignment.Center
   local var235 = UDim.new(0, var4.PROMPT_BUTTON_PADDING)
   var228.Padding = var235
   var5.Layout = var3.createElement("UIListLayout", var228)
   local var239 = ipairs(var0.Buttons)
   local var240 = var5
   local var245 = arg1:renderButton(var235, var242, var2.textSize)
   table.insert()
   local var250 = {}
   var250.AnchorPoint = Vector2.new(1, 1)
   var245 = var1:GetTextSize(var4, var2.textSize, var1.font, var0).Y + var4.PROMPT_VERTICAL_PADDING * 3 + var3
   var250.Size = UDim2.new(0, 380, 0, var245)
   local var260 = {}
   local var264 = {}
   var264.PaddingTop = UDim.new(0, var4.PROMPT_VERTICAL_PADDING)
   var264.PaddingBottom = UDim.new(0, var4.PROMPT_VERTICAL_PADDING)
   var264.PaddingLeft = UDim.new(0, var4.PROMPT_HORIZONTAL_PADDING)
   var264.PaddingRight = UDim.new(0, var4.PROMPT_HORIZONTAL_PADDING)
   var260.Padding = var3.createElement("UIPadding", var264)
   local var289 = {}
   var289.Size = UDim2.new(1, 0, 1, 0)
   var289.BackgroundTransparency = 1
   var289.Text = var4
   var289.TextWrapped = true
   var289.TextXAlignment = Enum.TextXAlignment.Left
   var289.TextYAlignment = Enum.TextYAlignment.Top
   var289.TextSize = var2.textSize
   var289.TextColor3 = var2.textColor
   var289.Font = var1.font
   var260.Text = var3.createElement("TextLabel", var289)
   local var307 = {}
   var307.Size = UDim2.new(1, 0, 0, var3)
   var307.AnchorPoint = Vector2.new(0.5, 1)
   var307.Position = UDim2.new(0.5, 0, 1, 0)
   local var324 = 1
   var307.BackgroundTransparency = var324
   var324 = var5
   var260.Buttons = var3.createElement("Frame", var307, var324)
   return var3.createElement(var8, var250, var260)
end

fun6 = var7.withContext
local var327 = {}
var327.Stylizer = var7.Stylizer
var9 = fun6(var327)(var9)
return var9
