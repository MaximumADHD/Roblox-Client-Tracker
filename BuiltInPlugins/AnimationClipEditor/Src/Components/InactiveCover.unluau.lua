-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI.CaptureFocus
local var5 = var1.PureComponent:extend("InactiveCover")
local function fun0(arg1)
   local var0 = arg1.props.Stylizer
   local var112 = {}
   var112.Priority = 100
   local var114 = {}
   local var118 = {}
   var118.Size = UDim2.new(1, 0, 1, 0)
   var118.BackgroundColor3 = Color3.new()
   var118.BackgroundTransparency = 0.35
   var118.AutoButtonColor = false
   var118.Font = var0.font
   var118.TextSize = var0.startScreenTheme.textSize
   var118.TextColor3 = var0.startScreenTheme.darkTextColor
   var118.Text = arg1.props.Localization:getText("Title", "ClickToContinue")
   var1.Event.Activated = arg1.props.OnFocused
   var114.Text = var1.createElement("TextButton", var118)
   return var1.createElement(var4, var112, var114)
end

function var5.render(arg1)
   local var0 = arg1.props.Stylizer
   local var112 = {}
   var112.Priority = 100
   local var114 = {}
   local var118 = {}
   var118.Size = UDim2.new(1, 0, 1, 0)
   var118.BackgroundColor3 = Color3.new()
   var118.BackgroundTransparency = 0.35
   var118.AutoButtonColor = false
   var118.Font = var0.font
   var118.TextSize = var0.startScreenTheme.textSize
   var118.TextColor3 = var0.startScreenTheme.darkTextColor
   var118.Text = arg1.props.Localization:getText("Title", "ClickToContinue")
   var1.Event.Activated = arg1.props.OnFocused
   var114.Text = var1.createElement("TextButton", var118)
   return var1.createElement(var4, var112, var114)
end

fun0 = var3.withContext
local var143 = {}
var143.Stylizer = var3.Stylizer
var143.Localization = var3.Localization
var5 = fun0(var143)(var5)
return var5
