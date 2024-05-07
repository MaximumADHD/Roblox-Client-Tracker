-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = require(var0.Src.Util.Constants)
local var4 = require(var0.Src.Components.TextEntryPrompt)
local var5 = var1.PureComponent:extend("ChangeGridSpeedPrompt")
function var5.init(arg1)
   local var70 = {}
   var70.noticeText = var1.None
   arg1.state = var70
   function arg1.setNotice(arg1)
      local var75 = {}
      var75.noticeText = arg1
      arg1:setState(var75)
   end
   
   function arg1.onClose()
      arg1.setNotice(var1.None)
      if arg1.props.OnClose then
         arg1.props.OnClose()
      end
   end
   
   function arg1.setGridSpeed()
      return tonumber(arg1)
   end
   
end

local function fun5(arg1)
   local var0 = arg1.state.noticeText
   if var0 == "createElement" then
      local var0 = false
   end
   local var1 = true
   local var2 = arg1.props.Localization
   local var104 = {}
   var104.PromptText = " "
   local var109 = var2:getText("Title", "CustomGridSpeed")
   var104.InputText = var109
   if var1 then
      var109 = var0
      local var0 = var109 or nil
   end
   var104.NoticeText = nil
   var104.HasError = var1
   var104.Text = arg1.props.GridSpeed
   local var4 = {}
   var4.Key = false
   var4.Text = var2:getText("Dialog", "Cancel")
   var4.Style = "Round"
   local var5 = {}
   var5.Key = true
   var5.Text = var2:getText("Dialog", "Confirm")
   var5.Style = "RoundPrimary"
   var104.Buttons = {}
   function var104.OnTextSubmitted(arg1)
      local var130 = {}
      var130.noticeText = arg1
      arg1:setState(var130)
   end
   
   var104.OnClose = arg1.onClose
   return var1.createElement(var4, var104)
end

function var5.render(arg1)
   local var0 = arg1.state.noticeText
   if var0 == "createElement" then
      local var0 = false
   end
   local var1 = true
   local var2 = arg1.props.Localization
   local var104 = {}
   var104.PromptText = " "
   local var109 = var2:getText("Title", "CustomGridSpeed")
   var104.InputText = var109
   if var1 then
      var109 = var0
      local var0 = var109 or nil
   end
   var104.NoticeText = nil
   var104.HasError = var1
   var104.Text = arg1.props.GridSpeed
   local var4 = {}
   var4.Key = false
   var4.Text = var2:getText("Dialog", "Cancel")
   var4.Style = "Round"
   local var5 = {}
   var5.Key = true
   var5.Text = var2:getText("Dialog", "Confirm")
   var5.Style = "RoundPrimary"
   var104.Buttons = {}
   function var104.OnTextSubmitted(arg1)
      local var130 = {}
      var130.noticeText = arg1
      arg1:setState(var130)
   end
   
   var104.OnClose = arg1.onClose
   return var1.createElement(var4, var104)
end

fun5 = var2.withContext
local var134 = {}
var134.Localization = var2.Localization
var5 = fun5(var134)(var5)
return var5
