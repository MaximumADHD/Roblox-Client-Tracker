-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var0.Core.Util.Constants)
local var4 = require(var1.Framework).ContextServices
local var5 = require(var0.Core.Components.RoundButton)
local var6 = var2.PureComponent:extend("MessageBoxButton")
function var6.init(arg1, arg2)
   local var30 = {}
   var30.isHovered = false
   var30.isSelected = false
   arg1.state = var30
   function arg1.onMouseEnter()
      local var34 = {}
      var34.isHovered = true
      arg1:setState(var34)
   end
   
   function arg1.onMouseLeave()
      local var38 = {}
      var38.isHovered = false
      var38.isSelected = false
      arg1:setState(var38)
   end
   
   function arg1.onMouseDown()
      local var43 = {}
      var43.isHovered = true
      var43.isSelected = true
      arg1:setState(var43)
   end
   
   function arg1.onMouseUp()
      local var48 = {}
      var48.isSelected = false
      arg1:setState(var48)
      if arg1.props.onButtonClicked then
         arg1.props.onButtonClicked(arg1.props.index, arg1.props.action)
      end
   end
   
end

local function fun5(arg1)
   local var0 = arg1.props
   local var1 = arg1.state
   local var2 = var1.isSelected
   local var3 = var0.Stylizer.messageBox.button
   local var78 = {}
   var78.Size = UDim2.new(0, var3.MESSAGE_BOX_BUTTON_WIDTH, 1, 0)
   var78.LayoutOrder = var0.index
   if var2 then
      local var0 = var3.backgroundSelectedColor or var3.backgroundColor
   end
   var78.BackgroundColor3 = var3.backgroundColor
   if not var1.isHovered then
      if var2 then
         local var0 = var3.borderSelectedColor or var3.borderColor
      end
   end
   var78.BorderColor3 = var3.borderSelectedColor or var3.borderColor
   var2.Event.MouseEnter = arg1.onMouseEnter
   var2.Event.MouseLeave = arg1.onMouseLeave
   var2.Event.MouseButton1Down = arg1.onMouseDown
   var2.Event.MouseButton1Up = arg1.onMouseUp
   local var111 = {}
   local var115 = {}
   var115.BackgroundTransparency = 1
   var115.Position = UDim2.new(0, 0, 0, 65535)
   var115.Size = UDim2.new(1, 0, 1, 0)
   if var2 then
      local var0 = var3.textSelectedColor or var3.textColor
   end
   var115.TextColor3 = var3.textColor
   var115.Text = var0.Text
   var115.Font = var3.FONT
   var115.TextSize = var3.FONT_SIZE_SMALL
   var115.TextXAlignment = Enum.TextXAlignment.Center
   var111.TextLabel = var2.createElement("TextLabel", var115)
   return var2.createElement(var5, var78, var111)
end

function var6.render(arg1)
   local var0 = arg1.props
   local var1 = arg1.state
   local var2 = var1.isSelected
   local var3 = var0.Stylizer.messageBox.button
   local var78 = {}
   var78.Size = UDim2.new(0, var3.MESSAGE_BOX_BUTTON_WIDTH, 1, 0)
   var78.LayoutOrder = var0.index
   if var2 then
      local var0 = var3.backgroundSelectedColor or var3.backgroundColor
   end
   var78.BackgroundColor3 = var3.backgroundColor
   if not var1.isHovered then
      if var2 then
         local var0 = var3.borderSelectedColor or var3.borderColor
      end
   end
   var78.BorderColor3 = var3.borderSelectedColor or var3.borderColor
   var2.Event.MouseEnter = arg1.onMouseEnter
   var2.Event.MouseLeave = arg1.onMouseLeave
   var2.Event.MouseButton1Down = arg1.onMouseDown
   var2.Event.MouseButton1Up = arg1.onMouseUp
   local var111 = {}
   local var115 = {}
   var115.BackgroundTransparency = 1
   var115.Position = UDim2.new(0, 0, 0, 65535)
   var115.Size = UDim2.new(1, 0, 1, 0)
   if var2 then
      local var0 = var3.textSelectedColor or var3.textColor
   end
   var115.TextColor3 = var3.textColor
   var115.Text = var0.Text
   var115.Font = var3.FONT
   var115.TextSize = var3.FONT_SIZE_SMALL
   var115.TextXAlignment = Enum.TextXAlignment.Center
   var111.TextLabel = var2.createElement("TextLabel", var115)
   return var2.createElement(var5, var78, var111)
end

fun5 = var4.withContext
local var140 = {}
var140.Stylizer = var4.Stylizer
var6 = fun5(var140)(var6)
return var6
