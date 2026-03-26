local Framework = script:FindFirstAncestor("UI").Parent

local React = require(Framework.Util.React)

local Stylizer = require(Framework.UI.ContextServices.Stylizer)
local prioritize = require(Framework.Util.prioritize)

local CAMERA_OFFSET = CFrame.new(0, 0, 4)

export type Props = {
	AnchorPoint: Vector2?,
	BackgroundColor: Color3?,
	LayoutOrder: number?,
	Position: UDim2?,
	ReferenceCamera: Camera,
	Size: UDim2?,
	ZIndex: number?,
}

local function computeAxisCameraCFrame(referenceCamera: Camera): CFrame
	return (referenceCamera.CFrame - referenceCamera.CFrame.Position):ToWorldSpace(CAMERA_OFFSET)
end

local AXIS_SIZE = Vector3.new(2, 0.1, 0.1)
local X_COLOR = Color3.new(1, 0, 0)
local Y_COLOR = Color3.new(0, 1, 0)
local Z_COLOR = Color3.new(0, 0, 1)

local function createAxisIndicator(): Model
	local function makeAxisFor(parent: Model, color: Color3, name: string): Part
		local cylinder = Instance.new("Part")
		cylinder.Shape = Enum.PartType.Cylinder
		cylinder.TopSurface = Enum.SurfaceType.Smooth
		cylinder.BottomSurface = Enum.SurfaceType.Smooth
		cylinder.Parent = parent
		cylinder.Size = AXIS_SIZE
		cylinder.Color = color
		cylinder.Name = name
		return cylinder
	end

	local model = Instance.new("Model")

	local xAxis = makeAxisFor(model, X_COLOR, "XAxis")
	xAxis.CFrame = CFrame.new(AXIS_SIZE.X / 2, 0, 0)

	local yAxis = makeAxisFor(model, Y_COLOR, "YAxis")
	yAxis.CFrame = CFrame.new(0, AXIS_SIZE.X / 2, 0) * CFrame.Angles(0, 0, math.rad(90))

	local zAxis = makeAxisFor(model, Z_COLOR, "ZAxis")
	zAxis.CFrame = CFrame.new(0, 0, AXIS_SIZE.X / 2) * CFrame.Angles(0, math.rad(90), 0)

	return model
end

local function AxisIndicator(props: Props)
	local style = Stylizer:use("AssetRenderModel", props)

	local anchorPoint = prioritize(props.AnchorPoint, style.AxisIndicator.AnchorPoint)
	local position = prioritize(props.Position, style.AxisIndicator.Position)
	local size = prioritize(props.Size, style.AxisIndicator.Size)
	local zIndex = prioritize(props.ZIndex, style.AxisIndicator.ZIndex)

	local viewportFrameRef = React.useRef(nil :: ViewportFrame?)
	local cameraRef = React.useRef(Instance.new("Camera"))

	local referenceCamera = props.ReferenceCamera

	React.useEffect(function()
		assert(viewportFrameRef.current ~= nil, "ViewportFrame was not mounted by useEffect")

		-- Use a seperate camera for the axis component to isolate the rotation
		-- of the reference camera from it's translation.
		local camera = cameraRef.current
		camera.Name = "AxisCamera"
		camera.CFrame = computeAxisCameraCFrame(referenceCamera)

		local axisModel = createAxisIndicator()

		local viewportFrame = viewportFrameRef.current
		if viewportFrame then
			viewportFrame:ClearAllChildren()
			axisModel.Parent = viewportFrame
		end

		local referenceCameraCFrameChangedConnection = referenceCamera
			:GetPropertyChangedSignal("CFrame")
			:Connect(function()
				camera.CFrame = computeAxisCameraCFrame(referenceCamera)
			end)

		return function()
			referenceCameraCFrameChangedConnection:Disconnect()

			axisModel:Destroy()
			if cameraRef.current then
				cameraRef.current:Destroy()
			end
		end
	end, { referenceCamera })

	return React.createElement("ViewportFrame", {
		AnchorPoint = anchorPoint,
		BackgroundColor3 = props.BackgroundColor,
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		CurrentCamera = cameraRef.current,
		LayoutOrder = props.LayoutOrder,
		Position = position,
		Size = size,
		ZIndex = zIndex,

		ref = viewportFrameRef,
	})
end

return AxisIndicator
