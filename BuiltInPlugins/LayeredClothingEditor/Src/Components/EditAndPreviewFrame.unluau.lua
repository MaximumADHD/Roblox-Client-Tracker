-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = require(var0.Packages.AvatarToolsShared).Components.FlowScreenLayout
local var5 = var1.PureComponent:extend("EditAndPreviewFrame")
var2.Util.Typecheck.wrap(var5, script)
local function fun3(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var261 = {}
   var261.Title = var1:getText("Editor", "EditAndPreview")
   var261.PromptText = var0.PromptText
   var261.NextButtonText = var1:getText("Flow", "Next")
   var261.BackButtonText = var1:getText("Flow", "Back")
   var261.NextButtonEnabled = var0.InBounds
   var261.BackButtonEnabled = true
   var261.HasBackButton = true
   var261.GoToNext = var0.GoToNext
   var261.GoToPrevious = var0.GoToPrevious
   return var1.createElement(var4, var261)
end

function var5.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var261 = {}
   var261.Title = var1:getText("Editor", "EditAndPreview")
   var261.PromptText = var0.PromptText
   var261.NextButtonText = var1:getText("Flow", "Next")
   var261.BackButtonText = var1:getText("Flow", "Back")
   var261.NextButtonEnabled = var0.InBounds
   var261.BackButtonEnabled = true
   var261.HasBackButton = true
   var261.GoToNext = var0.GoToNext
   var261.GoToPrevious = var0.GoToPrevious
   return var1.createElement(var4, var261)
end

fun3 = var3.withContext
local var277 = {}
local var278 = var3.Localization
var277.Localization = var278
var5 = fun3(var277)(var5)
function var278(arg1, arg2)
   local var0 = {}
   var0.InBounds = arg1.selectItem.inBounds
   return var0
end

return require(var0.Packages.RoactRodux).connect(var278)(var5)
