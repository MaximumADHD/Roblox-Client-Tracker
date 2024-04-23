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
   local var160 = {}
   var160.Style = "Alert"
   var160.Enabled = arg1.state.userRequestedDialogNeverShow and var0.Enabled
   local var171 = var4.CursorGroupName
   var160.Title = var1:getText("CannotConfigureSelectionDialog", "DialogWindowTitle", {})
   var160.MinContentSize = var0.Stylizer.CannotConfigureSelectionDialog.DialogMinimumSize
   local var176 = {}
   var176.Key = "ok"
   var176.Text = var1:getText("RenameWarningDialog", "Ok")
   var160.Buttons = {}
   var160.OnButtonPressed = var0.OnClose
   var160.OnClose = var0.OnClose
   local var184 = {}
   local var188 = {}
   var188.Style = "Box"
   var188.Layout = Enum.FillDirection.Vertical
   local var191 = {}
   local var195 = {}
   var195.LayoutOrder = 1
   var195.TextWrapped = true
   var195.RichText = true
   var195.TextXAlignment = Enum.TextXAlignment.Left
   var195.TextYAlignment = Enum.TextYAlignment.Top
   var195.AutomaticSize = Enum.AutomaticSize.XY
   local var4 = `<b>%*</b>`
   var195.Text = var1:getText("CannotConfigureSelectionDialog", "WarningMessage", {})
   var191.TextLabel = var1.createElement(var8, var195)
   var184.Contents = var1.createElement(var6, var188, var191)
   return var1.createElement(var7, var160, var184)
end

local var217 = {}
var217.Stylizer = var3.Stylizer
var217.Localization = var3.Localization
var9 = var3.withContext(var217)(var9)
return var9
