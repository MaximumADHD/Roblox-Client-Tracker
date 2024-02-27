-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = require(var0.Src.Util.Constants)
local var4 = require(var0.Src.Components.TextEntryPrompt)
local var5 = var1.PureComponent:extend("ChangePlaybackSpeedPrompt")
function var5.init(arg1)
   local var29 = {}
   var29.noticeText = var1.None
   arg1.state = var29
   function arg1.setNotice(arg1)
      local var34 = {}
      var34.noticeText = arg1
      arg1:setState(var34)
   end
   
   function arg1.onClose()
      arg1.setNotice(var1.None)
      if arg1.props.OnClose then
         arg1.props.OnClose()
      end
   end
   
   function arg1.setPlaybackSpeed()
      local var0 = string.match(var3, "^%s*([0-9]*[.]?[0-9]*)[xX]?%s*$")
      return tonumber()
   end
   
end

local function fun5(arg1)
   local var0 = arg1.state.noticeText
   if var0 == "createElement" then
      local var0 = false
   end
   local var1 = true
   local var2 = arg1.props.Localization
   local var66 = {}
   var66.PromptText = " "
   local var71 = var2:getText("Title", "CustomPlaybackSpeed")
   var66.InputText = var71
   if var1 then
      var71 = var0
      local var0 = var71 or nil
   end
   var66.NoticeText = nil
   var66.HasError = var1
   var66.Text = arg1.props.PlaybackSpeed
   local var4 = {}
   var4.Key = false
   var4.Text = var2:getText("Dialog", "Cancel")
   var4.Style = "Round"
   local var5 = {}
   var5.Key = true
   var5.Text = var2:getText("Dialog", "Confirm")
   var5.Style = "RoundPrimary"
   var66.Buttons = {}
   function var66.OnTextSubmitted(arg1)
      local var92 = {}
      var92.noticeText = arg1
      arg1:setState(var92)
   end
   
   var66.OnClose = arg1.onClose
   return var1.createElement(var4, var66)
end

function var5.render(arg1)
   local var0 = arg1.state.noticeText
   if var0 == "createElement" then
      local var0 = false
   end
   local var1 = true
   local var2 = arg1.props.Localization
   local var66 = {}
   var66.PromptText = " "
   local var71 = var2:getText("Title", "CustomPlaybackSpeed")
   var66.InputText = var71
   if var1 then
      var71 = var0
      local var0 = var71 or nil
   end
   var66.NoticeText = nil
   var66.HasError = var1
   var66.Text = arg1.props.PlaybackSpeed
   local var4 = {}
   var4.Key = false
   var4.Text = var2:getText("Dialog", "Cancel")
   var4.Style = "Round"
   local var5 = {}
   var5.Key = true
   var5.Text = var2:getText("Dialog", "Confirm")
   var5.Style = "RoundPrimary"
   var66.Buttons = {}
   function var66.OnTextSubmitted(arg1)
      local var92 = {}
      var92.noticeText = arg1
      arg1:setState(var92)
   end
   
   var66.OnClose = arg1.onClose
   return var1.createElement(var4, var66)
end

fun5 = var2.withContext
local var96 = {}
var96.Localization = var2.Localization
var5 = fun5(var96)(var5)
return var5
