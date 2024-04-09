-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI.CaptureFocus
local var5 = var1.PureComponent:extend("RecordingModeCover")
local function fun5(arg1)
   local var0 = arg1.props.Stylizer
   local var141 = {}
   var141.Priority = 100
   local var143 = {}
   local var147 = {}
   var147.Size = UDim2.new(1, 0, 1, 0)
   var147.BackgroundColor3 = Color3.new()
   var147.BackgroundTransparency = 0.35
   var147.AutoButtonColor = false
   var147.Font = var0.font
   var147.TextSize = var0.startScreenTheme.textSize
   var147.TextColor3 = var0.startScreenTheme.darkTextColor
   var147.Text = arg1.props.Localization:getText("FaceCapture", "IsRecordingCoverText")
   var143.Text = var1.createElement("TextButton", var147)
   return var1.createElement(var4, var141, var143)
end

function var5.render(arg1)
   local var0 = arg1.props.Stylizer
   local var141 = {}
   var141.Priority = 100
   local var143 = {}
   local var147 = {}
   var147.Size = UDim2.new(1, 0, 1, 0)
   var147.BackgroundColor3 = Color3.new()
   var147.BackgroundTransparency = 0.35
   var147.AutoButtonColor = false
   var147.Font = var0.font
   var147.TextSize = var0.startScreenTheme.textSize
   var147.TextColor3 = var0.startScreenTheme.darkTextColor
   var147.Text = arg1.props.Localization:getText("FaceCapture", "IsRecordingCoverText")
   var143.Text = var1.createElement("TextButton", var147)
   return var1.createElement(var4, var141, var143)
end

fun5 = var3.withContext
local var186 = {}
var186.Stylizer = var3.Stylizer
var186.Localization = var3.Localization
var5 = fun5(var186)(var5)
return var5
