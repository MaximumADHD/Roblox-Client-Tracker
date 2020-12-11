local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local ShimmerPanel = UIBlox.Loading.ShimmerPanel
local EmptyState = UIBlox.App.Indicator.EmptyState

local FFlagBetterHumanoidViewportCameraPositioning =
	game:DefineFastFlag("BetterHumanoidViewportCameraPositioning", false)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local EngineFeatureAESConformToAvatarRules = game:GetEngineFeature("AESConformToAvatarRules")

local INITIAL_OFFSET = 5
local ROTATION_CFRAME = CFrame.fromEulerAnglesXYZ(math.rad(20), math.rad(15), math.rad(40))
local THUMBNAIL_FOV = 70
local ZOOM_FACTOR = FFlagBetterHumanoidViewportCameraPositioning and 1 or 1.2

local HumanoidViewport = Roact.PureComponent:extend("HumanoidViewport")

HumanoidViewport.validateProps = t.strictInterface({
	humanoidDescription = EngineFeatureAESConformToAvatarRules and t.optional(t.instanceOf("HumanoidDescription"))
		or t.instanceOf("HumanoidDescription"),
	loadingFailed = EngineFeatureAESConformToAvatarRules and t.boolean or nil,
	retryLoadDescription = EngineFeatureAESConformToAvatarRules and t.callback or nil,
	rigType = t.enum(Enum.HumanoidRigType),
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

	local maxSize
	if FFlagBetterHumanoidViewportCameraPositioning then
		maxSize = math.max(xSize, ySize)
	else
		maxSize = math.sqrt(xSize^2 + ySize^2 + zSize^2)
	end

	local fovMultiplier = 1 / math.tan(math.rad(fov) / 2)
	local halfSize = maxSize / 2
	if FFlagBetterHumanoidViewportCameraPositioning then
		return (halfSize * fovMultiplier) + (zSize / 2)
	else
		return halfSize * fovMultiplier
	end
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
		if EngineFeatureAESConformToAvatarRules then
			pcall(function()
				model = Players:CreateHumanoidModelFromDescription(humanoidDescription, rigType)
			end)
		else
			model = Players:CreateHumanoidModelFromDescription(humanoidDescription, rigType)
		end

		if not self.mounted then
			return
		end

		if self.props.humanoidDescription ~= humanoidDescription then
			return
		end

		if self.props.rigType ~= rigType then
			return
		end

		if EngineFeatureAESConformToAvatarRules and model == nil then
			self:setState({
				loadingFailed = true,
			})
			return
		end

		self.humanoidModel = model
		if self.worldModelRef:getValue() then
			self.humanoidModel.Parent = self.worldModelRef:getValue()
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
	local showShimmerFrame = self.state.loading
	local showLoadingFailed = false
	local showViewportFrame = not self.state.loading
	if EngineFeatureAESConformToAvatarRules then
		showLoadingFailed = self.props.loadingFailed or self.state.loadingFailed
		showShimmerFrame = (not showLoadingFailed) and self.state.loading
		showViewportFrame = not (showLoadingFailed or self.state.loading)
	end

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
			reloadAction = self.onRetryLoading,
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

	if EngineFeatureAESConformToAvatarRules then
		if self.props.humanoidDescription then
			self:loadHumanoidModel()
		end
	else
		self:loadHumanoidModel()
	end
end

function HumanoidViewport:didUpdate(prevProps)
	if self.worldModelRef:getValue() and self.humanoidModel then
		self.humanoidModel.Parent = self.worldModelRef:getValue()
	end

	local descriptionUpdated = self.props.humanoidDescription ~= prevProps.humanoidDescription
	local rigTypeUpdated = self.props.rigType ~= prevProps.rigType
	if descriptionUpdated or rigTypeUpdated then
		self:setState({
			loading = true
		})

		if EngineFeatureAESConformToAvatarRules then
			if self.props.humanoidDescription ~= nil then
				self:loadHumanoidModel()
			end
		else
			self:loadHumanoidModel()
		end
	end
end

function HumanoidViewport:willUnmount()
	self.mounted = false
end

return HumanoidViewport