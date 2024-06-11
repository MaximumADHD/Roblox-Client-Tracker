-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI.CaptureFocus
local var5 = var1.PureComponent:extend("InactiveCover")
local function fun0(arg1)
   local var0 = arg1.props.Stylizer
   local var30 = {}
   var30.Priority = 100
   local var32 = {}
   local var36 = {}
   var36.Size = UDim2.new(1, 0, 1, 0)
   var36.BackgroundColor3 = Color3.new()
   var36.BackgroundTransparency = 0.35
   var36.AutoButtonColor = false
   var36.Font = var0.font
   var36.TextSize = var0.startScreenTheme.textSize
   var36.TextColor3 = var0.startScreenTheme.darkTextColor
   var36.Text = arg1.props.Localization:getText("Title", "ClickToContinue")
   var1.Event.Activated = arg1.props.OnFocused
   var32.Text = var1.createElement("TextButton", var36)
   return var1.createElement(var4, var30, var32)
end

function var5.render(arg1)
   local var0 = arg1.props.Stylizer
   local var30 = {}
   var30.Priority = 100
   local var32 = {}
   local var36 = {}
   var36.Size = UDim2.new(1, 0, 1, 0)
   var36.BackgroundColor3 = Color3.new()
   var36.BackgroundTransparency = 0.35
   var36.AutoButtonColor = false
   var36.Font = var0.font
   var36.TextSize = var0.startScreenTheme.textSize
   var36.TextColor3 = var0.startScreenTheme.darkTextColor
   var36.Text = arg1.props.Localization:getText("Title", "ClickToContinue")
   var1.Event.Activated = arg1.props.OnFocused
   var32.Text = var1.createElement("TextButton", var36)
   return var1.createElement(var4, var30, var32)
end

fun0 = var3.withContext
local var61 = {}
var61.Stylizer = var3.Stylizer
var61.Localization = var3.Localization
var5 = fun0(var61)(var5)
return var5
