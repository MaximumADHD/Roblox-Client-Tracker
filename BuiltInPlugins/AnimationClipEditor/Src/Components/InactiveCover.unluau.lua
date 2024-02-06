-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI.CaptureFocus
local var5 = var1.PureComponent:extend("InactiveCover")
local function fun0(arg1)
   local var0 = arg1.props.Stylizer
   local var71 = {}
   var71.Priority = 100
   local var73 = {}
   local var77 = {}
   var77.Size = UDim2.new(1, 0, 1, 0)
   var77.BackgroundColor3 = Color3.new()
   var77.BackgroundTransparency = 0.35
   var77.AutoButtonColor = false
   var77.Font = var0.font
   var77.TextSize = var0.startScreenTheme.textSize
   var77.TextColor3 = var0.startScreenTheme.darkTextColor
   var77.Text = arg1.props.Localization:getText("Title", "ClickToContinue")
   var1.Event.Activated = arg1.props.OnFocused
   var73.Text = var1.createElement("TextButton", var77)
   return var1.createElement(var4, var71, var73)
end

function var5.render(arg1)
   local var0 = arg1.props.Stylizer
   local var71 = {}
   var71.Priority = 100
   local var73 = {}
   local var77 = {}
   var77.Size = UDim2.new(1, 0, 1, 0)
   var77.BackgroundColor3 = Color3.new()
   var77.BackgroundTransparency = 0.35
   var77.AutoButtonColor = false
   var77.Font = var0.font
   var77.TextSize = var0.startScreenTheme.textSize
   var77.TextColor3 = var0.startScreenTheme.darkTextColor
   var77.Text = arg1.props.Localization:getText("Title", "ClickToContinue")
   var1.Event.Activated = arg1.props.OnFocused
   var73.Text = var1.createElement("TextButton", var77)
   return var1.createElement(var4, var71, var73)
end

fun0 = var3.withContext
local var102 = {}
var102.Stylizer = var3.Stylizer
var102.Localization = var3.Localization
var5 = fun0(var102)(var5)
return var5
