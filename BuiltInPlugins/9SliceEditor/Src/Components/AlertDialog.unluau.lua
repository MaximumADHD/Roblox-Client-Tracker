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
   local var59 = {}
   var59.Style = "Alert"
   var59.Enabled = arg1.state.enabled
   var59.Title = var2:getText("AlertDialog", var0.TitleKey)
   local var68 = {}
   var68.Key = "ok"
   var68.Text = var2:getText("AlertDialog", "OkButtonText")
   var59.Buttons = {}
   var59.OnButtonPressed = arg1.closeDialog
   var59.OnClose = var0.OnClose
   var59.MinContentSize = var1.PopupMessageSize
   var59.Modal = true
   local var78 = {}
   local var82 = {}
   var82.Size = UDim2.fromScale(0.95, 1)
   var82.AnchorPoint = Vector2.new(0.5, 0)
   var82.Position = UDim2.fromScale(0.5, 0)
   var82.Text = var2:getText("AlertDialog", var0.MessageKey, var0.MessageKeyFormatTable)
   var82.TextColor = var1.TextColor
   var82.TextWrapped = true
   var82.TextSize = var1.TextSize
   var82.TextXAlignment = Enum.TextXAlignment.Left
   var78.Label = var1.createElement(var5, var82)
   return var1.createElement(var6, var59, var78)
end

function var7.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.Localization
   local var59 = {}
   var59.Style = "Alert"
   var59.Enabled = arg1.state.enabled
   var59.Title = var2:getText("AlertDialog", var0.TitleKey)
   local var68 = {}
   var68.Key = "ok"
   var68.Text = var2:getText("AlertDialog", "OkButtonText")
   var59.Buttons = {}
   var59.OnButtonPressed = arg1.closeDialog
   var59.OnClose = var0.OnClose
   var59.MinContentSize = var1.PopupMessageSize
   var59.Modal = true
   local var78 = {}
   local var82 = {}
   var82.Size = UDim2.fromScale(0.95, 1)
   var82.AnchorPoint = Vector2.new(0.5, 0)
   var82.Position = UDim2.fromScale(0.5, 0)
   var82.Text = var2:getText("AlertDialog", var0.MessageKey, var0.MessageKeyFormatTable)
   var82.TextColor = var1.TextColor
   var82.TextWrapped = true
   var82.TextSize = var1.TextSize
   var82.TextXAlignment = Enum.TextXAlignment.Left
   var78.Label = var1.createElement(var5, var82)
   return var1.createElement(var6, var59, var78)
end

fun2 = var3.withContext
local var106 = {}
var106.Localization = var3.Localization
var106.Stylizer = var3.Stylizer
var7 = fun2(var106)(var7)
return var7
