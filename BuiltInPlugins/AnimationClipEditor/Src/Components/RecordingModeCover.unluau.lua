-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI.CaptureFocus
local var5 = var1.PureComponent:extend("RecordingModeCover")
local function fun0(arg1)
   local var0 = arg1.props.Stylizer
   local var26 = {}
   var26.Priority = 100
   local var28 = {}
   local var32 = {}
   var32.Size = UDim2.new(1, 0, 1, 0)
   var32.BackgroundColor3 = Color3.new()
   var32.BackgroundTransparency = 0.35
   var32.AutoButtonColor = false
   var32.Font = var0.font
   var32.TextSize = var0.startScreenTheme.textSize
   var32.TextColor3 = var0.startScreenTheme.darkTextColor
   var32.Text = arg1.props.Localization:getText("FaceCapture", "IsRecordingCoverText")
   var28.Text = var1.createElement("TextButton", var32)
   return var1.createElement(var4, var26, var28)
end

function var5.render(arg1)
   local var0 = arg1.props.Stylizer
   local var26 = {}
   var26.Priority = 100
   local var28 = {}
   local var32 = {}
   var32.Size = UDim2.new(1, 0, 1, 0)
   var32.BackgroundColor3 = Color3.new()
   var32.BackgroundTransparency = 0.35
   var32.AutoButtonColor = false
   var32.Font = var0.font
   var32.TextSize = var0.startScreenTheme.textSize
   var32.TextColor3 = var0.startScreenTheme.darkTextColor
   var32.Text = arg1.props.Localization:getText("FaceCapture", "IsRecordingCoverText")
   var28.Text = var1.createElement("TextButton", var32)
   return var1.createElement(var4, var26, var28)
end

fun0 = var3.withContext
local var54 = {}
var54.Stylizer = var3.Stylizer
var54.Localization = var3.Localization
var5 = fun0(var54)(var5)
return var5
