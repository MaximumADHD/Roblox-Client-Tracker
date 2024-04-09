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
   local var298 = {}
   var298.Style = "Alert"
   var298.Enabled = arg1.state.userRequestedDialogNeverShow and var0.Enabled
   local var309 = var4.CursorGroupName
   var298.Title = var1:getText("CannotConfigureSelectionDialog", "DialogWindowTitle", {})
   var298.MinContentSize = var0.Stylizer.CannotConfigureSelectionDialog.DialogMinimumSize
   local var314 = {}
   var314.Key = "ok"
   var314.Text = var1:getText("RenameWarningDialog", "Ok")
   var298.Buttons = {}
   var298.OnButtonPressed = var0.OnClose
   var298.OnClose = var0.OnClose
   local var322 = {}
   local var326 = {}
   var326.Style = "Box"
   var326.Layout = Enum.FillDirection.Vertical
   local var329 = {}
   local var333 = {}
   var333.LayoutOrder = 1
   var333.TextWrapped = true
   var333.RichText = true
   var333.TextXAlignment = Enum.TextXAlignment.Left
   var333.TextYAlignment = Enum.TextYAlignment.Top
   var333.AutomaticSize = Enum.AutomaticSize.XY
   local var4 = `<b>%*</b>`
   var333.Text = var1:getText("CannotConfigureSelectionDialog", "WarningMessage", {})
   var329.TextLabel = var1.createElement(var8, var333)
   var322.Contents = var1.createElement(var6, var326, var329)
   return var1.createElement(var7, var298, var322)
end

local var355 = {}
var355.Stylizer = var3.Stylizer
var355.Localization = var3.Localization
var9 = var3.withContext(var355)(var9)
return var9
