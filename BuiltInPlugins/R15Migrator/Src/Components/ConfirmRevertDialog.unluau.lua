-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("R15Migrator")
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
   local var29 = {}
   var29.Style = "AcceptCancel"
   var29.Modal = true
   var29.Title = var1:getText("ScriptConversion", "RevertingScripts")
   var29.MinContentSize = var0.Stylizer.MinContentSize
   local var38 = {}
   var38.Key = "Confirm"
   var38.Text = var1:getText("ScriptConversion", "Confirm")
   local var44 = {}
   var44.Key = "Cancel"
   var44.Text = var1:getText("ScriptConversion", "Cancel")
   var29.Buttons = {}
   function var29.OnButtonPressed(arg1)
      if arg1 == "Confirm" then
         if var2 then
            var2()
         end
      end
      if var3 then
         var3()
      end
   end
   
   var29.OnClose = var3
   local var55 = {}
   local var59 = {}
   var59.Text = var1:getText("ScriptConversion", "RevertWarning")
   var59.TextWrapped = true
   var55.Contents = var1.createElement(var5, var59)
   return var1.createElement(var6, var29, var55)
end

local var68 = {}
var68.Localization = var3.Localization
var68.Stylizer = var3.Stylizer
var7 = var3.withContext(var68)(var7)
return var7
