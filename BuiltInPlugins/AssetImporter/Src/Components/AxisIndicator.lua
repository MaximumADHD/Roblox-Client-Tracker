local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)

local createAxisIndicator = require(Plugin.Src.Utility.createAxisIndicator)

local AxisIndicator = Roact.PureComponent:extend("AxisIndicator")

local CAMERA_OFFSET = CFrame.new(0, 0, 6)

function AxisIndicator:init()
    self.isOrbitDragging = false
    self.isPanDragging = false
    self.lastClickTime = 0
    self.initialCenter = false
    self.props.Model = createAxisIndicator()

    self.viewportFrameRef = Roact.createRef()

    -- This component uses a new camera which allows us to isolate the rotational changes of the ref camera from its translational changes
    local camera = Instance.new("Camera")
    camera.Name = "AxisCamera"

    local refCamera = self.props.ReferenceCamera
    camera.CFrame = (refCamera.CFrame - refCamera.CFrame.Position):ToWorldSpace(CAMERA_OFFSET)
    self.refCamCFrameChangedConnection = refCamera:GetPropertyChangedSignal("CFrame"):Connect(function()
        camera.CFrame = (refCamera.CFrame - refCamera.CFrame.Position):ToWorldSpace(CAMERA_OFFSET)
    end)

    self.camera = camera
    self.viewportFrameModel = nil
end

function AxisIndicator:updateViewportModel()
    local inputModel = self.props.Model
    self.viewportFrameModel = inputModel:Clone()
    local viewportFrame = self.viewportFrameRef:getValue()

    if viewportFrame then
        viewportFrame:ClearAllChildren()
        self.viewportFrameModel.Parent = viewportFrame
    end
end

function AxisIndicator:didMount()
    self:updateViewportModel()
end

function AxisIndicator:willUnmount()
    if self.viewportFrameModel then
        self.viewportFrameModel:Destroy()
        self.viewportFrameModel = nil
    end

    if self.camera then
        self.camera:Destroy()
        self.camera = nil
    end

    self.refCamCFrameChangedConnection:Disconnect()
end

function AxisIndicator:render()
    local props = self.props
    local layoutOrder = props.LayoutOrder
    local position = props.Position
    local size = props.Size or UDim2.new(1, 0, 1, 0)

    local camera = self.camera

    return Roact.createElement("ViewportFrame", {
        LayoutOrder = layoutOrder,
        Position = position,
        Size = size,

        BorderSizePixel = 0,
        BackgroundTransparency = 1,

        CurrentCamera = camera,
        [Roact.Ref] = self.viewportFrameRef,
    })
end

return AxisIndicator
