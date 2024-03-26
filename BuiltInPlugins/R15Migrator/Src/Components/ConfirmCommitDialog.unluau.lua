-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("R15Migrator")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI
local var5 = var4.TextLabel
local var6 = var4.StyledDialog
local var7 = var1.PureComponent:extend("ConfirmCommitDialog")
function var7.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.OnConfirm
   local var3 = var0.OnClose
   local var331 = {}
   var331.Style = "AcceptCancel"
   var331.Modal = true
   var331.Title = var1:getText("ScriptConversion", "CommittingScripts")
   var331.MinContentSize = var0.Stylizer.MinContentSize
   local var340 = {}
   var340.Key = "Confirm"
   var340.Text = var1:getText("ScriptConversion", "Confirm")
   local var346 = {}
   var346.Key = "Cancel"
   var346.Text = var1:getText("ScriptConversion", "Cancel")
   var331.Buttons = {}
   function var331.OnButtonPressed(arg1)
      if arg1 == "Confirm" then
         if var2 then
            var2()
         end
      end
      if var3 then
         var3()
      end
   end
   
   var331.OnClose = var3
   local var357 = {}
   local var361 = {}
   var361.Text = var1:getText("ScriptConversion", "CommitWarning")
   var361.TextWrapped = true
   var357.Contents = var1.createElement(var5, var361)
   return var1.createElement(var6, var331, var357)
end

local var370 = {}
var370.Localization = var3.Localization
var370.Stylizer = var3.Stylizer
var7 = var3.withContext(var370)(var7)
return var7
