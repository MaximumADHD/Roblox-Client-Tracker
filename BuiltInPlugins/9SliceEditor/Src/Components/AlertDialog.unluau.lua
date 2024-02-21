-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI
local var5 = var4.TextLabel
local var6 = var4.StyledDialog
local var7 = var1.PureComponent:extend("AlertDialog")
function var7.init(arg1, arg2)
   local var41 = {}
   var41.enabled = arg2.Enabled
   arg1:setState(var41)
   function arg1.closeDialog()
      local var45 = {}
      var45.enabled = false
      arg1:setState(var45)
      arg1.props.OnClose()
   end
   
end

local function fun2(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.Localization
   local var7 = {}
   var7.Style = "Alert"
   var7.Enabled = arg1.state.enabled
   var7.Title = var2:getText("AlertDialog", var0.TitleKey)
   local var16 = {}
   var16.Key = "ok"
   var16.Text = var2:getText("AlertDialog", "OkButtonText")
   var7.Buttons = {}
   var7.OnButtonPressed = arg1.closeDialog
   var7.OnClose = var0.OnClose
   var7.MinContentSize = var1.PopupMessageSize
   var7.Modal = true
   local var26 = {}
   local var30 = {}
   var30.Size = UDim2.fromScale(0.95, 1)
   var30.AnchorPoint = Vector2.new(0.5, 0)
   var30.Position = UDim2.fromScale(0.5, 0)
   var30.Text = var2:getText("AlertDialog", var0.MessageKey, var0.MessageKeyFormatTable)
   var30.TextColor = var1.TextColor
   var30.TextWrapped = true
   var30.TextSize = var1.TextSize
   var30.TextXAlignment = Enum.TextXAlignment.Left
   var26.Label = var1.createElement(var5, var30)
   return var1.createElement(var6, var7, var26)
end

function var7.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.Localization
   local var7 = {}
   var7.Style = "Alert"
   var7.Enabled = arg1.state.enabled
   var7.Title = var2:getText("AlertDialog", var0.TitleKey)
   local var16 = {}
   var16.Key = "ok"
   var16.Text = var2:getText("AlertDialog", "OkButtonText")
   var7.Buttons = {}
   var7.OnButtonPressed = arg1.closeDialog
   var7.OnClose = var0.OnClose
   var7.MinContentSize = var1.PopupMessageSize
   var7.Modal = true
   local var26 = {}
   local var30 = {}
   var30.Size = UDim2.fromScale(0.95, 1)
   var30.AnchorPoint = Vector2.new(0.5, 0)
   var30.Position = UDim2.fromScale(0.5, 0)
   var30.Text = var2:getText("AlertDialog", var0.MessageKey, var0.MessageKeyFormatTable)
   var30.TextColor = var1.TextColor
   var30.TextWrapped = true
   var30.TextSize = var1.TextSize
   var30.TextXAlignment = Enum.TextXAlignment.Left
   var26.Label = var1.createElement(var5, var30)
   return var1.createElement(var6, var7, var26)
end

fun2 = var3.withContext
local var54 = {}
var54.Localization = var3.Localization
var54.Stylizer = var3.Stylizer
var7 = fun2(var54)(var7)
return var7
