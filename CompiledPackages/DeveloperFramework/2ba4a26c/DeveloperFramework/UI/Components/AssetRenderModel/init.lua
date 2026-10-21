--[[
	Renders a model with interactive preview features for panning and dragging.

	Required Props:
		Instance Model: The Instance to preview.

	Optional Props:
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		any Localization: A Localization ContextItem, which is provided via withContext.
		number LayoutOrder: LayoutOrder of the component.
		UDim2 Position: The position of this component.
		UDim2 Size: The size of this component.
		callback OnMouseEnter: called on MouseEnter - useful to delegate mouse scroll input to this component.
		callback OnMouseLeave: called on MouseLeave - useful to delegate mouse scroll input to this component.
		boolean RecenterCameraOnUpdate: Whether to recenter the camera on update.
		boolean RecenterModelOnUpdate: Whether to recenter the model on update.
		any Camera: The camera instance used for the viewport frame - won't catch changes made by the parent component.
		CFrame ResetCameraPosition: The default position that the camera should reset to.
		Vector3 FocusDirection: A vector representing the angle the camera should view the model at
		Vector3 FocusPosition: A vector representing the position the camera should view the model at (if it's not center of model/origin)
		boolean Static: A boolean value that freezes the element
		number InitialDistance: A number value that specifies the initial distance from the camera
		number FieldOfView: Vertical field of view in degrees for the viewport camera (defaults to engine default when omitted)
		boolean DisableZoom: Disables the zoom functionality in the preview
		boolean DisablePan: Disables the panning functionality in the preview
		Color3 Ambient: The Ambient color used when rendering the model
		Color3 LightColor: The color of the light used when rendering the model
		Vector3 LightDirection: The direction in which the light is pointing
		Color3 BackgroundColor3: The background color of the viewport frame
		boolean EnableSky: Adds a Sky with SkyBox to the viewport.
		number ImageTransparency: The transparency of the resulting image.
		callback OnViewModelLoaded: Callback for when model is loaded into the viewport frame
		boolean ShouldMuteModelSounds: Whether or not sound object descendants should be muted
		boolean ShouldClone: Whether or not the provided Model should be cloned. If false, the consumer is expected to handle the lifetime of the object. Defaults to true.
		boolean ShowAxisIndicator: Whether to show the axis indicator.
		boolean ShowResetCamera: Whether to show the reset camera button.
		number PanSpeedMultiplier: A multiplier for how fast you left-click to pan.
		UDim CornerRadius: Apply a UICornerRadius to this component with the given CornerRadius.
]]

local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext

local withForwardRef = require(Framework.Wrappers.withForwardRef)

local Resources = require(Framework.Resources)
local LOCALIZATION_PROJECT_NAME = Resources.LOCALIZATION_PROJECT_NAME

local COMPONENT_NAME = "AssetRenderModel"

local Button = require(Framework.UI.Components.DEPRECATED_Button)
local Image = require(Framework.UI.Components.Image)
local Pane = require(Framework.UI.Components.Pane)
local Tooltip = require(Framework.UI.Components.Tooltip)

local Util = require(Framework.Util)
local Typecheck = require(Framework.Util.Typecheck)
local Math = Util.Math

local AxisIndicator = require(script.AxisIndicator)

local AssetRenderModel = Roact.PureComponent:extend("AssetRenderModel")
Typecheck.wrap(AssetRenderModel, script)

local INSERT_CAMERA_DIST_MULT = 0.8

local FFlagDevFrameworkResetCameraIconColor = game:DefineFastFlag("DevFrameworkResetCameraIconColor", false)

AssetRenderModel.defaultProps = {
	RecenterCameraOnUpdate = true,
	RecenterModelOnUpdate = true,
	ShouldClone = true,
	FocusDirection = Vector3.new(1, 1, 1),
	FocusPosition = Vector3.new(),
	PanSpeedMultiplier = 1,
	ShouldMuteModelSounds = false,
	ImageTransparency = 0,
}

local function isPanInput(input: InputObject)
	return input.UserInputType == Enum.UserInputType.MouseButton1
		or input.UserInputType == Enum.UserInputType.MouseButton3
end

local function isOrbitInput(input: InputObject, disablePan: boolean)
	return input.UserInputType == Enum.UserInputType.MouseButton2
		or (input.UserInputType == Enum.UserInputType.MouseButton1 and disablePan)
end

-- TODO STM-169: Should we unify this with AssetConfig's PreviewArea component?
function AssetRenderModel:init()
	self.isOrbitDragging = false
	self.isPanDragging = false
	self.lastClickTime = 0
	self.initialCenter = false

	if not self.props.ForwardRef then
		self.viewportFrameRef = Roact.createRef()
	end

	local camera
	if self.props.Camera then
		camera = self.props.Camera
	else
		camera = Instance.new("Camera")
		camera.Name = "AssetRenderModelCamera"
	end

	self.camera = camera

	if self.props.FieldOfView ~= nil then
		camera.FieldOfView = self.props.FieldOfView
	end

	self.viewportFrameModel = nil

	self.onInputBegan = function(_, input)
		if isOrbitInput(input, self.props.DisablePan) then
			self.isOrbitDragging = true
		end

		if isPanInput(input) then
			self.isPanDragging = not self.props.DisablePan
		end
	end

	self.onInputEnded = function(_, input)
		if isOrbitInput(input, self.props.DisablePan) then
			self.isOrbitDragging = false
			local DOUBLE_CLICK_INTERVAL_SECONDS = 0.25
			if tick() < self.lastClickTime + DOUBLE_CLICK_INTERVAL_SECONDS then
				self.centerCamera()
			end
			self.lastClickTime = tick()
		end

		if isPanInput(input) then
			self.isPanDragging = false
		end
	end

	self.getCameraMovementDistance = function(distance, dragDelta)
		-- first, calculate the physical distance between the edges of the frustum at the focus distance
		local angle = self.camera.FieldOfView / 2
		local frustumWidth = distance * math.tan(math.rad(angle)) * 2

		-- now, given the frustum width, find how much to move the cam based on ratios
		local absoluteSize = self.viewportFrameRef:getValue().AbsoluteSize
		local screenRatio = absoluteSize.X / absoluteSize.Y
		local moveDistanceX = frustumWidth * dragDelta.X / absoluteSize.X * screenRatio
		local moveDistanceY = frustumWidth * dragDelta.Y / absoluteSize.Y
		return moveDistanceX, moveDistanceY
	end

	self.onInputChanged = function(_, input)
		if input.UserInputType == Enum.UserInputType.MouseMovement and self.isOrbitDragging or self.isPanDragging then
			local camera = self.camera
			local targetFocus = camera.Focus
			local targetCF = targetFocus:ToObjectSpace(camera.CFrame)

			if self.isOrbitDragging then
				targetCF = CFrame.fromAxisAngle(targetCF.RightVector, input.Delta.y * -0.01) * targetCF
				targetCF = CFrame.fromAxisAngle(Vector3.new(0, 1, 0), input.Delta.x * -0.01) * targetCF
			elseif self.isPanDragging then
				local dist = (targetCF.p - targetFocus.p).magnitude
				dist = Math.isNaN(dist) and 0 or dist

				local xMove, yMove = self.getCameraMovementDistance(dist, input.Delta)
				local xOffset = targetCF.rightVector.Unit * xMove * self.props.PanSpeedMultiplier
				local yOffset = targetCF.upVector.Unit * yMove * self.props.PanSpeedMultiplier
				targetCF = targetCF + yOffset - xOffset
				targetFocus = targetFocus + yOffset - xOffset
			end

			camera.CFrame = camera.Focus:ToWorldSpace(targetCF)
			camera.Focus = targetFocus
		end
	end

	self.zoomCamera = function(zoomFactor)
		local camera = self.camera
		local current = camera.CFrame
		local focus = camera.Focus

		local dist = (current.p - focus.p).magnitude
		dist = Math.isNaN(dist) and 0 or dist

		local moveAmount = math.max(dist * 0.1, 0.1)
		local targetCF = current * CFrame.new(0, 0, zoomFactor * moveAmount)

		camera.CFrame = targetCF
	end

	self.onMouseWheelBackward = function()
		self.zoomCamera(1)
	end

	self.onMouseWheelForward = function()
		self.zoomCamera(-1)
	end

	self.centerModel = function()
		local viewObject = self.viewportFrameModel

		-- Move the model/part to the origin
		if viewObject:IsA("Model") then
			local viewObjectCf = viewObject:GetBoundingBox()
			viewObject:TranslateBy(-viewObjectCf.Position)
		else
			viewObject.CFrame = viewObject.CFrame - viewObject.CFrame.Position
		end
	end

	self.centerCamera = function()
		if self.props.ResetCameraPosition ~= nil then
			camera.Focus = CFrame.new(self.props.FocusPosition)
			camera.CFrame = self.props.ResetCameraPosition
			return
		end

		local model = self.viewportFrameModel
		local initialDistance = self.props.InitialDistance
		local size

		if model:IsA("Model") then
			size = model:GetExtentsSize()
		else
			size = model.Size
		end

		local cameraDistAway = (initialDistance or size.magnitude) * INSERT_CAMERA_DIST_MULT

		local dir = self.props.FocusDirection.Unit
		camera.Focus = CFrame.new(self.props.FocusPosition)
		camera.CFrame = CFrame.new(camera.Focus.Position + cameraDistAway * dir, camera.Focus.Position)
	end
end

function AssetRenderModel:updateViewportModel()
	local inputModel = self.props.Model

	if not self.props.ShouldClone then
		if self.viewportFrameModel ~= nil then
			self.viewportFrameModel.Parent = nil
		end
	end

	if inputModel:IsA("Model") or inputModel:IsA("BasePart") then
		self.viewportFrameModel = if self.props.ShouldClone then inputModel:Clone() else inputModel

		-- Mute sounds in AssetRender for Models
		if self.props.ShouldMuteModelSounds then
			for _, v in pairs(self.viewportFrameModel:GetDescendants()) do
				if v:IsA("Sound") then
					v.Volume = 0
				end
			end
		end
	else
		self.viewportFrameModel = Instance.new("Model")
		inputModel:Clone().Parent = self.viewportFrameModel
	end

	local viewportFrame = if self.props.ForwardRef
		then self.props.ForwardRef:getValue()
		else self.viewportFrameRef:getValue()
	if viewportFrame then
		if self.props.ShouldClone then
			viewportFrame:ClearAllChildren()
		else
			for _, child in viewportFrame:GetChildren() do
				child.Parent = nil
			end
		end

		if self.props.OnViewModelLoaded then
			self.props.OnViewModelLoaded(self.viewportFrameModel)
		end

		self.viewportFrameModel.Parent = viewportFrame

		if self.props.EnableSky then
			local style = self.props.Stylizer
			local sky = Instance.new("Sky")
			sky.SkyboxBk = style.Sky.SkyboxBk
			sky.SkyboxDn = style.Sky.SkyboxDn
			sky.SkyboxFt = style.Sky.SkyboxFt
			sky.SkyboxLf = style.Sky.SkyboxLf
			sky.SkyboxRt = style.Sky.SkyboxRt
			sky.SkyboxUp = style.Sky.SkyboxUp
			sky.Parent = viewportFrame
		end

		if self.props.CornerRadius then
			local uiCorner = Instance.new("UICorner")
			uiCorner.CornerRadius = self.props.CornerRadius

			assert(not viewportFrame:FindFirstChild("UICorner"), "ViewportFrame already has a UICorner child")
			uiCorner.Parent = viewportFrame
		end

		if not self.initialCenter then
			self.centerModel()
			self.centerCamera()
			self.initialCenter = true
		else
			if self.props.RecenterModelOnUpdate then
				self.centerModel()
			end
			if self.props.RecenterCameraOnUpdate then
				self.centerCamera()
			end
		end

		viewportFrame.ImageTransparency = self.props.ImageTransparency
	end
end

function AssetRenderModel:didMount()
	self:updateViewportModel()
end

function AssetRenderModel:didUpdate(prevProps)
	if self.props.FieldOfView ~= prevProps.FieldOfView then
		if self.props.FieldOfView ~= nil then
			self.camera.FieldOfView = self.props.FieldOfView
		end
	end

	if prevProps.Model ~= self.props.Model or prevProps.EnableSky ~= self.props.EnableSky then
		self:updateViewportModel()
	end
end

function AssetRenderModel:willUnmount()
	if self.viewportFrameModel then
		if self.props.ShouldClone then
			self.viewportFrameModel:Destroy()
		else
			self.viewportFrameModel.Parent = nil
		end
	end

	if self.camera then
		self.camera:Destroy()
	end
end

function AssetRenderModel:render()
	local props = self.props
	local layoutOrder = props.LayoutOrder
	local position = props.Position
	local size = props.Size or UDim2.new(1, 0, 1, 0)
	local static = props.Static
	local disableZoom = props.DisableZoom

	local camera = self.camera

	-- Children intentionally nil. ViewportFrame descendants are recomputed if
	-- the Model prop changes and must be managed in updateViewportModel().
	local children = nil

	local hasExtraControls = props.ShowAxisIndicator or props.ShowResetCamera

	local viewportFrame = Roact.createElement("ViewportFrame", {
		Ambient = props.Ambient,
		BackgroundColor3 = props.BackgroundColor3,
		LightColor = props.LightColor,
		LayoutOrder = if hasExtraControls then nil else layoutOrder,
		LightDirection = props.LightDirection,
		Position = if hasExtraControls then nil else position,
		Size = if hasExtraControls then UDim2.fromScale(1, 1) else size,

		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		ImageTransparency = props.ImageTransparency,

		CurrentCamera = camera,
		[Roact.Ref] = if props.ForwardRef then props.ForwardRef else self.viewportFrameRef,

		[Roact.Event.MouseEnter] = props.OnMouseEnter,
		[Roact.Event.MouseLeave] = props.OnMouseLeave,
		[Roact.Event.MouseWheelForward] = if not static and not disableZoom then self.onMouseWheelForward else nil,
		[Roact.Event.MouseWheelBackward] = if not static and not disableZoom then self.onMouseWheelBackward else nil,
		[Roact.Event.InputBegan] = if not static then self.onInputBegan else nil,
		[Roact.Event.InputEnded] = if not static then self.onInputEnded else nil,
		[Roact.Event.InputChanged] = if not static then self.onInputChanged else nil,
	}, children)

	if props.ShowAxisIndicator or props.ShowResetCamera then
		local localization = self.props.Localization
		local style = self.props.Stylizer

		return Roact.createElement(Pane, {
			LayoutOrder = layoutOrder,
			Position = position,
			Size = size,
		}, {
			ViewportFrame = viewportFrame,

			AxisIndicator = if props.ShowAxisIndicator
				then Roact.createElement(AxisIndicator, {
					BackgroundColor = props.BackgroundColor3,
					ReferenceCamera = camera,
					ZIndex = 2,
				})
				else nil,

			ResetCameraButton = if props.ShowResetCamera
				then Roact.createElement(Button, {
					AnchorPoint = Vector2.new(1, 0),
					OnClick = self.centerCamera,
					Position = style.ResetCameraButton.Position,
					Size = style.ResetCameraButton.Size,
					Style = "RoundSubtle",
					ZIndex = 2,
				}, {
					Icon = Roact.createElement(Image, {
						Image = style.ResetCameraButton.Image,
						Style = if FFlagDevFrameworkResetCameraIconColor
							then {
								Color = style.ResetCameraButton.Color,
							}
							else nil,
					}, {
						Tooltip = Roact.createElement(Tooltip, {
							Text = localization:getProjectText(
								LOCALIZATION_PROJECT_NAME,
								COMPONENT_NAME,
								"ResetCamera"
							),
						}),
					}),
				})
				else nil,
		})
	else
		return viewportFrame
	end
end

AssetRenderModel = withContext({
	Localization = ContextServices.Localization,
	Stylizer = ContextServices.Stylizer,
})(AssetRenderModel)

AssetRenderModel = withForwardRef(AssetRenderModel)

return AssetRenderModel
