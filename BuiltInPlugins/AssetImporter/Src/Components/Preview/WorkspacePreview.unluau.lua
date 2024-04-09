-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("AssetImporter").Packages.Roact)
local var1 = var0.PureComponent:extend("WorkspacePreview")
function var1.updateViewportModel(arg1, arg2)
   local var0 = arg1.viewportFrameRef:getValue()
   if var0 then
      arg1.viewportFrameModel = arg2.Model:Clone()
      arg1.viewportFrameModel:PivotTo(arg2.Offset)
      var0:ClearAllChildren()
      arg1.viewportFrameModel.Parent = var0
   end
end

function var1.init(arg1)
   local var0 = arg1.props
   arg1.viewportFrameRef = var0.createRef()
   arg1.camera = var0.ReferenceCamera
   arg1.viewportFrameModel = nil
   if var0.Model then
      arg1:updateViewportModel(var0)
   end
end

function var1.willUnmount(arg1)
   if arg1.viewportFrameModel then
      arg1.viewportFrameModel:Destroy()
      arg1.viewportFrameModel = nil
   end
end

function var1.willUpdate(arg1, arg2)
   if arg2.Model then
      arg1:updateViewportModel(arg2)
   end
   arg1.viewportFrameModel:Destroy()
   arg1.viewportFrameModel = nil
   arg1.viewportFrameRef:getValue():ClearAllChildren()
end

function var1.render(arg1)
   local var0 = arg1.props
   local var68 = {}
   var68.LayoutOrder = var0.LayoutOrder
   var68.Position = var0.Position
   var68.Size = var0.Size or UDim2.new(1, 0, 1, 0)
   var68.BorderSizePixel = 0
   var68.BackgroundTransparency = 1
   var68.ImageTransparency = 0.7
   var68.CurrentCamera = arg1.camera
   var0.Ref = arg1.viewportFrameRef
   return var0.createElement("ViewportFrame", var68)
end

return var1
