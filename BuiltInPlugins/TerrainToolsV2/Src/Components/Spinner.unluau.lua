-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.Roact)
local var3 = var1.ContextServices
local var4 = var1.UI.Container
local var5 = game:GetService("RunService")
local var6 = var2.PureComponent:extend("Spinner")
local var176 = {}
var176.Size = 28
var6.defaultProps = var176
function var6.init(arg1)
   local var179 = {}
   var179.leadingBlock = 0
   arg1.state = var179
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
   local var239 = arg1.state
   local var243 = 1
   var239 = var5
   local var244 = 1
   local var248 = var4[var243]
   local var253 = "Block_" ... tostring(var243)
   local var257 = {}
   var257.Position = UDim2.new(0.5, 0, 0.5, 0)
   var257.Size = UDim2.new(0, 0, 0, 0)
   var257.Rotation = var6 * (var243 - 1)
   var257.BackgroundTransparency = 1
   local var271 = {}
   local var275 = {}
   var275.AnchorPoint = Vector2.new(0.5, 1)
   var275.Position = UDim2.new(0, 0, 0, var3)
   var275.Size = UDim2.fromOffset(var2.BlockWidth, math.floor(var1 / 2 - var3))
   var275.BorderSizePixel = 0
   var275.BackgroundColor3 = var248
   var271.Block = var2.createElement("Frame", var275)
   "Block_" ... tostring(var243) = var2.createElement("Frame", var257, var271)
   local var296 = {}
   var296.LayoutOrder = var0.LayoutOrder
   var296.AnchorPoint = var0.AnchorPoint
   var296.Position = var0.Position
   var296.ZIndex = var0.ZIndex
   var248 = var1
   var253 = var1
   var296.Size = UDim2.fromOffset(var248, var253)
   local var303 = {}
   local var307 = {}
   var307.Position = UDim2.new(0.5, 0, 0.5, 0)
   var307.Size = UDim2.new(0, 0, 0, 0)
   var307.Rotation = var239.leadingBlock * var6
   local var320 = 1
   var307.BackgroundTransparency = var320
   var320 = {}
   var303.Center = var2.createElement("Frame", var307, var320)
   return var2.createElement(var4, var296, var303)
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
   local var239 = arg1.state
   local var243 = 1
   var239 = var5
   local var244 = 1
   local var248 = var4[var243]
   local var253 = "Block_" ... tostring(var243)
   local var257 = {}
   var257.Position = UDim2.new(0.5, 0, 0.5, 0)
   var257.Size = UDim2.new(0, 0, 0, 0)
   var257.Rotation = var6 * (var243 - 1)
   var257.BackgroundTransparency = 1
   local var271 = {}
   local var275 = {}
   var275.AnchorPoint = Vector2.new(0.5, 1)
   var275.Position = UDim2.new(0, 0, 0, var3)
   var275.Size = UDim2.fromOffset(var2.BlockWidth, math.floor(var1 / 2 - var3))
   var275.BorderSizePixel = 0
   var275.BackgroundColor3 = var248
   var271.Block = var2.createElement("Frame", var275)
   "Block_" ... tostring(var243) = var2.createElement("Frame", var257, var271)
   local var296 = {}
   var296.LayoutOrder = var0.LayoutOrder
   var296.AnchorPoint = var0.AnchorPoint
   var296.Position = var0.Position
   var296.ZIndex = var0.ZIndex
   var248 = var1
   var253 = var1
   var296.Size = UDim2.fromOffset(var248, var253)
   local var303 = {}
   local var307 = {}
   var307.Position = UDim2.new(0.5, 0, 0.5, 0)
   var307.Size = UDim2.new(0, 0, 0, 0)
   var307.Rotation = var239.leadingBlock * var6
   local var320 = 1
   var307.BackgroundTransparency = var320
   var320 = {}
   var303.Center = var2.createElement("Frame", var307, var320)
   return var2.createElement(var4, var296, var303)
end

fun11 = var3.withContext
local var323 = {}
var323.Stylizer = var3.Stylizer
var6 = fun11(var323)(var6)
return var6
