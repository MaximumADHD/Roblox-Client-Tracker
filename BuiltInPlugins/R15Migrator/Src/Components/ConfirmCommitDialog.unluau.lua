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
   local var334 = {}
   var334.Style = "AcceptCancel"
   var334.Modal = true
   var334.Title = var1:getText("ScriptConversion", "CommittingScripts")
   var334.MinContentSize = var0.Stylizer.MinContentSize
   local var343 = {}
   var343.Key = "Confirm"
   var343.Text = var1:getText("ScriptConversion", "Confirm")
   local var349 = {}
   var349.Key = "Cancel"
   var349.Text = var1:getText("ScriptConversion", "Cancel")
   var334.Buttons = {}
   function var334.OnButtonPressed(arg1)
      if arg1 == "Confirm" then
         if var2 then
            var2()
         end
      end
      if var3 then
         var3()
      end
   end
   
   var334.OnClose = var3
   local var360 = {}
   local var364 = {}
   var364.Text = var1:getText("ScriptConversion", "CommitWarning")
   var364.TextWrapped = true
   var360.Contents = var1.createElement(var5, var364)
   return var1.createElement(var6, var334, var360)
end

local var373 = {}
var373.Localization = var3.Localization
var373.Stylizer = var3.Stylizer
var7 = var3.withContext(var373)(var7)
return var7
