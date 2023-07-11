--!nonstrict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)
local Promise = require(CorePackages.Promise)

local ShimmerPanel = UIBlox.App.Loading.ShimmerPanel
local EmptyState = UIBlox.App.Indicator.EmptyState

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local INITIAL_OFFSET = 5
local ROTATION_CFRAME = CFrame.fromEulerAnglesXYZ(math.rad(20), math.rad(15), math.rad(40))
local THUMBNAIL_FOV = 70
local ZOOM_FACTOR = 1

local CLUSTER_COMPOSITION_TIMEOUT_MS = game:DefineFastInt("AXClusterCompositionTimeoutMs", 3000)

local HumanoidViewport = Roact.PureComponent:extend("HumanoidViewport")

HumanoidViewport.validateProps = t.strictInterface({
	humanoidDescription = t.optional(t.instanceOf("HumanoidDescription")),
	loadingFailed = t.boolean,
	retryLoadDescription = t.callback,
	rigType = t.optional(t.enum(Enum.HumanoidRigType)),
})

function HumanoidViewport:init()
	self:setState({
		loading = true,
		loadingFailed = false,
	})

	self.cameraRef = Roact.createRef()
	self.worldModelRef = Roact.createRef()

	self.cameraCFrameBinding, self.updateCameraCFrameBinding = Roact.createBinding(CFrame.new())
	self.cameraFocusBinding, self.updateCameraFocusBinding = Roact.createBinding(CFrame.new())

	self.humanoidModel = nil

	self.mounted = false

	self.onRetryLoading = function()
		self:setState({
			loading = true,
			loadingFailed = false,
		})

		if self.props.humanoidDescription then
			self:loadHumanoidModel()
		else
			self.props.retryLoadDescription()
		end
	end
end

local function rotateLookVector(lookVector)
	local look = lookVector
	if math.abs(look.Y) > 0.95 then
		look = Vector3.new(0, 0, -1)
	else
		look = Vector3.new(look.X, 0, look.Z)
		look = look.unit
	end
	local lookCoord = CFrame.new(Vector3.new(0, 0, 0), look)
	lookCoord = lookCoord * ROTATION_CFRAME
	return lookCoord.lookVector
end

local function getCameraOffset(fov, extentsSize)
	local xSize, ySize, zSize = extentsSize.X, extentsSize.Y, extentsSize.Z

	local maxSize = math.max(xSize, ySize)

	local fovMultiplier = 1 / math.tan(math.rad(fov) / 2)
	local halfSize = maxSize / 2
	return (halfSize * fovMultiplier) + (zSize / 2)
end

local function zoomExtents(model, lookVector, cameraCFrame)
	local modelCFrame = model:GetModelCFrame()
	local position = modelCFrame.p
	local extentsSize = model:GetExtentsSize()
	local cameraOffset = getCameraOffset(THUMBNAIL_FOV, extentsSize)
	local zoomFactor = 1 / ZOOM_FACTOR
	cameraOffset = cameraOffset * zoomFactor
	local cameraRotation = cameraCFrame - cameraCFrame.p
	return cameraRotation + position + (lookVector * cameraOffset)
end

function HumanoidViewport:positionCamera()
	local model = self.humanoidModel
	local modelCFrame = model:GetModelCFrame()
	local lookVector = modelCFrame.lookVector
	local humanoidRootPart = model:FindFirstChild("HumanoidRootPart")
	if humanoidRootPart then
		lookVector = humanoidRootPart.CFrame.lookVector
	end
	lookVector = rotateLookVector(lookVector)

	local cameraCFrame = CFrame.new(modelCFrame.p + (lookVector * INITIAL_OFFSET), modelCFrame.p)
	cameraCFrame = zoomExtents(model, lookVector, cameraCFrame)

	self.updateCameraCFrameBinding(cameraCFrame)
	self.updateCameraFocusBinding(modelCFrame)
end

function HumanoidViewport:loadIdleAnimation(humanoidModel)
	local humanoid = humanoidModel:FindFirstChildOfClass("Humanoid")
	local humanoidDescription = humanoid.HumanoidDescription

	if humanoidDescription.IdleAnimation == 0 then
		return
	end

	local animate = humanoidModel:FindFirstChild("Animate")
	if not animate then
		return
	end

	local idle = animate:FindFirstChild("idle")
	if not idle then
		return
	end

	local animation = idle:FindFirstChildOfClass("Animation")
	if not animation then
		return
	end

	local animationTrack = humanoid:LoadAnimation(animation)
	animationTrack.Looped = true
	animationTrack:Play()
end

