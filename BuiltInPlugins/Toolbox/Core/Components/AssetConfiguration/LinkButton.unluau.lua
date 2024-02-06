-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var1.Framework)
local var4 = require(var0.Core.Util.Constants)
local var5 = var3.ContextServices
local var6 = var3.Util.GetTextSize
local var7 = var2.PureComponent:extend("LinkButton")
function var7.init(arg1, arg2)
   local var143 = {}
   var143.hovered = false
   arg1.state = var143
   function arg1.onMouseEnter(arg1, arg2, arg3)
      local var149 = {}
      var149.hovered = true
      arg1:setState(var149)
   end
   
   function arg1.onMouseLeave(arg1, arg2, arg3)
      local var156 = {}
      var156.hovered = false
      arg1:setState(var156)
   end
   
   function arg1.onActivated(arg1)
      if arg2.onActivated then
         arg2.onActivated()
      end
   end
   
end

local function fun10(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer.linkButton
   local var2 = var6(var0.Text, nil, nil, Vector2.new(9999, 9999))
   local var181 = {}
   var181.Size = var0.Size
   var181.BackgroundTransparency = 1
   var181.BorderSizePixel = 0
   var181.LayoutOrder = var0.LayoutOrder
   local var186 = {}
   local var190 = {}
   var190.Size = UDim2.new(0, var2.X, 0, var2.Y)
   var190.BackgroundTransparency = 1
   var190.BorderSizePixel = 0
   var190.Text = var0.Text
   var190.TextSize = var0.TextSize
   var190.Font = var4.FONT
   var190.TextScaled = true
   var190.TextColor3 = var1.textColor
   var190.TextXAlignment = Enum.TextXAlignment.Left
   var190.TextYAlignment = Enum.TextYAlignment.Center
   var2.Event.MouseEnter = arg1.onMouseEnter
   var2.Event.MouseLeave = arg1.onMouseLeave
   var2.Event.Activated = arg1.onActivated
   local var219 = {}
   local var3 = arg1.state.hovered
   if var3 then
      local var224 = {}
      var224.AnchorPoint = Vector2.new(0, 1)
      var224.Position = UDim2.new(0, 0, 1, 0)
      var224.Size = UDim2.new(0, var2.X, 0, 1)
      var224.BackgroundColor3 = var1.textColor
      var224.BorderSizePixel = 0
      local var0 = var2.createElement("Frame", var224)
   end
   var219.UnderLine = var3
   var186.Link = var2.createElement("TextButton", var190, var219)
   return var2.createElement("Frame", var181, var186)
end

function var7.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer.linkButton
   local var2 = var6(var0.Text, nil, nil, Vector2.new(9999, 9999))
   local var181 = {}
   var181.Size = var0.Size
   var181.BackgroundTransparency = 1
   var181.BorderSizePixel = 0
   var181.LayoutOrder = var0.LayoutOrder
   local var186 = {}
   local var190 = {}
   var190.Size = UDim2.new(0, var2.X, 0, var2.Y)
   var190.BackgroundTransparency = 1
   var190.BorderSizePixel = 0
   var190.Text = var0.Text
   var190.TextSize = var0.TextSize
   var190.Font = var4.FONT
   var190.TextScaled = true
   var190.TextColor3 = var1.textColor
   var190.TextXAlignment = Enum.TextXAlignment.Left
   var190.TextYAlignment = Enum.TextYAlignment.Center
   var2.Event.MouseEnter = arg1.onMouseEnter
   var2.Event.MouseLeave = arg1.onMouseLeave
   var2.Event.Activated = arg1.onActivated
   local var219 = {}
   local var3 = arg1.state.hovered
   if var3 then
      local var224 = {}
      var224.AnchorPoint = Vector2.new(0, 1)
      var224.Position = UDim2.new(0, 0, 1, 0)
      var224.Size = UDim2.new(0, var2.X, 0, 1)
      var224.BackgroundColor3 = var1.textColor
      var224.BorderSizePixel = 0
      local var0 = var2.createElement("Frame", var224)
   end
   var219.UnderLine = var3
   var186.Link = var2.createElement("TextButton", var190, var219)
   return var2.createElement("Frame", var181, var186)
end

fun10 = var5.withContext
local var246 = {}
var246.Stylizer = var5.Stylizer
var7 = fun10(var246)(var7)
return var7
