-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI.CaptureFocus
local var5 = var1.PureComponent:extend("RecordingModeCover")
local function fun0(arg1)
   local var0 = arg1.props.Stylizer
   local var28 = {}
   var28.Priority = 100
   local var30 = {}
   local var34 = {}
   var34.Size = UDim2.new(1, 0, 1, 0)
   var34.BackgroundColor3 = Color3.new()
   var34.BackgroundTransparency = 0.35
   var34.AutoButtonColor = false
   var34.Font = var0.font
   var34.TextSize = var0.startScreenTheme.textSize
   var34.TextColor3 = var0.startScreenTheme.darkTextColor
   var34.Text = arg1.props.Localization:getText("FaceCapture", "IsRecordingCoverText")
   var30.Text = var1.createElement("TextButton", var34)
   return var1.createElement(var4, var28, var30)
end

function var5.render(arg1)
   local var0 = arg1.props.Stylizer
   local var28 = {}
   var28.Priority = 100
   local var30 = {}
   local var34 = {}
   var34.Size = UDim2.new(1, 0, 1, 0)
   var34.BackgroundColor3 = Color3.new()
   var34.BackgroundTransparency = 0.35
   var34.AutoButtonColor = false
   var34.Font = var0.font
   var34.TextSize = var0.startScreenTheme.textSize
   var34.TextColor3 = var0.startScreenTheme.darkTextColor
   var34.Text = arg1.props.Localization:getText("FaceCapture", "IsRecordingCoverText")
   var30.Text = var1.createElement("TextButton", var34)
   return var1.createElement(var4, var28, var30)
end

fun0 = var3.withContext
local var56 = {}
var56.Stylizer = var3.Stylizer
var56.Localization = var3.Localization
var5 = fun0(var56)(var5)
return var5
