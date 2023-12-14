-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Src.Utility.createAxisIndicator)
local var3 = var1.PureComponent:extend("AxisIndicator")
local var4 = CFrame.new(0, 0, 6)
function var3.init(arg1)
   arg1.isOrbitDragging = false
   arg1.isPanDragging = false
   arg1.lastClickTime = 0
   arg1.initialCenter = false
   arg1.props.Model = var2()
   arg1.viewportFrameRef = var1.createRef()
   local var0 = Instance.new("Camera")
   var0.Name = "AxisCamera"
   local var1 = arg1.props.ReferenceCamera
   var0.CFrame = var1.CFrame - var1.CFrame.Position:ToWorldSpace(var4)
   arg1.refCamCFrameChangedConnection = var1:GetPropertyChangedSignal("CFrame"):Connect(function()
      var0.CFrame = var1.CFrame - var1.CFrame.Position:ToWorldSpace(var4)
   end)
   arg1.camera = var0
   arg1.viewportFrameModel = nil
end

function var3.updateViewportModel(arg1)
   arg1.viewportFrameModel = arg1.props.Model:Clone()
   local var0 = arg1.viewportFrameRef:getValue()
   if var0 then
      var0:ClearAllChildren()
      arg1.viewportFrameModel.Parent = var0
   end
end

function var3.didMount(arg1)
   arg1:updateViewportModel()
end

function var3.willUnmount(arg1)
   if arg1.viewportFrameModel then
      arg1.viewportFrameModel:Destroy()
      arg1.viewportFrameModel = nil
   end
   if arg1.camera then
      arg1.camera:Destroy()
      arg1.camera = nil
   end
   arg1.refCamCFrameChangedConnection:Disconnect()
end

function var3.render(arg1)
   local var0 = arg1.props
   local var102 = {}
   var102.LayoutOrder = var0.LayoutOrder
   var102.Position = var0.Position
   var102.Size = var0.Size or UDim2.new(1, 0, 1, 0)
   var102.BorderSizePixel = 0
   var102.BackgroundTransparency = 1
   var102.CurrentCamera = arg1.camera
   var1.Ref = arg1.viewportFrameRef
   return var1.createElement("ViewportFrame", var102)
end

return var3
