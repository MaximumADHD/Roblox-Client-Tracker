-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
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
   local var336 = {}
   var336.Style = "AcceptCancel"
   var336.Modal = true
   var336.Title = var1:getText("ScriptConversion", "CommittingScripts")
   var336.MinContentSize = var0.Stylizer.MinContentSize
   local var345 = {}
   var345.Key = "Confirm"
   var345.Text = var1:getText("ScriptConversion", "Confirm")
   local var351 = {}
   var351.Key = "Cancel"
   var351.Text = var1:getText("ScriptConversion", "Cancel")
   var336.Buttons = {}
   function var336.OnButtonPressed(arg1)
      if arg1 == "Confirm" then
         if var2 then
            var2()
         end
      end
      if var3 then
         var3()
      end
   end
   
   var336.OnClose = var3
   local var362 = {}
   local var366 = {}
   var366.Text = var1:getText("ScriptConversion", "CommitWarning")
   var366.TextWrapped = true
   var362.Contents = var1.createElement(var5, var366)
   return var1.createElement(var6, var336, var362)
end

local var375 = {}
var375.Localization = var3.Localization
var375.Stylizer = var3.Stylizer
var7 = var3.withContext(var375)(var7)
return var7
