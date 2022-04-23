--[[
	Renders a model with interactive preview features for panning and dragging.

	Required Props:
		Instance Model: The Instance to preview.

	Optional Props:
		Theme Theme: A Theme ContextItem, which is provided via withContext.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		number LayoutOrder: LayoutOrder of the component.
		UDim2 Position: The position of this component.
		UDim2 Size: The size of this component.
		callback OnMouseEnter: called on MouseEnter - useful to delegate mouse scroll input to this component.
		callback OnMouseLeave: called on MouseLeave - useful to delegate mouse scroll input to this component.
		boolean RecenterCameraOnUpdate: Whether to recenter the camera on update.
		boolean RecenterModelOnUpdate: Whether to recenter the model on update.
		any Camera: The camera instance used for the viewport frame - won't catch changes made by the parent component.
		Vector3 FocusDirection: A vector representing the angle the camera should view the model at
		boolean Static: A boolean value that freezes the element
		number InitialDistance: A number value that specifies the initial distance from the camera
		boolean DisableZoom: Disables the zoom functionality in the preview
		boolean DisablePan: Disables the panning functionality in the preview
]]
local FFlagDevFrameworkExtractAssetRenderModelCamera = game:GetFastFlag("DevFrameworkExtractAssetRenderModelCamera")
local FFlagDevFrameworkAssetRenderModelCustomCamDirection = game:GetFastFlag("DevFrameworkAssetRenderModelCustomCamDirection")
local FFlagDevFrameworkSeparateCenterCameraCenterModel = game:DefineFastFlag("DevFrameworkSeparateCenterCameraCenterModel", false)
local FFlagDevFrameworkAssetRenderModelStatic = game:GetFastFlag("DevFrameworkAssetRenderModelStatic")
local FFlagDevFrameworkAssetRenderModelStatic2 = game:GetFastFlag("DevFrameworkAssetRenderModelStatic2")
local FFlagDevFrameworkAssetRenderModelDisableZoom = game:GetFastFlag("DevFrameworkAssetRenderModelDisableZoom")
local FFlagDevFrameworkAssetRenderModelDisablePan = game:GetFastFlag("DevFrameworkAssetRenderModelDisablePan")

local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.ContextServices)
local withContext = ContextServices.withContext

local Util = require(Framework.Util)
local Typecheck = Util.Typecheck
local Math = Util.Math

local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

local AssetRenderModel = Roact.PureComponent:extend("AssetRenderModel")
Typecheck.wrap(AssetRenderModel, script)

local INSERT_CAMERA_DIST_MULT = 0.8
local PAN_CAMERA_DIST_MULT = 0.1

AssetRenderModel.defaultProps = {
	RecenterCameraOnUpdate = true,
	RecenterModelOnUpdate = true,
	FocusDirection = Vector3.new(1, 1, 1),
}

