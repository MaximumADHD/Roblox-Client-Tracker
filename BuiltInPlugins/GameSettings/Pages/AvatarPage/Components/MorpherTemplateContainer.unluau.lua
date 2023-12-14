-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Parent.Packages.Roact)
local var1 = require(script.Parent.Parent.Components.MorpherTemplate)
local var2 = var0.Component:extend("ComponentMorpherTemplateContainer")
function var2.init(arg1)
   arg1.frameRef = var0.createRef()
end

function var2.render(arg1)
   local var0 = {}
   function var0.Change.AbsoluteContentSize(arg1)
      arg1.frameRef = var0.createRef()
   end
   
   var0.UIListLayoutVertical = var0.createElement("UIListLayout", {})
   if arg1.props.StateTemplates then
      if arg1.props.StateTemplates.templates then
         local var0 = arg1.props.StateTemplates
         local var1 = pairs(var0.templates)
         local var183 = {}
         var183.ThemeData = arg1.props.ThemeData
         var183.template = var0
         var183.StateTemplates = arg1.props.StateTemplates
         var183.IsEnabled = arg1.props.IsEnabled
         var183.IsGameShutdownRequired = arg1.props.IsGameShutdownRequired
         var183.AssetOverrideErrors = arg1.props.AssetOverrideErrors
         var183.Mouse = arg1.props.Mouse
         var183.IsPlacePublished = arg1.props.IsPlacePublished
         var183.clobberTemplate = arg1.props.clobberTemplate
         tostring(var0) = var0.createElement(var1, var183)
      end
   end
   local var204 = {}
   var204.Size = UDim2.new(1, 0, 1, 0)
   var204.BorderSizePixel = 0
   var204.BackgroundTransparency = 1
   local var214 = var0.Ref
   var0.Ref = arg1.frameRef
   var214 = var0
   return var0.createElement("Frame", var204, var214)
end

return var2
