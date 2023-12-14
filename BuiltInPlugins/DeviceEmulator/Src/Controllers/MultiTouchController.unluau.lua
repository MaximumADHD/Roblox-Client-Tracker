-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Packages.Framework)
local var1 = var0.TestHelpers.ServiceWrapper
local var2 = var0.ContextServices.ContextItem:extend("MultiTouchController")
function var2.new(arg1)
   local var16 = {}
   var16._studioDeviceEmulatorService = var1.new("StudioDeviceEmulatorService", arg1)
   var16._screenGui = nil
   var16._pivot = nil
   var16._touches = {}
   var16._connectingLines = {}
   var16._mock = arg1
   local var1 = setmetatable(var16, var2)
   var1._screenGui = var1:initScreenGui()
   local var2 = var1:makeNewPivotCircle()
   var1._pivot = var2
   local var3 = 1
   var2 = var1._studioDeviceEmulatorService:asService():GetMaxNumTouches()
   local var4 = 1
   local var40 = var1._touches
   var40[1] = var1:makeNewControlCircle()
   local var6 = var1._connectingLines
   var6[1] = var1:makeNewConnectingLine()
   if not arg1 then
      var1._isMultiTouchEnabledChanged = var1._studioDeviceEmulatorService:asInstance():GetPropertyChangedSignal("IsMultiTouchEnabled"):Connect(function()
         if var1._studioDeviceEmulatorService:asService().IsMultiTouchEnabled then
            var1._screenGui.Enabled = true
            local var66 = var1
            var66 = var1._studioDeviceEmulatorService:asService().PivotPosition
            var1:updateControlCirclePos(var66._pivot, var66)
            local var0 = 1
            local var1 = var1._touches
            local var2 = 1
            local var77 = var1._touches[var0]
            local var84 = var1._studioDeviceEmulatorService:asService():GetTouchPosition(var0 - 1)
            var1:updateControlCirclePos()
            var1:updateConnectingLine(var1._connectingLines[var0], var1._touches[var0])
         end
         var1._screenGui.Enabled = false
      end)
      var1._pivotPositionChanged = var1._studioDeviceEmulatorService:asInstance():GetPropertyChangedSignal("PivotPosition"):Connect(function()
         local var111 = var1
         var111 = var1._studioDeviceEmulatorService:asService().PivotPosition
         var1:updateControlCirclePos(var111._pivot, var111)
         local var0 = 1
         local var1 = var1._touches
         local var2 = 1
         var1:updateConnectingLine(var1._connectingLines[var0], var1._touches[var0])
      end)
      var1._touchPositionsChanged = var1._studioDeviceEmulatorService:asService().TouchPositionsChanged:Connect(function()
         local var0 = 1
         local var1 = var1._touches
         local var2 = 1
         local var141 = var1._touches[var0]
         local var148 = var1._studioDeviceEmulatorService:asService():GetTouchPosition(var0 - 1)
         var1:updateControlCirclePos()
         var1:updateConnectingLine(var1._connectingLines[var0], var1._touches[var0])
      end)
      var1._touchInBoundsChanged = var1._studioDeviceEmulatorService:asService().TouchInBoundsChanged:Connect(function()
         local var0 = 1
         local var1 = var1._touches
         local var2 = 1
         local var3 = var1._touches[var0]
         local var4 = var1._studioDeviceEmulatorService:asService():GetTouchInBounds(var0 - 1)
         var1:updateControlCircleColor()
      end)
   end
   return var1
end

function var2.mock()
   return var2.new(true)
end

function var2.destroy(arg1)
   if not arg1._mock then
      arg1._isMultiTouchEnabledChanged:Disconnect()
      arg1._pivotPositionChanged:Disconnect()
      arg1._touchPositionsChanged:Disconnect()
      arg1._touchInBoundsChanged:Disconnect()
   end
   if arg1._screenGui then
      arg1._screenGui:Destroy()
   end
   arg1._studioDeviceEmulatorService:destroy()
end

function var2.initScreenGui(arg1)
   local var0 = game.CoreGui:FindFirstChild("MultiTouchScreenGui")
   if var0 then
      var0:ClearAllChildren()
      return var0
   end
   var0 = Instance.new("ScreenGui")
   var0.Name = "MultiTouchScreenGui"
   var0.IgnoreGuiInset = true
   var0.Enabled = false
   var0.Parent = game.CoreGui
   return var0
end

function var2.makeNewControlCircle(arg1)
   local var0 = Instance.new("Frame")
   var0.Size = UDim2.new(0.05, 0, 0.05, 0)
   var0.AnchorPoint = Vector2.new(0.5, 0.5)
   var0.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
   var0.BackgroundTransparency = 0.5
   var0.Parent = arg1._screenGui
   local var1 = Instance.new("UIAspectRatioConstraint")
   var1.AspectRatio = 1
   var1.Parent = var0
   local var2 = Instance.new("UICorner")
   var2.CornerRadius = UDim.new(1, 0)
   var2.Parent = var0
   local var3 = Instance.new("UIStroke")
   var3.Transparency = 0.5
   var3.Parent = var0
   return var0
end

function var2.makeNewPivotCircle(arg1)
   local var0 = Instance.new("Frame")
   var0.Parent = arg1._screenGui
   var0.Size = UDim2.new(0.01, 0, 0.01, 0)
   var0.AnchorPoint = Vector2.new(0.5, 0.5)
   var0.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
   var0.BackgroundTransparency = 0.5
   local var1 = Instance.new("UIAspectRatioConstraint")
   var1.AspectRatio = 1
   var1.Parent = var0
   local var2 = Instance.new("UICorner")
   var2.CornerRadius = UDim.new(1, 0)
   var2.Parent = var0
   return var0
end

function var2.makeNewConnectingLine(arg1)
   local var0 = Instance.new("Frame")
   var0.Parent = arg1._screenGui
   var0.AnchorPoint = Vector2.new(0.5, 0.5)
   var0.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
   return var0
end

function var2.updateControlCirclePos(arg1, arg2, arg3)
   arg2.Position = UDim2.new(0, arg3.x, 0, arg3.y)
end

function var2.updateControlCircleColor(arg1, arg2, arg3)
   if arg3 then
      arg2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
   end
   arg2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
end

function var2.updateConnectingLine(arg1, arg2, arg3)
   local var0 = arg1._pivot.Position.X.Offset
   local var1 = arg1._pivot.Position.Y.Offset
   local var2 = arg3.Position.X.Offset
   local var3 = arg3.Position.Y.Offset
   arg2.Size = UDim2.new(0, math.sqrt((var2 - var0) ^ 2 + (var3 - var1) ^ 2), 0, 0.5)
   arg2.Position = UDim2.new(0, (var0 + var2) / 2, 0, (var1 + var3) / 2)
   arg2.Rotation = math.deg(math.atan2(var3 - var1, var2 - var0))
end

return var2
