-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("MaterialGenerator")
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.React)
local var3 = var1.ContextServices
local var4 = var3.Localization
local var5 = var3.Stylizer
local var6 = var1.UI
local var7 = var6.Pane
local var8 = var6.TextInput
local var9 = require(var0.Src.Components.PromptToolbar)
local var10 = require(var0.Src.Util.GenerationContext)
local var11 = require(var0.Src.Resources.Theme)
return function(arg1)
   local var0 = var5:use("Prompt")
   local var1 = var2.useContext(var10)
   local var2 = var1.generateMaterialVariants
   local var3 = var1.isGenerating
   local var4 = var1.promptText
   local var5 = var2.useRef(nil)
   local var58 = var4
   local var7 = var2.useCallback(function()
      local var52 = var4
      if var52 == "" then
         var2()
      end
      warn("Empty prompt text")
   end, {})
   local var8 = arg1.isDisabled
   if not var8 then
      var8 = var3
      if not var8 then
         if var4 == "" then
            local var0 = false
         end
         local var0 = true
      end
   end
   local var66 = arg1.isDisabled
   local var70 = {}
   var70.BackgroundColor = var0.BackgroundColor
   var70.LayoutOrder = arg1.LayoutOrder
   var70.Padding = var0.Padding
   var70.Size = arg1.Size
   local var75 = {}
   local var79 = {}
   var79.BottomComponent = var9
   local var81 = {}
   var81.Size = var0.PromptToolbarSize
   var81.isDisabled = var8
   var81.isGenerating = var3
   function var81.onClick()
      if var5 then
         local var0 = var5.current
         if var0 then
            var0:CaptureFocus()
         end
      end
   end
   
   var81.onGenerate = var7
   var79.BottomComponentProps = var81
   var79.Disabled = var2
   var79.MultiLine = var0.MultiLine
   var79.OnEnter = var7
   var79.OnTextChanged = var1.setPromptText
   var79.PlaceholderText = var4:use():getText(script.Name, "PromptPlaceholderText")
   var79.ForwardRef = var5
   var79.Size = UDim2.fromScale(1, 1)
   var79.Text = var4
   var75.PromptTextInput = var2.createElement(var8, var79)
   return var2.createElement(var7, var70, var75)
end
