-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI.CaptureFocus
local var5 = var1.PureComponent:extend("RecordingModeCover")
local function fun5(arg1)
   local var0 = arg1.props.Stylizer
   local var111 = {}
   var111.Priority = 100
   local var113 = {}
   local var117 = {}
   var117.Size = UDim2.new(1, 0, 1, 0)
   var117.BackgroundColor3 = Color3.new()
   var117.BackgroundTransparency = 0.35
   var117.AutoButtonColor = false
   var117.Font = var0.font
   var117.TextSize = var0.startScreenTheme.textSize
   var117.TextColor3 = var0.startScreenTheme.darkTextColor
   var117.Text = arg1.props.Localization:getText("FaceCapture", "IsRecordingCoverText")
   var113.Text = var1.createElement("TextButton", var117)
   return var1.createElement(var4, var111, var113)
end

function var5.render(arg1)
   local var0 = arg1.props.Stylizer
   local var111 = {}
   var111.Priority = 100
   local var113 = {}
   local var117 = {}
   var117.Size = UDim2.new(1, 0, 1, 0)
   var117.BackgroundColor3 = Color3.new()
   var117.BackgroundTransparency = 0.35
   var117.AutoButtonColor = false
   var117.Font = var0.font
   var117.TextSize = var0.startScreenTheme.textSize
   var117.TextColor3 = var0.startScreenTheme.darkTextColor
   var117.Text = arg1.props.Localization:getText("FaceCapture", "IsRecordingCoverText")
   var113.Text = var1.createElement("TextButton", var117)
   return var1.createElement(var4, var111, var113)
end

fun5 = var3.withContext
local var139 = {}
var139.Stylizer = var3.Stylizer
var139.Localization = var3.Localization
var5 = fun5(var139)(var5)
return var5
