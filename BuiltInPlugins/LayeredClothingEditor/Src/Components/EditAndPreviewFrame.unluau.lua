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
   local var259 = {}
   var259.Title = var1:getText("Editor", "EditAndPreview")
   var259.PromptText = var0.PromptText
   var259.NextButtonText = var1:getText("Flow", "Next")
   var259.BackButtonText = var1:getText("Flow", "Back")
   var259.NextButtonEnabled = var0.InBounds
   var259.BackButtonEnabled = true
   var259.HasBackButton = true
   var259.GoToNext = var0.GoToNext
   var259.GoToPrevious = var0.GoToPrevious
   return var1.createElement(var4, var259)
end

function var5.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var259 = {}
   var259.Title = var1:getText("Editor", "EditAndPreview")
   var259.PromptText = var0.PromptText
   var259.NextButtonText = var1:getText("Flow", "Next")
   var259.BackButtonText = var1:getText("Flow", "Back")
   var259.NextButtonEnabled = var0.InBounds
   var259.BackButtonEnabled = true
   var259.HasBackButton = true
   var259.GoToNext = var0.GoToNext
   var259.GoToPrevious = var0.GoToPrevious
   return var1.createElement(var4, var259)
end

fun3 = var3.withContext
local var275 = {}
local var276 = var3.Localization
var275.Localization = var276
var5 = fun3(var275)(var5)
function var276(arg1, arg2)
   local var0 = {}
   var0.InBounds = arg1.selectItem.inBounds
   return var0
end

return require(var0.Packages.RoactRodux).connect(var276)(var5)
