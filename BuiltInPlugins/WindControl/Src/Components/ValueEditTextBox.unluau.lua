-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework).UI.DEPRECATED_TextInput
local var3 = var1.Component:extend("ValueEditTextBox")
function var3.init(arg1)
   arg1.textBoxRef = var1.createRef()
   arg1.enteredText = ""
   function arg1.onTextChanged(arg1)
      arg1.enteredText = arg1
   end
   
   function arg1.onFocusLost(arg1)
      local var0 = arg1.props
      local var1 = arg1.enteredText
      if arg1 then
         if var1 == "" then
            var0.OnTextConfirmed(var1)
         end
      end
      var0.OnEditCanceled()
   end
   
end

function var3.render(arg1)
   local var0 = arg1.props
   local var38 = {}
   var38.Size = var0.Size
   var38.Style = "FilledRoundedBorder"
   var38.LayoutOrder = var0.LayoutOrder
   var38.TextWrapped = true
   var38.ShouldFocus = true
   var38.TextXAlignment = Enum.TextXAlignment.Left
   var38.ForwardRef = arg1.textBoxRef
   var38.PlaceholderText = var0.Text
   var38.OnTextChanged = arg1.onTextChanged
   var38.OnFocusLost = arg1.onFocusLost
   return var1.createElement(var2, var38)
end

function var3.didMount(arg1)
   arg1.textBoxRef.current:CaptureFocus()
end

return var3
