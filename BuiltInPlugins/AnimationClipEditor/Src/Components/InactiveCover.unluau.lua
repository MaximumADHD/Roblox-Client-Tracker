-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI.CaptureFocus
local var5 = var1.PureComponent:extend("InactiveCover")
local function fun3(arg1)
   local var0 = arg1.props.Stylizer
   local var291 = {}
   var291.Priority = 100
   local var293 = {}
   local var297 = {}
   var297.Size = UDim2.new(1, 0, 1, 0)
   var297.BackgroundColor3 = Color3.new()
   var297.BackgroundTransparency = 0.35
   var297.AutoButtonColor = false
   var297.Font = var0.font
   var297.TextSize = var0.startScreenTheme.textSize
   var297.TextColor3 = var0.startScreenTheme.darkTextColor
   var297.Text = arg1.props.Localization:getText("Title", "ClickToContinue")
   var1.Event.Activated = arg1.props.OnFocused
   var293.Text = var1.createElement("TextButton", var297)
   return var1.createElement(var4, var291, var293)
end

function var5.render(arg1)
   local var0 = arg1.props.Stylizer
   local var291 = {}
   var291.Priority = 100
   local var293 = {}
   local var297 = {}
   var297.Size = UDim2.new(1, 0, 1, 0)
   var297.BackgroundColor3 = Color3.new()
   var297.BackgroundTransparency = 0.35
   var297.AutoButtonColor = false
   var297.Font = var0.font
   var297.TextSize = var0.startScreenTheme.textSize
   var297.TextColor3 = var0.startScreenTheme.darkTextColor
   var297.Text = arg1.props.Localization:getText("Title", "ClickToContinue")
   var1.Event.Activated = arg1.props.OnFocused
   var293.Text = var1.createElement("TextButton", var297)
   return var1.createElement(var4, var291, var293)
end

fun3 = var3.withContext
local var322 = {}
var322.Stylizer = var3.Stylizer
var322.Localization = var3.Localization
var5 = fun3(var322)(var5)
return var5
