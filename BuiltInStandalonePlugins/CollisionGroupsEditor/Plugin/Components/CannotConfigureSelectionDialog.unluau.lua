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
   local var113 = {}
   var113.Style = "Alert"
   var113.Enabled = arg1.state.userRequestedDialogNeverShow and var0.Enabled
   local var124 = var4.CursorGroupName
   var113.Title = var1:getText("CannotConfigureSelectionDialog", "DialogWindowTitle", {})
   var113.MinContentSize = var0.Stylizer.CannotConfigureSelectionDialog.DialogMinimumSize
   local var129 = {}
   var129.Key = "ok"
   var129.Text = var1:getText("RenameWarningDialog", "Ok")
   var113.Buttons = {}
   var113.OnButtonPressed = var0.OnClose
   var113.OnClose = var0.OnClose
   local var137 = {}
   local var141 = {}
   var141.Style = "Box"
   var141.Layout = Enum.FillDirection.Vertical
   local var144 = {}
   local var148 = {}
   var148.LayoutOrder = 1
   var148.TextWrapped = true
   var148.RichText = true
   var148.TextXAlignment = Enum.TextXAlignment.Left
   var148.TextYAlignment = Enum.TextYAlignment.Top
   var148.AutomaticSize = Enum.AutomaticSize.XY
   local var4 = `<b>%*</b>`
   var148.Text = var1:getText("CannotConfigureSelectionDialog", "WarningMessage", {})
   var144.TextLabel = var1.createElement(var8, var148)
   var137.Contents = var1.createElement(var6, var141, var144)
   return var1.createElement(var7, var113, var137)
end

local var170 = {}
var170.Stylizer = var3.Stylizer
var170.Localization = var3.Localization
var9 = var3.withContext(var170)(var9)
return var9
