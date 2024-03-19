-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI.CaptureFocus
local var5 = var1.PureComponent:extend("InactiveCover")
local function fun4(arg1)
   local var0 = arg1.props.Stylizer
   local var295 = {}
   var295.Priority = 100
   local var297 = {}
   local var301 = {}
   var301.Size = UDim2.new(1, 0, 1, 0)
   var301.BackgroundColor3 = Color3.new()
   var301.BackgroundTransparency = 0.35
   var301.AutoButtonColor = false
   var301.Font = var0.font
   var301.TextSize = var0.startScreenTheme.textSize
   var301.TextColor3 = var0.startScreenTheme.darkTextColor
   var301.Text = arg1.props.Localization:getText("Title", "ClickToContinue")
   var1.Event.Activated = arg1.props.OnFocused
   var297.Text = var1.createElement("TextButton", var301)
   return var1.createElement(var4, var295, var297)
end

function var5.render(arg1)
   local var0 = arg1.props.Stylizer
   local var295 = {}
   var295.Priority = 100
   local var297 = {}
   local var301 = {}
   var301.Size = UDim2.new(1, 0, 1, 0)
   var301.BackgroundColor3 = Color3.new()
   var301.BackgroundTransparency = 0.35
   var301.AutoButtonColor = false
   var301.Font = var0.font
   var301.TextSize = var0.startScreenTheme.textSize
   var301.TextColor3 = var0.startScreenTheme.darkTextColor
   var301.Text = arg1.props.Localization:getText("Title", "ClickToContinue")
   var1.Event.Activated = arg1.props.OnFocused
   var297.Text = var1.createElement("TextButton", var301)
   return var1.createElement(var4, var295, var297)
end

fun4 = var3.withContext
local var326 = {}
var326.Stylizer = var3.Stylizer
var326.Localization = var3.Localization
var5 = fun4(var326)(var5)
return var5
