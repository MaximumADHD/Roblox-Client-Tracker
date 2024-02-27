-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.Roact)
local var3 = var1.ContextServices
local var4 = var1.UI.Container
local var5 = game:GetService("RunService")
local var6 = var2.PureComponent:extend("Spinner")
local var182 = {}
var182.Size = 28
var6.defaultProps = var182
function var6.init(arg1)
   local var185 = {}
   var185.leadingBlock = 0
   arg1.state = var185
   function arg1.getStyle()
      return arg1.props.Stylizer.Spinner
   end
   
   function arg1.moveToNext(arg1)
      local var0 = {}
      var0.leadingBlock = (arg1.leadingBlock + 1) % arg1.getStyle().Colors
      return var0
   end
   
   arg1.time = 0
   function arg1.onHeartbeat()
      if not arg1.isMounted then
      end
      arg1:setState(function()
         return arg1.props.Stylizer.Spinner
      end)
   end
   
end

function var6.didMount(arg1)
   arg1.isMounted = true
   arg1.heartbeatConnection = var5.Heartbeat:Connect(arg1.onHeartbeat)
end

function var6.willUnmount(arg1)
   if arg1.heartbeatConnection then
      arg1.heartbeatConnection:Disconnect()
      arg1.heartbeatConnection = nil
   end
   arg1.isMounted = false
end

local function fun11(arg1)
   local var0 = arg1.props
   local var1 = arg1.props.Size
   local var2 = arg1.getStyle()
   local var3 = var2.InnerRadius
   if var1 > 2 * var3 then
      local var0 = false
   end
   assert(true, "Spinner size is too small for inner radius from theme")
   local var4 = var2.Colors
   local var5 = var4
   local var6 = 360 / var5
   local var245 = arg1.state
   local var249 = 1
   var245 = var5
   local var250 = 1
   local var254 = var4[var249]
   local var259 = "Block_" ... tostring(var249)
   local var263 = {}
   var263.Position = UDim2.new(0.5, 0, 0.5, 0)
   var263.Size = UDim2.new(0, 0, 0, 0)
   var263.Rotation = var6 * (var249 - 1)
   var263.BackgroundTransparency = 1
   local var277 = {}
   local var281 = {}
   var281.AnchorPoint = Vector2.new(0.5, 1)
   var281.Position = UDim2.new(0, 0, 0, var3)
   var281.Size = UDim2.fromOffset(var2.BlockWidth, math.floor(var1 / 2 - var3))
   var281.BorderSizePixel = 0
   var281.BackgroundColor3 = var254
   var277.Block = var2.createElement("Frame", var281)
   "Block_" ... tostring(var249) = var2.createElement("Frame", var263, var277)
   local var302 = {}
   var302.LayoutOrder = var0.LayoutOrder
   var302.AnchorPoint = var0.AnchorPoint
   var302.Position = var0.Position
   var302.ZIndex = var0.ZIndex
   var254 = var1
   var259 = var1
   var302.Size = UDim2.fromOffset(var254, var259)
   local var309 = {}
   local var313 = {}
   var313.Position = UDim2.new(0.5, 0, 0.5, 0)
   var313.Size = UDim2.new(0, 0, 0, 0)
   var313.Rotation = var245.leadingBlock * var6
   local var326 = 1
   var313.BackgroundTransparency = var326
   var326 = {}
   var309.Center = var2.createElement("Frame", var313, var326)
   return var2.createElement(var4, var302, var309)
end

function var6.render(arg1)
   local var0 = arg1.props
   local var1 = arg1.props.Size
   local var2 = arg1.getStyle()
   local var3 = var2.InnerRadius
   if var1 > 2 * var3 then
      local var0 = false
   end
   assert(true, "Spinner size is too small for inner radius from theme")
   local var4 = var2.Colors
   local var5 = var4
   local var6 = 360 / var5
   local var245 = arg1.state
   local var249 = 1
   var245 = var5
   local var250 = 1
   local var254 = var4[var249]
   local var259 = "Block_" ... tostring(var249)
   local var263 = {}
   var263.Position = UDim2.new(0.5, 0, 0.5, 0)
   var263.Size = UDim2.new(0, 0, 0, 0)
   var263.Rotation = var6 * (var249 - 1)
   var263.BackgroundTransparency = 1
   local var277 = {}
   local var281 = {}
   var281.AnchorPoint = Vector2.new(0.5, 1)
   var281.Position = UDim2.new(0, 0, 0, var3)
   var281.Size = UDim2.fromOffset(var2.BlockWidth, math.floor(var1 / 2 - var3))
   var281.BorderSizePixel = 0
   var281.BackgroundColor3 = var254
   var277.Block = var2.createElement("Frame", var281)
   "Block_" ... tostring(var249) = var2.createElement("Frame", var263, var277)
   local var302 = {}
   var302.LayoutOrder = var0.LayoutOrder
   var302.AnchorPoint = var0.AnchorPoint
   var302.Position = var0.Position
   var302.ZIndex = var0.ZIndex
   var254 = var1
   var259 = var1
   var302.Size = UDim2.fromOffset(var254, var259)
   local var309 = {}
   local var313 = {}
   var313.Position = UDim2.new(0.5, 0, 0.5, 0)
   var313.Size = UDim2.new(0, 0, 0, 0)
   var313.Rotation = var245.leadingBlock * var6
   local var326 = 1
   var313.BackgroundTransparency = var326
   var326 = {}
   var309.Center = var2.createElement("Frame", var313, var326)
   return var2.createElement(var4, var302, var309)
end

fun11 = var3.withContext
local var329 = {}
var329.Stylizer = var3.Stylizer
var6 = fun11(var329)(var6)
return var6
