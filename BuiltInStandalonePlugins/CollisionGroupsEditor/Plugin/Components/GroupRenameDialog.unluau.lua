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
   local var24 = {}
   var24.neverShowCheckboxToggled = false
   var24.userRequestedDialogNeverShow = false
   arg1:setState(var24)
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
   local var43 = {}
   var43.Style = "Alert"
   var43.Enabled = arg1.state.userRequestedDialogNeverShow and var0.Enabled
   var43.Title = var2:getText("RenameWarningDialog", "DialogWindowTitle")
   var43.MinContentSize = var1.DialogMinimumSize
   local var56 = {}
   var56.Key = "ok"
   var56.Text = var2:getText("RenameWarningDialog", "Ok")
   var43.Buttons = {}
   function var43.OnButtonPressed(arg1)
      local var0 = {}
      var0.neverShowCheckboxToggled = arg1.userRequestedDialogNeverShow
      return var0
   end
   
   function var43.OnClose()
      var0:setState(function(arg1)
         local var0 = {}
         var0.neverShowCheckboxToggled = arg1.userRequestedDialogNeverShow
         return var0
      end)
   end
   
   local var72 = {}
   local var76 = {}
   var76.Style = "Box"
   var76.Layout = Enum.FillDirection.Vertical
   var76.Padding = var1.Padding
   var76.Spacing = var1.Spacing
   local var81 = {}
   local var85 = {}
   var85.LayoutOrder = 1
   var85.TextWrapped = true
   var85.Size = var1.WarningTextSize
   var85.Text = var2:getText("RenameWarningDialog", "WarningMessage")
   var81.TextLabel = var1.createElement(var8, var85)
   local var97 = {}
   var97.LayoutOrder = 2
   var97.Text = var2:getText("RenameWarningDialog", "DontShowThisWarningAgain")
   var97.Checked = arg1.state.neverShowCheckboxToggled
   var97.OnClick = arg1.toggleDialogNeverShow
   var81.Checkbox = var1.createElement(var6, var97)
   var72.Contents = var1.createElement(var7, var76, var81)
   return var1.createElement(var9, var43, var72)
end

function var10.didMount(arg1)
   local var117 = {}
   var117.userRequestedDialogNeverShow = arg1.props.Plugin:get():GetSetting("userRequestedRenameDialogNeverShow")
   arg1:setState(var117)
end

local var120 = {}
var120.Plugin = var3.Plugin
var120.Stylizer = var3.Stylizer
var120.Localization = var3.Localization
var10 = var3.withContext(var120)(var10)
return var10
