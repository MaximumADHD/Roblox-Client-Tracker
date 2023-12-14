-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI
local var5 = var4.TextLabel
local var6 = var4.StyledDialog
local var7 = var1.PureComponent:extend("ConfirmRevertDialog")
function var7.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.OnConfirm
   local var3 = var0.OnClose
   local var415 = {}
   var415.Style = "AcceptCancel"
   var415.Modal = true
   var415.Title = var1:getText("ScriptConversion", "RevertingScripts")
   var415.MinContentSize = var0.Stylizer.MinContentSize
   local var424 = {}
   var424.Key = "Confirm"
   var424.Text = var1:getText("ScriptConversion", "Confirm")
   local var430 = {}
   var430.Key = "Cancel"
   var430.Text = var1:getText("ScriptConversion", "Cancel")
   var415.Buttons = {}
   function var415.OnButtonPressed(arg1)
      if arg1 == "Confirm" then
         if var2 then
            var2()
         end
      end
      if var3 then
         var3()
      end
   end
   
   var415.OnClose = var3
   local var441 = {}
   local var445 = {}
   var445.Text = var1:getText("ScriptConversion", "RevertWarning")
   var445.TextWrapped = true
   var441.Contents = var1.createElement(var5, var445)
   return var1.createElement(var6, var415, var441)
end

local var454 = {}
var454.Localization = var3.Localization
var454.Stylizer = var3.Stylizer
var7 = var3.withContext(var454)(var7)
return var7
