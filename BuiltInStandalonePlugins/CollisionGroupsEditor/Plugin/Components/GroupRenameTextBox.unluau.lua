-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI.DEPRECATED_TextInput
local var5 = var1.Component:extend("GroupRenameTextBox")
function var5.init(arg1)
   arg1.textBoxRef = var1.createRef()
   arg1.enteredText = ""
end

function var5.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.Group
   local var32 = {}
   var32.Size = var0.Size
   var32.LayoutOrder = var0.LayoutOrder
   var32.BackgroundTransparency = 1
   var32.TextWrapped = true
   var32.ShouldFocus = true
   var32.TextXAlignment = Enum.TextXAlignment.Right
   var32.ForwardRef = arg1.textBoxRef
   var32.PlaceholderText = var0.Localization:getText("Info", "NewGroupName")
   function var32.OnTextChanged(arg1)
      arg1.textBoxRef = var1.createRef()
      arg1.enteredText = ""
   end
   
   function var32.OnFocusLost(arg1)
      var0.text = arg1
   end
   
   return var1.createElement(var4, var32)
end

function var5.didMount(arg1)
   arg1.textBoxRef.current:CaptureFocus()
end

local var57 = {}
var57.Stylizer = var3.Stylizer
var57.Localization = var3.Localization
var5 = var3.withContext(var57)(var5)
return var5
