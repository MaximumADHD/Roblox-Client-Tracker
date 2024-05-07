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
   local var169 = {}
   var169.Size = var0.Size
   var169.LayoutOrder = var0.LayoutOrder
   var169.BackgroundTransparency = 1
   var169.TextWrapped = true
   var169.ShouldFocus = true
   var169.TextXAlignment = Enum.TextXAlignment.Right
   var169.ForwardRef = arg1.textBoxRef
   var169.PlaceholderText = var0.Localization:getText("Info", "NewGroupName")
   function var169.OnTextChanged(arg1)
      arg1.textBoxRef = var1.createRef()
      arg1.enteredText = ""
   end
   
   function var169.OnFocusLost(arg1)
      var0.text = arg1
   end
   
   return var1.createElement(var4, var169)
end

function var5.didMount(arg1)
   arg1.textBoxRef.current:CaptureFocus()
end

local var194 = {}
var194.Stylizer = var3.Stylizer
var194.Localization = var3.Localization
var5 = var3.withContext(var194)(var5)
return var5
