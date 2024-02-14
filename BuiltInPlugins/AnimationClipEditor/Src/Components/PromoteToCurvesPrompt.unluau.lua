-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = require(var0.Src.Util.Constants)
local var4 = require(var0.Src.Components.EditEventsDialog.FocusedPrompt)
local var5 = var1.PureComponent:extend("PromoteToCurvesPrompt")
function var5.init(arg1)
   function arg1.onPromote()
      if arg1.props.OnPromote then
         arg1.props.OnPromote()
      end
   end
   
   function arg1.onClose()
      if arg1.props.OnClose then
         arg1.props.OnClose()
      end
   end
   
end

local function fun4(arg1)
   local var0 = arg1.props.Localization
   local var48 = {}
   var48.PromptText = var0:getText("Dialog", "PromotePrompt1")
   var48.Size = UDim2.new(0, var3.PROMPT_SIZE.Width.Offset, 0, 180)
   local var1 = {}
   var1.Key = false
   var1.Text = var0:getText("Dialog", "Cancel")
   var1.Style = "Round"
   local var2 = {}
   var2.Key = true
   var2.Text = var0:getText("Dialog", "Confirm")
   var2.Style = "RoundPrimary"
   var48.Buttons = {}
   function var48.OnButtonClicked()
      if arg1.props.OnPromote then
         arg1.props.OnPromote()
      end
   end
   
   var48.OnClose = arg1.onClose
   return var1.createElement(var4, var48)
end

function var5.render(arg1)
   local var0 = arg1.props.Localization
   local var48 = {}
   var48.PromptText = var0:getText("Dialog", "PromotePrompt1")
   var48.Size = UDim2.new(0, var3.PROMPT_SIZE.Width.Offset, 0, 180)
   local var1 = {}
   var1.Key = false
   var1.Text = var0:getText("Dialog", "Cancel")
   var1.Style = "Round"
   local var2 = {}
   var2.Key = true
   var2.Text = var0:getText("Dialog", "Confirm")
   var2.Style = "RoundPrimary"
   var48.Buttons = {}
   function var48.OnButtonClicked()
      if arg1.props.OnPromote then
         arg1.props.OnPromote()
      end
   end
   
   var48.OnClose = arg1.onClose
   return var1.createElement(var4, var48)
end

fun4 = var2.withContext
local var85 = {}
var85.Localization = var2.Localization
var5 = fun4(var85)(var5)
return var5
