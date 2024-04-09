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
   local var107 = {}
   var107.neverShowCheckboxToggled = false
   var107.userRequestedDialogNeverShow = false
   arg1:setState(var107)
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
   local var126 = {}
   var126.Style = "Alert"
   var126.Enabled = arg1.state.userRequestedDialogNeverShow and var0.Enabled
   var126.Title = var2:getText("RenameWarningDialog", "DialogWindowTitle")
   var126.MinContentSize = var1.DialogMinimumSize
   local var139 = {}
   var139.Key = "ok"
   var139.Text = var2:getText("RenameWarningDialog", "Ok")
   var126.Buttons = {}
   function var126.OnButtonPressed(arg1)
      local var0 = {}
      var0.neverShowCheckboxToggled = arg1.userRequestedDialogNeverShow
      return var0
   end
   
   function var126.OnClose()
      var0:setState(function(arg1)
         local var0 = {}
         var0.neverShowCheckboxToggled = arg1.userRequestedDialogNeverShow
         return var0
      end)
   end
   
   local var155 = {}
   local var159 = {}
   var159.Style = "Box"
   var159.Layout = Enum.FillDirection.Vertical
   var159.Padding = var1.Padding
   var159.Spacing = var1.Spacing
   local var164 = {}
   local var168 = {}
   var168.LayoutOrder = 1
   var168.TextWrapped = true
   var168.Size = var1.WarningTextSize
   var168.Text = var2:getText("RenameWarningDialog", "WarningMessage")
   var164.TextLabel = var1.createElement(var8, var168)
   local var180 = {}
   var180.LayoutOrder = 2
   var180.Text = var2:getText("RenameWarningDialog", "DontShowThisWarningAgain")
   var180.Checked = arg1.state.neverShowCheckboxToggled
   var180.OnClick = arg1.toggleDialogNeverShow
   var164.Checkbox = var1.createElement(var6, var180)
   var155.Contents = var1.createElement(var7, var159, var164)
   return var1.createElement(var9, var126, var155)
end

function var10.didMount(arg1)
   local var200 = {}
   var200.userRequestedDialogNeverShow = arg1.props.Plugin:get():GetSetting("userRequestedRenameDialogNeverShow")
   arg1:setState(var200)
end

local var203 = {}
var203.Plugin = var3.Plugin
var203.Stylizer = var3.Stylizer
var203.Localization = var3.Localization
var10 = var3.withContext(var203)(var10)
return var10
