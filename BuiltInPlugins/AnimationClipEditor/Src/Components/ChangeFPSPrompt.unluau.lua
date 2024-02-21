-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = require(var0.Src.Util.Constants)
local var4 = require(var0.Src.Components.TextEntryPrompt)
local var5 = var1.PureComponent:extend("ChangeFPSPrompt")
function var5.init(arg1)
   local var86 = {}
   var86.noticeText = var1.None
   arg1.state = var86
   function arg1.setNotice(arg1)
      local var91 = {}
      var91.noticeText = arg1
      arg1:setState(var91)
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
   local var120 = {}
   var120.PromptText = " "
   local var125 = var2:getText("Title", "CustomFPS")
   var120.InputText = var125
   if var1 then
      var125 = var0
      local var0 = var125 or nil
   end
   var120.NoticeText = nil
   var120.HasError = var1
   var120.Text = arg1.props.FrameRate
   local var4 = {}
   var4.Key = false
   var4.Text = var2:getText("Dialog", "Cancel")
   var4.Style = "Round"
   local var5 = {}
   var5.Key = true
   var5.Text = var2:getText("Dialog", "Confirm")
   var5.Style = "RoundPrimary"
   var120.Buttons = {}
   function var120.OnTextSubmitted(arg1)
      local var146 = {}
      var146.noticeText = arg1
      arg1:setState(var146)
   end
   
   var120.OnClose = arg1.onClose
   return var1.createElement(var4, var120)
end

function var5.render(arg1)
   local var0 = arg1.state.noticeText
   if var0 == "createElement" then
      local var0 = false
   end
   local var1 = true
   local var2 = arg1.props.Localization
   local var120 = {}
   var120.PromptText = " "
   local var125 = var2:getText("Title", "CustomFPS")
   var120.InputText = var125
   if var1 then
      var125 = var0
      local var0 = var125 or nil
   end
   var120.NoticeText = nil
   var120.HasError = var1
   var120.Text = arg1.props.FrameRate
   local var4 = {}
   var4.Key = false
   var4.Text = var2:getText("Dialog", "Cancel")
   var4.Style = "Round"
   local var5 = {}
   var5.Key = true
   var5.Text = var2:getText("Dialog", "Confirm")
   var5.Style = "RoundPrimary"
   var120.Buttons = {}
   function var120.OnTextSubmitted(arg1)
      local var146 = {}
      var146.noticeText = arg1
      arg1:setState(var146)
   end
   
   var120.OnClose = arg1.onClose
   return var1.createElement(var4, var120)
end

fun5 = var2.withContext
local var150 = {}
var150.Localization = var2.Localization
var5 = fun5(var150)(var5)
return var5
