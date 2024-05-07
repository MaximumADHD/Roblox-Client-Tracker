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
   local var54 = {}
   var54.enabled = arg2.Enabled
   arg1:setState(var54)
   function arg1.closeDialog()
      local var58 = {}
      var58.enabled = false
      arg1:setState(var58)
      arg1.props.OnClose()
   end
   
end

local function fun2(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.Localization
   local var79 = {}
   var79.Style = "Alert"
   var79.Enabled = arg1.state.enabled
   var79.Title = var2:getText("AlertDialog", var0.TitleKey)
   local var88 = {}
   var88.Key = "ok"
   var88.Text = var2:getText("AlertDialog", "OkButtonText")
   var79.Buttons = {}
   var79.OnButtonPressed = arg1.closeDialog
   var79.OnClose = var0.OnClose
   var79.MinContentSize = var1.PopupMessageSize
   var79.Modal = true
   local var98 = {}
   local var102 = {}
   var102.Size = UDim2.fromScale(0.95, 1)
   var102.AnchorPoint = Vector2.new(0.5, 0)
   var102.Position = UDim2.fromScale(0.5, 0)
   var102.Text = var2:getText("AlertDialog", var0.MessageKey, var0.MessageKeyFormatTable)
   var102.TextColor = var1.TextColor
   var102.TextWrapped = true
   var102.TextSize = var1.TextSize
   var102.TextXAlignment = Enum.TextXAlignment.Left
   var98.Label = var1.createElement(var5, var102)
   return var1.createElement(var6, var79, var98)
end

function var7.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.Localization
   local var79 = {}
   var79.Style = "Alert"
   var79.Enabled = arg1.state.enabled
   var79.Title = var2:getText("AlertDialog", var0.TitleKey)
   local var88 = {}
   var88.Key = "ok"
   var88.Text = var2:getText("AlertDialog", "OkButtonText")
   var79.Buttons = {}
   var79.OnButtonPressed = arg1.closeDialog
   var79.OnClose = var0.OnClose
   var79.MinContentSize = var1.PopupMessageSize
   var79.Modal = true
   local var98 = {}
   local var102 = {}
   var102.Size = UDim2.fromScale(0.95, 1)
   var102.AnchorPoint = Vector2.new(0.5, 0)
   var102.Position = UDim2.fromScale(0.5, 0)
   var102.Text = var2:getText("AlertDialog", var0.MessageKey, var0.MessageKeyFormatTable)
   var102.TextColor = var1.TextColor
   var102.TextWrapped = true
   var102.TextSize = var1.TextSize
   var102.TextXAlignment = Enum.TextXAlignment.Left
   var98.Label = var1.createElement(var5, var102)
   return var1.createElement(var6, var79, var98)
end

fun2 = var3.withContext
local var126 = {}
var126.Localization = var3.Localization
var126.Stylizer = var3.Stylizer
var7 = fun2(var126)(var7)
return var7
