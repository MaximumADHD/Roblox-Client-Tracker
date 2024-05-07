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
   local var480 = {}
   var480.Style = "Alert"
   var480.Enabled = arg1.state.userRequestedDialogNeverShow and var0.Enabled
   local var491 = var4.CursorGroupName
   var480.Title = var1:getText("CannotConfigureSelectionDialog", "DialogWindowTitle", {})
   var480.MinContentSize = var0.Stylizer.CannotConfigureSelectionDialog.DialogMinimumSize
   local var496 = {}
   var496.Key = "ok"
   var496.Text = var1:getText("RenameWarningDialog", "Ok")
   var480.Buttons = {}
   var480.OnButtonPressed = var0.OnClose
   var480.OnClose = var0.OnClose
   local var504 = {}
   local var508 = {}
   var508.Style = "Box"
   var508.Layout = Enum.FillDirection.Vertical
   local var511 = {}
   local var515 = {}
   var515.LayoutOrder = 1
   var515.TextWrapped = true
   var515.RichText = true
   var515.TextXAlignment = Enum.TextXAlignment.Left
   var515.TextYAlignment = Enum.TextYAlignment.Top
   var515.AutomaticSize = Enum.AutomaticSize.XY
   local var4 = `<b>%*</b>`
   var515.Text = var1:getText("CannotConfigureSelectionDialog", "WarningMessage", {})
   var511.TextLabel = var1.createElement(var8, var515)
   var504.Contents = var1.createElement(var6, var508, var511)
   return var1.createElement(var7, var480, var504)
end

local var537 = {}
var537.Stylizer = var3.Stylizer
var537.Localization = var3.Localization
var9 = var3.withContext(var537)(var9)
return var9
