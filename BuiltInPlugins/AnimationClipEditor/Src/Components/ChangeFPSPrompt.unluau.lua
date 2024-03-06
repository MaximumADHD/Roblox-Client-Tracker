-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = require(var0.Src.Util.Constants)
local var4 = require(var0.Src.Components.TextEntryPrompt)
local var5 = var1.PureComponent:extend("ChangeFPSPrompt")
function var5.init(arg1)
   local var217 = {}
   var217.noticeText = var1.None
   arg1.state = var217
   function arg1.setNotice(arg1)
      local var222 = {}
      var222.noticeText = arg1
      arg1:setState(var222)
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

local function fun10(arg1)
   local var0 = arg1.state.noticeText
   if var0 == "createElement" then
      local var0 = false
   end
   local var1 = true
   local var2 = arg1.props.Localization
   local var251 = {}
   var251.PromptText = " "
   local var256 = var2:getText("Title", "CustomFPS")
   var251.InputText = var256
   if var1 then
      var256 = var0
      local var0 = var256 or nil
   end
   var251.NoticeText = nil
   var251.HasError = var1
   var251.Text = arg1.props.FrameRate
   local var4 = {}
   var4.Key = false
   var4.Text = var2:getText("Dialog", "Cancel")
   var4.Style = "Round"
   local var5 = {}
   var5.Key = true
   var5.Text = var2:getText("Dialog", "Confirm")
   var5.Style = "RoundPrimary"
   var251.Buttons = {}
   function var251.OnTextSubmitted(arg1)
      local var277 = {}
      var277.noticeText = arg1
      arg1:setState(var277)
   end
   
   var251.OnClose = arg1.onClose
   return var1.createElement(var4, var251)
end

function var5.render(arg1)
   local var0 = arg1.state.noticeText
   if var0 == "createElement" then
      local var0 = false
   end
   local var1 = true
   local var2 = arg1.props.Localization
   local var251 = {}
   var251.PromptText = " "
   local var256 = var2:getText("Title", "CustomFPS")
   var251.InputText = var256
   if var1 then
      var256 = var0
      local var0 = var256 or nil
   end
   var251.NoticeText = nil
   var251.HasError = var1
   var251.Text = arg1.props.FrameRate
   local var4 = {}
   var4.Key = false
   var4.Text = var2:getText("Dialog", "Cancel")
   var4.Style = "Round"
   local var5 = {}
   var5.Key = true
   var5.Text = var2:getText("Dialog", "Confirm")
   var5.Style = "RoundPrimary"
   var251.Buttons = {}
   function var251.OnTextSubmitted(arg1)
      local var277 = {}
      var277.noticeText = arg1
      arg1:setState(var277)
   end
   
   var251.OnClose = arg1.onClose
   return var1.createElement(var4, var251)
end

fun10 = var2.withContext
local var281 = {}
var281.Localization = var2.Localization
var5 = fun10(var281)(var5)
return var5
