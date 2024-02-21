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
   local var141 = {}
   var141.hovered = false
   arg1.state = var141
   function arg1.onMouseEnter(arg1, arg2, arg3)
      local var147 = {}
      var147.hovered = true
      arg1:setState(var147)
   end
   
   function arg1.onMouseLeave(arg1, arg2, arg3)
      local var154 = {}
      var154.hovered = false
      arg1:setState(var154)
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
   local var179 = {}
   var179.Size = var0.Size
   var179.BackgroundTransparency = 1
   var179.BorderSizePixel = 0
   var179.LayoutOrder = var0.LayoutOrder
   local var184 = {}
   local var188 = {}
   var188.Size = UDim2.new(0, var2.X, 0, var2.Y)
   var188.BackgroundTransparency = 1
   var188.BorderSizePixel = 0
   var188.Text = var0.Text
   var188.TextSize = var0.TextSize
   var188.Font = var4.FONT
   var188.TextScaled = true
   var188.TextColor3 = var1.textColor
   var188.TextXAlignment = Enum.TextXAlignment.Left
   var188.TextYAlignment = Enum.TextYAlignment.Center
   var2.Event.MouseEnter = arg1.onMouseEnter
   var2.Event.MouseLeave = arg1.onMouseLeave
   var2.Event.Activated = arg1.onActivated
   local var217 = {}
   local var3 = arg1.state.hovered
   if var3 then
      local var222 = {}
      var222.AnchorPoint = Vector2.new(0, 1)
      var222.Position = UDim2.new(0, 0, 1, 0)
      var222.Size = UDim2.new(0, var2.X, 0, 1)
      var222.BackgroundColor3 = var1.textColor
      var222.BorderSizePixel = 0
      local var0 = var2.createElement("Frame", var222)
   end
   var217.UnderLine = var3
   var184.Link = var2.createElement("TextButton", var188, var217)
   return var2.createElement("Frame", var179, var184)
end

function var7.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer.linkButton
   local var2 = var6(var0.Text, nil, nil, Vector2.new(9999, 9999))
   local var179 = {}
   var179.Size = var0.Size
   var179.BackgroundTransparency = 1
   var179.BorderSizePixel = 0
   var179.LayoutOrder = var0.LayoutOrder
   local var184 = {}
   local var188 = {}
   var188.Size = UDim2.new(0, var2.X, 0, var2.Y)
   var188.BackgroundTransparency = 1
   var188.BorderSizePixel = 0
   var188.Text = var0.Text
   var188.TextSize = var0.TextSize
   var188.Font = var4.FONT
   var188.TextScaled = true
   var188.TextColor3 = var1.textColor
   var188.TextXAlignment = Enum.TextXAlignment.Left
   var188.TextYAlignment = Enum.TextYAlignment.Center
   var2.Event.MouseEnter = arg1.onMouseEnter
   var2.Event.MouseLeave = arg1.onMouseLeave
   var2.Event.Activated = arg1.onActivated
   local var217 = {}
   local var3 = arg1.state.hovered
   if var3 then
      local var222 = {}
      var222.AnchorPoint = Vector2.new(0, 1)
      var222.Position = UDim2.new(0, 0, 1, 0)
      var222.Size = UDim2.new(0, var2.X, 0, 1)
      var222.BackgroundColor3 = var1.textColor
      var222.BorderSizePixel = 0
      local var0 = var2.createElement("Frame", var222)
   end
   var217.UnderLine = var3
   var184.Link = var2.createElement("TextButton", var188, var217)
   return var2.createElement("Frame", var179, var184)
end

fun10 = var5.withContext
local var244 = {}
var244.Stylizer = var5.Stylizer
var7 = fun10(var244)(var7)
return var7
