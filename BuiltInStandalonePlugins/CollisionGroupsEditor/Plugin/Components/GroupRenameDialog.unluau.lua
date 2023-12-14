-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI
local var5 = var4.Button
local var6 = var4.Checkbox
local var7 = var4.Pane
local var8 = var4.TextLabel
local var9 = var4.StyledDialog
local var10 = var1.Component:extend("GroupRenameDialog")
function var10.init(arg1)
   local var142 = {}
   var142.neverShowCheckboxToggled = false
   var142.userRequestedDialogNeverShow = false
   arg1:setState(var142)
   function arg1.toggleDialogNeverShow(arg1)
      local var0 = {}
      var0.neverShowCheckboxToggled = arg1.userRequestedDialogNeverShow
      return var0
   end
   
end

function var10.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer.GroupRenameDialog
   local var2 = var0.Localization
   local var3 = var0.Plugin:get()
   local var161 = {}
   var161.Style = "Alert"
   var161.Enabled = arg1.state.userRequestedDialogNeverShow and var0.Enabled
   var161.Title = var2:getText("RenameWarningDialog", "DialogWindowTitle")
   var161.MinContentSize = var1.DialogMinimumSize
   local var174 = {}
   var174.Key = "ok"
   var174.Text = var2:getText("RenameWarningDialog", "Ok")
   var161.Buttons = {}
   function var161.OnButtonPressed(arg1)
      local var0 = {}
      var0.neverShowCheckboxToggled = arg1.userRequestedDialogNeverShow
      return var0
   end
   
   function var161.OnClose()
      var0:setState(function(arg1)
         local var0 = {}
         var0.neverShowCheckboxToggled = arg1.userRequestedDialogNeverShow
         return var0
      end)
   end
   
   local var190 = {}
   local var194 = {}
   var194.Style = "Box"
   var194.Layout = Enum.FillDirection.Vertical
   var194.Padding = var1.Padding
   var194.Spacing = var1.Spacing
   local var199 = {}
   local var203 = {}
   var203.LayoutOrder = 1
   var203.TextWrapped = true
   var203.Size = var1.WarningTextSize
   var203.Text = var2:getText("RenameWarningDialog", "WarningMessage")
   var199.TextLabel = var1.createElement(var8, var203)
   local var215 = {}
   var215.LayoutOrder = 2
   var215.Text = var2:getText("RenameWarningDialog", "DontShowThisWarningAgain")
   var215.Checked = arg1.state.neverShowCheckboxToggled
   var215.OnClick = arg1.toggleDialogNeverShow
   var199.Checkbox = var1.createElement(var6, var215)
   var190.Contents = var1.createElement(var7, var194, var199)
   return var1.createElement(var9, var161, var190)
end

function var10.didMount(arg1)
   local var235 = {}
   var235.userRequestedDialogNeverShow = arg1.props.Plugin:get():GetSetting("userRequestedRenameDialogNeverShow")
   arg1:setState(var235)
end

local var238 = {}
var238.Plugin = var3.Plugin
var238.Stylizer = var3.Stylizer
var238.Localization = var3.Localization
var10 = var3.withContext(var238)(var10)
return var10
