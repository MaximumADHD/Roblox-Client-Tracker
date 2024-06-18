-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = require(var0.Src.Util.Constants)
local var4 = require(var0.Src.Components.TextEntryPrompt)
local var5 = var1.PureComponent:extend("ChangeFPSPrompt")
function var5.init(arg1)
   local var88 = {}
   var88.noticeText = var1.None
   arg1.state = var88
   function arg1.setNotice(arg1)
      local var93 = {}
      var93.noticeText = arg1
      arg1:setState(var93)
   end
   
   function arg1.onClose()
      arg1.setNotice(var1.None)
      if arg1.props.OnClose then
         arg1.props.OnClose()
      end
   end
   
   function arg1.setFrameRate()
      return tonumber(var3)
   end
   
end

local function fun5(arg1)
   local var0 = arg1.state.noticeText
   if var0 == "createElement" then
      local var0 = false
   end
   local var1 = true
   local var2 = arg1.props.Localization
   local var122 = {}
   var122.PromptText = " "
   local var127 = var2:getText("Title", "CustomFPS")
   var122.InputText = var127
   if var1 then
      var127 = var0
      local var0 = var127 or nil
   end
   var122.NoticeText = nil
   var122.HasError = var1
   var122.Text = arg1.props.FrameRate
   local var4 = {}
   var4.Key = false
   var4.Text = var2:getText("Dialog", "Cancel")
   var4.Style = "Round"
   local var5 = {}
   var5.Key = true
   var5.Text = var2:getText("Dialog", "Confirm")
   var5.Style = "RoundPrimary"
   var122.Buttons = {}
   function var122.OnTextSubmitted(arg1)
      local var148 = {}
      var148.noticeText = arg1
      arg1:setState(var148)
   end
   
   var122.OnClose = arg1.onClose
   return var1.createElement(var4, var122)
end

function var5.render(arg1)
   local var0 = arg1.state.noticeText
   if var0 == "createElement" then
      local var0 = false
   end
   local var1 = true
   local var2 = arg1.props.Localization
   local var122 = {}
   var122.PromptText = " "
   local var127 = var2:getText("Title", "CustomFPS")
   var122.InputText = var127
   if var1 then
      var127 = var0
      local var0 = var127 or nil
   end
   var122.NoticeText = nil
   var122.HasError = var1
   var122.Text = arg1.props.FrameRate
   local var4 = {}
   var4.Key = false
   var4.Text = var2:getText("Dialog", "Cancel")
   var4.Style = "Round"
   local var5 = {}
   var5.Key = true
   var5.Text = var2:getText("Dialog", "Confirm")
   var5.Style = "RoundPrimary"
   var122.Buttons = {}
   function var122.OnTextSubmitted(arg1)
      local var148 = {}
      var148.noticeText = arg1
      arg1:setState(var148)
   end
   
   var122.OnClose = arg1.onClose
   return var1.createElement(var4, var122)
end

fun5 = var2.withContext
local var152 = {}
var152.Localization = var2.Localization
var5 = fun5(var152)(var5)
return var5