-- TODO STM-169: Should we unify this with AssetConfig's PreviewArea component?
function AssetRenderModel:init()
	self.isOrbitDragging = false
	self.isPanDragging = false
	self.lastClickTime = 0
	self.initialCenter = false

	self.viewportFrameRef = Roact.createRef()

	local camera
	if FFlagDevFrameworkExtractAssetRenderModelCamera and self.props.Camera then
		camera = self.props.Camera
	else
		camera = Instance.new("Camera")
		camera.Name = "AssetRenderModelCamera"
	end

	self.camera = camera

	self.viewportFrameModel = nil

	self.onInputBegan = function(_, input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			self.isOrbitDragging = true
		end

		if input.UserInputType == Enum.UserInputType.MouseButton3 or
			input.UserInputType == Enum.UserInputType.MouseButton2 then
			self.isPanDragging = if FFlagDevFrameworkAssetRenderModelDisablePan then not self.props.DisablePan else true
		end
	end

	self.onInputEnded = function(_, input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			self.isOrbitDragging = false
			local DOUBLE_CLICK_INTERVAL_SECONDS = 0.25
			if tick() < self.lastClickTime + DOUBLE_CLICK_INTERVAL_SECONDS then
				self.centerCamera()
			end
			self.lastClickTime = tick()
		end

		if input.UserInputType == Enum.UserInputType.MouseButton3 or
			input.UserInputType == Enum.UserInputType.MouseButton2 then
			self.isPanDragging = false
		end
	end

	self.onInputChanged = function(_, input)
		if input.UserInputType == Enum.UserInputType.MouseMovement
			and self.isOrbitDragging or self.isPanDragging then
			local camera = self.camera
			local targetFocus = camera.Focus
			local targetCF = targetFocus:ToObjectSpace(camera.CFrame)

			if self.isOrbitDragging then
				targetCF = CFrame.fromAxisAngle(targetCF.RightVector, input.Delta.y * -0.01) * targetCF
				targetCF = CFrame.fromAxisAngle(Vector3.new(0, 1, 0), input.Delta.x * -0.01) * targetCF
			elseif self.isPanDragging then
				local dist = (targetCF.p - targetFocus.p).magnitude
				dist = Math.isNaN(dist) and 0 or dist
				local distanceFactor = PAN_CAMERA_DIST_MULT * (dist * 0.1)
				local yOffset = targetCF.upVector.Unit * input.Delta.y * distanceFactor
				local xOffset = -targetCF.rightVector.Unit * input.Delta.x * distanceFactor
				targetCF = targetCF + yOffset + xOffset
				targetFocus = targetFocus + yOffset + xOffset
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
		self.zoomCamera(-1)
	end

	self.onMouseWheelForward = function()
		self.zoomCamera(1)
	end

	self.centerCamera_DEPRECATED = function()
		assert(not FFlagDevFrameworkSeparateCenterCameraCenterModel, "centerCamera_DEPRECATED should not be used when FFlagFFlagDevFrameworkSeparateCenterCameraCenterModel is on")
		local model = self.viewportFrameModel
		local camera = self.camera

		local initialDistance = self.props.InitialDistance

		-- Move the model/part in front of the camera
		local success, modelCf, size = pcall(function()
			return model:GetBoundingBox()
		end)

		if not success then
			size = model.Size
			model.CFrame = model.CFrame - model.CFrame.p
		else
			model:TranslateBy(-modelCf.p)
		end

		local cameraDistAway
		if FFlagDevFrameworkAssetRenderModelStatic and initialDistance then
			cameraDistAway = initialDistance * INSERT_CAMERA_DIST_MULT
		else
			cameraDistAway = size.magnitude * INSERT_CAMERA_DIST_MULT
		end

		local dir
		if FFlagDevFrameworkAssetRenderModelCustomCamDirection then
			dir = self.props.FocusDirection.Unit
		else
			dir = Vector3.new(1, 1, 1).Unit
		end
		camera.Focus = CFrame.new()
		camera.CFrame = CFrame.new(cameraDistAway * dir, camera.Focus.p)
	end

	self.centerModel = function()
		local viewObject = self.viewportFrameModel
		local viewObjectCf
		
		-- Move the model/part to the origin
		if viewObject:IsA("Model") then
			viewObjectCf = viewObject:GetBoundingBox()
			viewObject:TranslateBy(-viewObjectCf.Position)
		else
			viewObject.CFrame = viewObject.CFrame - viewObject.CFrame.Position
		end
	end

	self.centerCamera = function()
		local model = self.viewportFrameModel
		local initialDistance = self.props.InitialDistance
		local size
		
		if model:IsA("Model") then
			size = model:GetExtentsSize()
		else
			size = model.Size
		end
		
		local cameraDistAway
		if FFlagDevFrameworkAssetRenderModelStatic2 then
			cameraDistAway = (initialDistance or size.magnitude) * INSERT_CAMERA_DIST_MULT
		else
			cameraDistAway = size.magnitude * INSERT_CAMERA_DIST_MULT
		end

		local dir
		if FFlagDevFrameworkAssetRenderModelCustomCamDirection then
			dir = self.props.FocusDirection.Unit
		else
			dir = Vector3.new(1, 1, 1).Unit
		end
		camera.Focus = CFrame.new()
		camera.CFrame = CFrame.new(cameraDistAway * dir, camera.Focus.Position)
	end
end

function AssetRenderModel:updateViewportModel()
	local inputModel = self.props.Model

	if inputModel:IsA("Model") or inputModel:IsA("BasePart") then
		self.viewportFrameModel = inputModel:Clone()
	else
		self.viewportFrameModel = Instance.new("Model")
		inputModel:Clone().Parent = self.viewportFrameModel
	end

	local viewportFrame = self.viewportFrameRef:getValue()

	if viewportFrame then
		viewportFrame:ClearAllChildren()
		self.viewportFrameModel.Parent = viewportFrame

		if FFlagDevFrameworkSeparateCenterCameraCenterModel then
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
		else
			if not self.initialCenter or self.props.RecenterCameraOnUpdate then
				self.centerCamera_DEPRECATED()
				self.initialCenter = true
			end
		end
	end
end

function AssetRenderModel:didMount()
	self:updateViewportModel()
end

function AssetRenderModel:didUpdate(prevProps)
	if prevProps.Model ~= self.props.Model then
		self:updateViewportModel()
	end
end

function AssetRenderModel:willUnmount()
	if self.viewportFrameModel then
		self.viewportFrameModel:Destroy()
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
	local static = FFlagDevFrameworkAssetRenderModelStatic and props.Static
	local disableZoom = FFlagDevFrameworkAssetRenderModelDisableZoom and props.DisableZoom

	local camera = self.camera

	return Roact.createElement("ViewportFrame", {
		LayoutOrder = layoutOrder,
		Position = position,
		Size = size,

		BorderSizePixel = 0,
		BackgroundTransparency = 1,

		CurrentCamera = camera,
		[Roact.Ref] = self.viewportFrameRef,

		[Roact.Event.MouseEnter] = props.OnMouseEnter,
		[Roact.Event.MouseLeave] = props.OnMouseLeave,
		[Roact.Event.MouseWheelForward] = if not static and not disableZoom then self.onMouseWheelForward else nil,
		[Roact.Event.MouseWheelBackward] = if not static and not disableZoom then self.onMouseWheelBackward else nil,
		[Roact.Event.InputBegan] = if not static then self.onInputBegan else nil,
		[Roact.Event.InputEnded] = if not static then self.onInputEnded else nil,
		[Roact.Event.InputChanged] = if not static then self.onInputChanged else nil,
	})
end


AssetRenderModel = withContext({
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
})(AssetRenderModel)



return AssetRenderModel
