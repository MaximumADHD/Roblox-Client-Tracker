-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = require(script.Parent.Parent.Constants)
local var5 = var2.UI
local var6 = var5.Pane
local var7 = var5.StyledDialog
local var8 = var5.TextLabel
local var9 = var1.Component:extend("CannotConfigureSelectionDialog")
function var9.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var159 = {}
   var159.Style = "Alert"
   var159.Enabled = arg1.state.userRequestedDialogNeverShow and var0.Enabled
   local var170 = var4.CursorGroupName
   var159.Title = var1:getText("CannotConfigureSelectionDialog", "DialogWindowTitle", {})
   var159.MinContentSize = var0.Stylizer.CannotConfigureSelectionDialog.DialogMinimumSize
   local var175 = {}
   var175.Key = "ok"
   var175.Text = var1:getText("RenameWarningDialog", "Ok")
   var159.Buttons = {}
   var159.OnButtonPressed = var0.OnClose
   var159.OnClose = var0.OnClose
   local var183 = {}
   local var187 = {}
   var187.Style = "Box"
   var187.Layout = Enum.FillDirection.Vertical
   local var190 = {}
   local var194 = {}
   var194.LayoutOrder = 1
   var194.TextWrapped = true
   var194.RichText = true
   var194.TextXAlignment = Enum.TextXAlignment.Left
   var194.TextYAlignment = Enum.TextYAlignment.Top
   var194.AutomaticSize = Enum.AutomaticSize.XY
   local var4 = `<b>%*</b>`
   var194.Text = var1:getText("CannotConfigureSelectionDialog", "WarningMessage", {})
   var190.TextLabel = var1.createElement(var8, var194)
   var183.Contents = var1.createElement(var6, var187, var190)
   return var1.createElement(var7, var159, var183)
end

local var216 = {}
var216.Stylizer = var3.Stylizer
var216.Localization = var3.Localization
var9 = var3.withContext(var216)(var9)
return var9
