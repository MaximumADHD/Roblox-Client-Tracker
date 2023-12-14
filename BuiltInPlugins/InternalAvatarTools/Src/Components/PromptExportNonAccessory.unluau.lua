-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.UI.StyledDialog
local var4 = var2.ContextServices
local var5 = var1.PureComponent:extend("PromptExportNonAccessory")
function var5.init(arg1)
   function arg1.onClose()
      arg1.props.onCancel()
   end
   
end

local function fun3(arg1)
   local var30 = {}
   var30.Title = arg1.props.Localization:getText("DialogTitle", "ExportNonAccessory")
   local var38 = {}
   var38.Key = "Export"
   var38.Text = arg1.props.Localization:getText("Dialog", "Export")
   var38.Style = "RoundPrimary"
   local var47 = {}
   var47.Key = "Cancel"
   var47.Text = arg1.props.Localization:getText("Dialog", "Cancel")
   var47.Style = "Round"
   var30.Buttons = {}
   var30.Resizable = false
   var30.MinContentSize = Vector2.new(0, 0)
   function var30.OnButtonPressed()
      arg1.props.onCancel()
   end
   
   var30.OnClose = arg1.props.onCancel
   return var1.createElement(var3, var30)
end

function var5.render(arg1)
   local var30 = {}
   var30.Title = arg1.props.Localization:getText("DialogTitle", "ExportNonAccessory")
   local var38 = {}
   var38.Key = "Export"
   var38.Text = arg1.props.Localization:getText("Dialog", "Export")
   var38.Style = "RoundPrimary"
   local var47 = {}
   var47.Key = "Cancel"
   var47.Text = arg1.props.Localization:getText("Dialog", "Cancel")
   var47.Style = "Round"
   var30.Buttons = {}
   var30.Resizable = false
   var30.MinContentSize = Vector2.new(0, 0)
   function var30.OnButtonPressed()
      arg1.props.onCancel()
   end
   
   var30.OnClose = arg1.props.onCancel
   return var1.createElement(var3, var30)
end

fun3 = var4.withContext
local var67 = {}
var67.Plugin = var4.Plugin
var67.Localization = var4.Localization
var5 = fun3(var67)(var5)
return var5