function HumanoidViewport:loadHumanoidModel()
	local humanoidDescription = self.props.humanoidDescription
	local rigType = self.props.rigType

	coroutine.wrap(function()
		local model
		pcall(function()
			model = Players:CreateHumanoidModelFromDescription(humanoidDescription, rigType)
		end)

		if not self.mounted then
			return
		end

		if self.props.humanoidDescription ~= humanoidDescription then
			return
		end

		if self.props.rigType ~= rigType then
			return
		end

		if model == nil then
			self:setState({
				loadingFailed = true,
			})
			return
		end

		self.humanoidModel = model
		if self.worldModelRef:getValue() then
			self.humanoidModel.Parent = self.worldModelRef:getValue()
		end

		local layeredAccessories = humanoidDescription:GetAccessories(--[[includeRigidAccessories = ]] false)
		if #layeredAccessories > 0 then
			-- If ClusterCompositionFinished is taking too long to fire or has failed to fire for some reason,
			-- we want to just timeout and display the avatar before it has finished compositing.
			Promise.race({
				Promise.fromEvent(model.Humanoid.ClusterCompositionFinished),
				Promise.delay(CLUSTER_COMPOSITION_TIMEOUT_MS * 0.001)
			}):await()
		end

		if not self.mounted then
			return
		end

		self:positionCamera()
		self:loadIdleAnimation(model)

		self:setState({
			loading = false,
			loadingFailed = false,
		})
	end)()
end

function HumanoidViewport:render()
	local showLoadingFailed = self.props.loadingFailed or self.state.loadingFailed
	local showShimmerFrame = (not showLoadingFailed) and self.state.loading
	local showViewportFrame = not (showLoadingFailed or self.state.loading)

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.fromScale(1, 1),
		Position = UDim2.fromScale(0.5, 0.5),
		AnchorPoint = Vector2.new(0.5, 0.5),
	}, {
		AspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
			AspectRatio = 1,
			AspectType = Enum.AspectType.FitWithinMaxSize,
			DominantAxis = Enum.DominantAxis.Width,
		}),

		ShimmerFrame = showShimmerFrame and Roact.createElement(ShimmerPanel, {
			Size = UDim2.fromScale(1, 1),
			Position = UDim2.fromScale(0.5, 0.5),
			AnchorPoint = Vector2.new(0.5, 0.5),
		}),

		LoadingFailed = showLoadingFailed and Roact.createElement(EmptyState, {
			text = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.ItemsListLoadingFailed"),
			size = UDim2.fromScale(1, 1),
			onActivated = self.onRetryLoading,
		}),

		ViewportFrame = Roact.createElement("ViewportFrame", {
			Visible = showViewportFrame,
			BackgroundTransparency = 1,
			Size = UDim2.fromScale(1, 1),
			Position = UDim2.fromScale(0.5, 0.5),
			AnchorPoint = Vector2.new(0.5, 0.5),
			LightColor = Color3.fromRGB(240, 240, 240),
			Ambient = Color3.fromRGB(240, 240, 240),
			CurrentCamera = self.cameraRef,
		}, {
			Camera = Roact.createElement("Camera", {
				CameraType = Enum.CameraType.Scriptable,
				FieldOfView = THUMBNAIL_FOV,

				CFrame = self.cameraCFrameBinding,
				Focus = self.cameraFocusBinding,

				[Roact.Ref] = self.cameraRef,
			}),

			WorldModel = Roact.createElement("WorldModel", {
				[Roact.Ref] = self.worldModelRef,
			}),
		}),
	})
end

function HumanoidViewport:didMount()
	self.mounted = true

	if self.props.humanoidDescription then
		self:loadHumanoidModel()
	end
end

function HumanoidViewport:didUpdate(prevProps)
	if self.worldModelRef:getValue() and self.humanoidModel then
		self.humanoidModel.Parent = self.worldModelRef:getValue()
	end

	local descriptionUpdated = self.props.humanoidDescription ~= prevProps.humanoidDescription
	local rigTypeUpdated = self.props.rigType ~= prevProps.rigType
	-- Make sure the HumanoidViewport has a rigType and description before trying to load the model.
	local shouldLoadHumanoidModel = self.props.rigType ~= nil and
		self.props.humanoidDescription ~= nil and (descriptionUpdated or rigTypeUpdated)
	if shouldLoadHumanoidModel then
		self:setState({
			loading = true
		})

		if self.props.humanoidDescription ~= nil then
			self:loadHumanoidModel()
		end
	end
end

function HumanoidViewport:willUnmount()
	self.mounted = false
end

return HumanoidViewport
