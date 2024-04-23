-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI.CaptureFocus
local var5 = var1.PureComponent:extend("InactiveCover")
local function fun3(arg1)
   local var0 = arg1.props.Stylizer
   local var307 = {}
   var307.Priority = 100
   local var309 = {}
   local var313 = {}
   var313.Size = UDim2.new(1, 0, 1, 0)
   var313.BackgroundColor3 = Color3.new()
   var313.BackgroundTransparency = 0.35
   var313.AutoButtonColor = false
   var313.Font = var0.font
   var313.TextSize = var0.startScreenTheme.textSize
   var313.TextColor3 = var0.startScreenTheme.darkTextColor
   var313.Text = arg1.props.Localization:getText("Title", "ClickToContinue")
   var1.Event.Activated = arg1.props.OnFocused
   var309.Text = var1.createElement("TextButton", var313)
   return var1.createElement(var4, var307, var309)
end

function var5.render(arg1)
   local var0 = arg1.props.Stylizer
   local var307 = {}
   var307.Priority = 100
   local var309 = {}
   local var313 = {}
   var313.Size = UDim2.new(1, 0, 1, 0)
   var313.BackgroundColor3 = Color3.new()
   var313.BackgroundTransparency = 0.35
   var313.AutoButtonColor = false
   var313.Font = var0.font
   var313.TextSize = var0.startScreenTheme.textSize
   var313.TextColor3 = var0.startScreenTheme.darkTextColor
   var313.Text = arg1.props.Localization:getText("Title", "ClickToContinue")
   var1.Event.Activated = arg1.props.OnFocused
   var309.Text = var1.createElement("TextButton", var313)
   return var1.createElement(var4, var307, var309)
end

fun3 = var3.withContext
local var338 = {}
var338.Stylizer = var3.Stylizer
var338.Localization = var3.Localization
var5 = fun3(var338)(var5)
return var5
