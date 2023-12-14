-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("TextService")
local var1 = script.Parent.Parent.Parent.Parent
local var2 = require(var1.Packages.Roact)
local var3 = require(var1.Packages.Cryo)
local var4 = require(var1.Packages.Framework)
local var5 = var4.ContextServices
local var6 = var4.UI
local var7 = var6.Button
local var8 = var6.Container
local var9 = var6.HoverArea
local var10 = var2.Component:extend(script.Name)
function var10.init(arg1)
   arg1.failurePageRef = var2.createRef()
end

local function fun2(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.Localization
   local var3 = var0.OnRetry
   local var4 = var2:getText("General", "SettingsFailedToLoad")
   local var5 = var2:getText("General", "ButtonRetry")
   if arg1.failurePageRef:getValue() then
      local var0 = arg1.failurePageRef:getValue().AbsoluteSize.X - var1.settingsPage.failLabelPaddingX or ∞
   end
   local var64 = var4
   local var68 = var1.fontStyle
   local var70 = var68.Normal.Font
   var68 = ∞
   local var73 = Vector2.new(var68, ∞)
   local var8 = var0:GetTextSize()
   var1.fontStyle.Normal.TextSize = var5
   local var79 = var1.fontStyle.Normal.TextSize
   local var82 = var1.fontStyle.Normal.Font
   local var86 = Vector2.new(∞, ∞)
   local var10 = var0:GetTextSize()
   var2.Ref = arg1.failurePageRef
   local var96 = {}
   local var100 = {}
   var100.SortOrder = Enum.SortOrder.LayoutOrder
   var100.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var100.VerticalAlignment = Enum.VerticalAlignment.Center
   var100.FillDirection = Enum.FillDirection.Vertical
   var100.Padding = UDim.new(0, var1.settingsPage.failPageListPaddingY)
   var96.Layout = var2.createElement("UIListLayout", var100)
   local var119 = {}
   var119.LayoutOrder = 1
   var119.Text = var4
   var119.Size = UDim2.fromOffset(var8.X, var8.Y)
   var119.BackgroundTransparency = 1
   local var127 = {}
   local var131 = {}
   var131.PaddingLeft = UDim.new(0, var1.settingsPage.failLabelPaddingX / 2)
   var131.PaddingRight = UDim.new(0, var1.settingsPage.failLabelPaddingX / 2)
   var127.Padding = var2.createElement("UIPadding", var131)
   var96.Label = var2.createElement("TextLabel", var3.Dictionary.join(var1.fontStyle.Normal, var119), var127)
   local var149 = {}
   var149.LayoutOrder = 2
   var149.Style = "GameSettingsPrimaryButton"
   var149.Text = var5
   var149.Size = UDim2.new(0, var10.X + var1.settingsPage.reloadButton.paddingX, 0, var10.Y + var1.settingsPage.reloadButton.paddingY)
   function var149.OnClick(arg1)
      arg1.failurePageRef = var2.createRef()
   end
   
   local var174 = {}
   var174.Cursor = "PointingHand"
   local var12 = var2.createElement(var9, var174)
   var96.PublishButton = var2.createElement(var7, var149, {})
   return var2.createElement(var8, {}, var96)
end

function var10.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.Localization
   local var3 = var0.OnRetry
   local var4 = var2:getText("General", "SettingsFailedToLoad")
   local var5 = var2:getText("General", "ButtonRetry")
   if arg1.failurePageRef:getValue() then
      local var0 = arg1.failurePageRef:getValue().AbsoluteSize.X - var1.settingsPage.failLabelPaddingX or ∞
   end
   local var64 = var4
   local var68 = var1.fontStyle
   local var70 = var68.Normal.Font
   var68 = ∞
   local var73 = Vector2.new(var68, ∞)
   local var8 = var0:GetTextSize()
   var1.fontStyle.Normal.TextSize = var5
   local var79 = var1.fontStyle.Normal.TextSize
   local var82 = var1.fontStyle.Normal.Font
   local var86 = Vector2.new(∞, ∞)
   local var10 = var0:GetTextSize()
   var2.Ref = arg1.failurePageRef
   local var96 = {}
   local var100 = {}
   var100.SortOrder = Enum.SortOrder.LayoutOrder
   var100.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var100.VerticalAlignment = Enum.VerticalAlignment.Center
   var100.FillDirection = Enum.FillDirection.Vertical
   var100.Padding = UDim.new(0, var1.settingsPage.failPageListPaddingY)
   var96.Layout = var2.createElement("UIListLayout", var100)
   local var119 = {}
   var119.LayoutOrder = 1
   var119.Text = var4
   var119.Size = UDim2.fromOffset(var8.X, var8.Y)
   var119.BackgroundTransparency = 1
   local var127 = {}
   local var131 = {}
   var131.PaddingLeft = UDim.new(0, var1.settingsPage.failLabelPaddingX / 2)
   var131.PaddingRight = UDim.new(0, var1.settingsPage.failLabelPaddingX / 2)
   var127.Padding = var2.createElement("UIPadding", var131)
   var96.Label = var2.createElement("TextLabel", var3.Dictionary.join(var1.fontStyle.Normal, var119), var127)
   local var149 = {}
   var149.LayoutOrder = 2
   var149.Style = "GameSettingsPrimaryButton"
   var149.Text = var5
   var149.Size = UDim2.new(0, var10.X + var1.settingsPage.reloadButton.paddingX, 0, var10.Y + var1.settingsPage.reloadButton.paddingY)
   function var149.OnClick(arg1)
      arg1.failurePageRef = var2.createRef()
   end
   
   local var174 = {}
   var174.Cursor = "PointingHand"
   local var12 = var2.createElement(var9, var174)
   var96.PublishButton = var2.createElement(var7, var149, {})
   return var2.createElement(var8, {}, var96)
end

fun2 = var5.withContext
local var179 = {}
var179.Stylizer = var5.Stylizer
var179.Localization = var5.Localization
var10 = fun2(var179)(var10)
return var10
