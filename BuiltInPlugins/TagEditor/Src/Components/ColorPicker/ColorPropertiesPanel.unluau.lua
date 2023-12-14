-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI
local var5 = var4.Pane
local var6 = var4.TextInput
local var7 = var2.Util.LayoutOrderIterator
local var8 = require(script.Parent.ColorStringValidators)
local var9 = var1.PureComponent:extend("ColorPropertiesPanel")
function var9.init(arg1)
   function arg1.onFocusLostHex()
      if arg1.lastHexValid then
         arg1.props.OnTextChangedHex(arg1.lastHex)
      end
   end
   
   function arg1.onFocusLostRGB()
      if arg1.lastRGBValid then
         arg1.props.OnTextChangedRGB(arg1.lastRGB)
      end
   end
   
   function arg1.onFocusLostHSV()
      if arg1.lastHSVValid then
         arg1.props.OnTextChangedHSV(arg1.lastHSV)
      end
   end
   
   function arg1.onTextChangedHex(arg1, arg2)
      arg1.lastHexValid = arg2
      arg1.lastHex = arg1
   end
   
   function arg1.onTextChangedRGB(arg1, arg2)
      arg1.lastRGBValid = arg2
      arg1.lastRGB = arg1
   end
   
   function arg1.onTextChangedHSV(arg1, arg2)
      arg1.lastHSVValid = arg2
      arg1.lastHSV = arg1
   end
   
end

local function fun7(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer.ColorPropertiesPanel
   local var2 = var0.Localization
   local var3 = var7.new()
   local var4 = var0.Color
   local var5 = var4.r
   local var6 = var4.g
   local var7 = var4.b
   local var85 = {}
   var85.Size = var1.Size
   var85.AutomaticSize = Enum.AutomaticSize.Y
   var85.Layout = Enum.FillDirection.Vertical
   var85.LayoutOrder = var0.LayoutOrder
   var85.Spacing = var1.Spacing
   local var91 = {}
   local var95 = {}
   var95.Size = var1.TextInputSize
   var95.Text = string.format("#%02x%02x%02x", var5 * 255, var6 * 255, var7 * 255)
   var95.BottomText = var2:getText("ColorPicker", "Hex")
   var95.LayoutOrder = var3:getNextOrder()
   var95.Style = "ColorTextInput"
   var95.OnFocusLost = arg1.onFocusLostHex
   local var111 = var8
   var95.OnValidateText = var111.validateHex
   var95.OnTextChanged = arg1.onTextChangedHex
   var91.Hex = var1.createElement(var6, var95)
   local var118 = {}
   var118.Size = var1.TextInputSize
   var118.Text = `{var111}{var5 * 255}{var6 * 255}`
   var118.LayoutOrder = var3:getNextOrder()
   var118.BottomText = var2:getText("ColorPicker", "RGB")
   var118.Style = "ColorTextInput"
   var118.OnFocusLost = arg1.onFocusLostRGB
   local var134 = var8
   var118.OnValidateText = var134.validateRGB
   var118.OnTextChanged = arg1.onTextChangedRGB
   var91.RGB = var1.createElement(var6, var118)
   local var141 = {}
   var141.Size = var1.TextInputSize
   var141.Text = `{var134}{var0.Hue * 360}{var0.Saturation * 100}`
   var141.BottomText = var2:getText("ColorPicker", "HSV")
   var141.LayoutOrder = var3:getNextOrder()
   var141.Style = "ColorTextInput"
   var141.OnFocusLost = arg1.onFocusLostHSV
   var141.OnValidateText = var8.validateHSV
   var141.OnTextChanged = arg1.onTextChangedHSV
   var91.HSV = var1.createElement(var6, var141)
   return var1.createElement(var5, var85, var91)
end

function var9.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer.ColorPropertiesPanel
   local var2 = var0.Localization
   local var3 = var7.new()
   local var4 = var0.Color
   local var5 = var4.r
   local var6 = var4.g
   local var7 = var4.b
   local var85 = {}
   var85.Size = var1.Size
   var85.AutomaticSize = Enum.AutomaticSize.Y
   var85.Layout = Enum.FillDirection.Vertical
   var85.LayoutOrder = var0.LayoutOrder
   var85.Spacing = var1.Spacing
   local var91 = {}
   local var95 = {}
   var95.Size = var1.TextInputSize
   var95.Text = string.format("#%02x%02x%02x", var5 * 255, var6 * 255, var7 * 255)
   var95.BottomText = var2:getText("ColorPicker", "Hex")
   var95.LayoutOrder = var3:getNextOrder()
   var95.Style = "ColorTextInput"
   var95.OnFocusLost = arg1.onFocusLostHex
   local var111 = var8
   var95.OnValidateText = var111.validateHex
   var95.OnTextChanged = arg1.onTextChangedHex
   var91.Hex = var1.createElement(var6, var95)
   local var118 = {}
   var118.Size = var1.TextInputSize
   var118.Text = `{var111}{var5 * 255}{var6 * 255}`
   var118.LayoutOrder = var3:getNextOrder()
   var118.BottomText = var2:getText("ColorPicker", "RGB")
   var118.Style = "ColorTextInput"
   var118.OnFocusLost = arg1.onFocusLostRGB
   local var134 = var8
   var118.OnValidateText = var134.validateRGB
   var118.OnTextChanged = arg1.onTextChangedRGB
   var91.RGB = var1.createElement(var6, var118)
   local var141 = {}
   var141.Size = var1.TextInputSize
   var141.Text = `{var134}{var0.Hue * 360}{var0.Saturation * 100}`
   var141.BottomText = var2:getText("ColorPicker", "HSV")
   var141.LayoutOrder = var3:getNextOrder()
   var141.Style = "ColorTextInput"
   var141.OnFocusLost = arg1.onFocusLostHSV
   var141.OnValidateText = var8.validateHSV
   var141.OnTextChanged = arg1.onTextChangedHSV
   var91.HSV = var1.createElement(var6, var141)
   return var1.createElement(var5, var85, var91)
end

fun7 = var3.withContext
local var162 = {}
var162.Analytics = var3.Analytics
var162.Localization = var3.Localization
var162.Stylizer = var2.Style.Stylizer
var9 = fun7(var162)(var9)
return var9
