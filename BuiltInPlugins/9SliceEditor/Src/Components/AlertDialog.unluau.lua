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
   local var24 = {}
   var24.enabled = arg2.Enabled
   arg1:setState(var24)
   function arg1.closeDialog()
      local var28 = {}
      var28.enabled = false
      arg1:setState(var28)
      arg1.props.OnClose()
   end
   
end

local function fun2(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.Localization
   local var41 = {}
   var41.Style = "Alert"
   var41.Enabled = arg1.state.enabled
   var41.Title = var2:getText("AlertDialog", var0.TitleKey)
   local var50 = {}
   var50.Key = "ok"
   var50.Text = var2:getText("AlertDialog", "OkButtonText")
   var41.Buttons = {}
   var41.OnButtonPressed = arg1.closeDialog
   var41.OnClose = var0.OnClose
   var41.MinContentSize = var1.PopupMessageSize
   var41.Modal = true
   local var60 = {}
   local var64 = {}
   var64.Size = UDim2.fromScale(0.95, 1)
   var64.AnchorPoint = Vector2.new(0.5, 0)
   var64.Position = UDim2.fromScale(0.5, 0)
   var64.Text = var2:getText("AlertDialog", var0.MessageKey, var0.MessageKeyFormatTable)
   var64.TextColor = var1.TextColor
   var64.TextWrapped = true
   var64.TextSize = var1.TextSize
   var64.TextXAlignment = Enum.TextXAlignment.Left
   var60.Label = var1.createElement(var5, var64)
   return var1.createElement(var6, var41, var60)
end

function var7.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.Localization
   local var41 = {}
   var41.Style = "Alert"
   var41.Enabled = arg1.state.enabled
   var41.Title = var2:getText("AlertDialog", var0.TitleKey)
   local var50 = {}
   var50.Key = "ok"
   var50.Text = var2:getText("AlertDialog", "OkButtonText")
   var41.Buttons = {}
   var41.OnButtonPressed = arg1.closeDialog
   var41.OnClose = var0.OnClose
   var41.MinContentSize = var1.PopupMessageSize
   var41.Modal = true
   local var60 = {}
   local var64 = {}
   var64.Size = UDim2.fromScale(0.95, 1)
   var64.AnchorPoint = Vector2.new(0.5, 0)
   var64.Position = UDim2.fromScale(0.5, 0)
   var64.Text = var2:getText("AlertDialog", var0.MessageKey, var0.MessageKeyFormatTable)
   var64.TextColor = var1.TextColor
   var64.TextWrapped = true
   var64.TextSize = var1.TextSize
   var64.TextXAlignment = Enum.TextXAlignment.Left
   var60.Label = var1.createElement(var5, var64)
   return var1.createElement(var6, var41, var60)
end

fun2 = var3.withContext
local var88 = {}
var88.Localization = var3.Localization
var88.Stylizer = var3.Stylizer
var7 = fun2(var88)(var7)
return var7
