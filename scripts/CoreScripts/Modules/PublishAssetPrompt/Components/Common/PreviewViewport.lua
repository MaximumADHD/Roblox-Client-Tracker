--!nonstrict
--[[
	PreviewViewport
	A viewport to provide a detailed preview of the asset to the user
    It accepts animationClip or a model as a parameter.
    It allows for zooming, panning and rotating the previewed asset.
]]
local AnimationClipProvider = game:GetService("AnimationClipProvider")
local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local ContextActionService = game:GetService("ContextActionService")
local RunService = game:GetService("RunService")

local Roact = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)

local ShimmerPanel = UIBlox.App.Loading.ShimmerPanel
local EmptyState = UIBlox.App.Indicator.EmptyState
local Button = UIBlox.App.Button.Button
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local ShortcutBar = UIBlox.App.Navigation.ShortcutBar
local InputType = UIBlox.Core.Enums.InputType
local getInputGroup = require(CorePackages.Workspace.Packages.InputType).getInputGroup
local ExternalEventConnection = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection
local InputTypeConstants = require(CorePackages.Workspace.Packages.InputType).InputTypeConstants
local GamepadUtils = require(CorePackages.Workspace.Packages.InputUi).Gamepad.GamepadUtils

local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)
local InteractionFrame = require(script.Parent.InteractionFrame)
local Constants = require(script.Parent.Parent.Parent.Constants)

local Images = UIBlox.App.ImageSet.Images
local PreviewShrinkIcon = Images["icons/actions/previewShrink"]
local ResetViewIcon = Images["icons/actions/reset"]

local CAMERA_FOV = 30
local INITIAL_ZOOM_FACTOR = 0.8
local ANIMATION_CLIP_INITIAL_ZOOM_FACTOR = 0.75
local MAX_ZOOM_FACTOR = 10
local MIN_ZOOM_FACTOR = 0.3
local MIN_X_AXIS_ROTATION = -80
local MAX_X_AXIS_ROTATION = 80
local WORLD_Y_AXIS = Vector3.new(0, 1, 0)
local WORLD_X_AXIS = Vector3.new(1, 0, 0)

local ZOOM_STEP = 0.9

local ICON_SIZE = 36
local BUTTON_PADDING = 24

local MANNEQUIN_OUTFIT_ID = 1342485078 -- this is an outfitId of Mannequin-Blocky bundle https://www.roblox.com/bundles/515/Mannequin-Blocky

local LoadingState = {
	LOADING = "loading",
	SUCCESSFULLY_LOADED = "successfullyLoaded",
	FAILED_TO_LOAD = "failedToLoad",
}

local PreviewViewport = Roact.PureComponent:extend("PreviewViewport")

PreviewViewport.validateProps = t.strictInterface({
	asset = t.union(t.instanceOf("Model"), t.instanceIsA("AnimationClip")),
	closePreviewView = t.callback,
})

local function isGamepadInput(inputType)
	local inputGroup = getInputGroup(inputType)
	return inputGroup == InputTypeConstants.Gamepad
end

function PreviewViewport:init()
	self:setState({
		loadingState = LoadingState.LOADING,
		isGamepad = isGamepadInput(UserInputService:GetLastInputType()),
		cameraMoved = false,
	})

	self.ref = Roact.createRef()
	self.zoomFactor = INITIAL_ZOOM_FACTOR
	self.cameraDegreesAngle = Vector2.new(0, 0)
	self.cameraPanInPixels = Vector2.new(0, 0)

	self.cameraRef = Roact.createRef()
	self.worldModelRef = Roact.createRef()

	self.cameraCFrameBinding, self.updateCameraCFrameBinding = Roact.createBinding(CFrame.new())
	self.cameraFocusBinding, self.updateCameraFocusBinding = Roact.createBinding(CFrame.new())

	self.panByPixels = function(pixelDelta)
		self.cameraPanInPixels = self.cameraPanInPixels + pixelDelta
		self:clampOffsets()
		self:updateCameraPosition()
		if not self.state.cameraMoved then
			self:setState({ cameraMoved = true })
		end
	end

	self.rotateByPixels = function(pixelDelta)
		-- changing the position of the cursor along the X axis corresponds to a rotation around the Y axis
		-- changing the position of the cursor along the Y axis corresponds to a rotation around the X axis
		self.cameraDegreesAngle =
			Vector2.new(self.cameraDegreesAngle.X - pixelDelta.Y, self.cameraDegreesAngle.Y - pixelDelta.X)

		self:clampOffsets()
		self:updateCameraPosition()
		if not self.state.cameraMoved then
			self:setState({ cameraMoved = true })
		end
	end

	self.storeInput = function(actionName, inputState, inputObject)
		self.inputState = inputState
		self.inputObject = inputObject

		return Enum.ContextActionResult.Sink
	end

	-- meant to be used for Gamepad only for y-axis rotation using thumbstick
	self.rotateByRadians = function(yRads)
		local humanoidRootPart = self.model:FindFirstChild("HumanoidRootPart")
		-- If this is used for cases other than passing in a humanoid model, consider changing to use primary part
		if not humanoidRootPart then
			return
		end

		-- function takes radians to be passed into a GamepadUtils helper function, but our component uses degrees
		local yDegreesOffset = -yRads * 180 / math.pi
		self.cameraDegreesAngle =
			Vector2.new(self.cameraDegreesAngle.X % 360, (self.cameraDegreesAngle.Y + yDegreesOffset) % 360)

		-- self:clampOffsets doesn't need to be called here because y-axis doesn't have limits
		self:updateCameraPosition()
		if not self.state.cameraMoved then
			self:setState({ cameraMoved = true })
		end
	end

	self.setAngularVelocityByPixels = function(pixelVelocity) end

	-- If no point given, just zoom from center without changing panning
	self.zoomToPoint = function(zoomDelta: number, screenPixelPoint: Vector2?)
		local additionalZoomAplied = ZOOM_STEP ^ zoomDelta
		local newZoomFactor = self.zoomFactor * additionalZoomAplied

		-- we just check if zoom will change in value after clamping
		if newZoomFactor ~= math.clamp(newZoomFactor, MIN_ZOOM_FACTOR, MAX_ZOOM_FACTOR) then
			return
		end
		self.zoomFactor = newZoomFactor

		if screenPixelPoint then
			-- we translate screen coordinates to camera's current view coordinates with the center as (0,0)
			local pointFromCenter = screenPixelPoint - (self.absolutePosition + self.absoluteSize / 2)
			pointFromCenter = pointFromCenter * Vector2.new(1, -1) * -1
			-- we change the cameraPanInPixels to keep pointFromCenter in position when zooming
			self.cameraPanInPixels = pointFromCenter - (pointFromCenter - self.cameraPanInPixels) * additionalZoomAplied
		end

		self:clampOffsets()
		self:updateCameraPosition()
		if not self.state.cameraMoved then
			self:setState({ cameraMoved = true })
		end
	end

	self.onRetryLoading = function()
		self:processAsset()
	end

	self.onResetButtonPressed = function()
		self:resetCameraPosition()
	end
end

function PreviewViewport:setLoadingState(loadingState)
	self:setState({
		loadingState = loadingState,
	})
end

function PreviewViewport:clampOffsets()
	-- zoom limitation
	self.zoomFactor = math.clamp(self.zoomFactor, MIN_ZOOM_FACTOR, MAX_ZOOM_FACTOR)

	-- we limit the rotation around X axis
	local minXAxisRotation = MIN_X_AXIS_ROTATION
	if self.props.asset and self.props.asset:IsA("AnimationClip") then
		minXAxisRotation = self:angleToMakeBasePlateParallel() -- for AnimationClip presentation we want to stop a the floor level
	end
	self.cameraDegreesAngle = Vector2.new(
		math.clamp(self.cameraDegreesAngle.X, minXAxisRotation, MAX_X_AXIS_ROTATION),
		self.cameraDegreesAngle.Y
	)

	-- we limit the panning so that the edge of the model extent does no go beyond the center of the frame
	-- self.absoluteSize / 2 (limits the panning so that the center of the object is on the edge)
	local maxPanFromCenterX =
		math.max(self.zoomFactor * self.modelExtentsSize.X / 2 / self:pointsToPixelsFactor(), self.absoluteSize.X / 2)
	local maxPanFromCenterY =
		math.max(self.zoomFactor * self.modelExtentsSize.Y / 2 / self:pointsToPixelsFactor(), self.absoluteSize.Y / 2)
	self.cameraPanInPixels = Vector2.new(
		math.clamp(self.cameraPanInPixels.X, -maxPanFromCenterX, maxPanFromCenterX),
		math.clamp(self.cameraPanInPixels.Y, -maxPanFromCenterY, maxPanFromCenterY)
	)
end

function PreviewViewport:angleToMakeBasePlateParallel()
	local zoomedCameraDistance = self.cameraDistance / self.zoomFactor

	-- panScalingFactor represents the ratio of points to pixels of actual panning in pixels
	local panScalingFactor = self:pointsToPixelsFactor() / self.zoomFactor
	local panInPointsY = panScalingFactor * self.cameraPanInPixels.Y

	-- camera is looking at the center of the model. Floor is (self.modelExtentsSize.Y/2 + panInPointsY)
	-- below the center of the model when viewed parallel
	local sinAlpha = (self.modelExtentsSize.Y / 2 + panInPointsY) / zoomedCameraDistance
	-- in the event we are zoomed in zoomedcamera distance can be smaller then modelExtentsSize
	-- to avoid NaN result of asin we limit we clamp sinAlpha
	sinAlpha = math.clamp(sinAlpha, -0.99, 0.99)

	local alpha = math.asin(sinAlpha)
	local alpha_deg = math.deg(alpha)
	return -alpha_deg
end

function PreviewViewport:processAsset()
	local asset = self.props.asset
	if not asset then
		return
	end

	if asset:IsA("AnimationClip") then
		-- in case of AnimationClip a Mannequin-Blocky rig serves as a model
		self:setLoadingState(LoadingState.LOADING)
		task.spawn(function()
			local ok, humanoidDescription = pcall(function()
				-- this is an outfit of Mannequin-Blocky bundle that is used to create emote thumbnails https://www.roblox.com/bundles/515/Mannequin-Blocky
				if game:GetEngineFeature("AsyncRenamesUsedInLuaApps") then
					local mannequinRig = Players:GetHumanoidDescriptionFromOutfitIdAsync(MANNEQUIN_OUTFIT_ID)
					return mannequinRig
				else
					local mannequinRig = (Players :: never):GetHumanoidDescriptionFromOutfitId(MANNEQUIN_OUTFIT_ID)
					return mannequinRig
				end
			end)

			local newModel
			if ok then
				if game:GetEngineFeature("AsyncRenamesUsedInLuaApps") then
					newModel =
						Players:CreateHumanoidModelFromDescriptionAsync(humanoidDescription, Enum.HumanoidRigType.R15)
				else
					newModel = (Players :: never):CreateHumanoidModelFromDescription(
						humanoidDescription,
						Enum.HumanoidRigType.R15
					)
				end
			end

			-- if asset has changed the new processAsset is driving the loadingState changes
			if not self.isMounted or asset ~= self.props.asset then
				return
			end
			if not newModel then
				self:setLoadingState(LoadingState.FAILED_TO_LOAD)
				return
			end

			self.model = newModel
			self:addModelToViewportIfNeeded()

			-- create a local animation from the animationClip to be played on the mannequin
			local localAnimationId = AnimationClipProvider:RegisterActiveAnimationClip(asset)
			self.animation = Instance.new("Animation")
			self.animation.AnimationId = localAnimationId

			local humanoid = self.model:FindFirstChildWhichIsA("Humanoid")
			if humanoid then
				local track = humanoid:LoadAnimation(self.animation)
				track:Play()
			end

			self:setLoadingState(LoadingState.SUCCESSFULLY_LOADED)
		end)
	elseif asset:IsA("Model") or asset:IsA("Accessory") then
		if asset:IsA("Accessory") then
			local modelInstance = Instance.new("Model")
			local accessoryClone = asset:Clone()
			accessoryClone.Parent = modelInstance
			self.model = modelInstance
		else
			self.model = asset:Clone()
		end
		self.model.Parent = nil
		self:addModelToViewportIfNeeded()

		self:setLoadingState(LoadingState.SUCCESSFULLY_LOADED)
	end
end

function PreviewViewport:addModelToViewportIfNeeded()
	if self.model ~= nil and self.model.Parent ~= nil then
		return
	end

	if self.worldModelRef:getValue() and self.model ~= nil then
		self.model.Parent = self.worldModelRef:getValue()
		self:resetCameraPosition()

		-- add additional floor for AnimationClip presentation
		if self.props.asset and self.props.asset:IsA("AnimationClip") then
			local baseplateThickness = 0.5
			self.baseplate = Instance.new("Part")
			self.baseplate.Size = Vector3.new(8, baseplateThickness, 8)
			self.baseplate.Transparency = 0.6
			self.baseplate.Parent = self.worldModelRef:getValue()
			local modelFeetPosition = self.modelCFrame.Position + Vector3.new(0, -self.modelExtentsSize.Y / 2, 0)
			self.baseplate.Position = modelFeetPosition + Vector3.new(0, -baseplateThickness / 2, 0)
		end
	end
end

local function getCameraDistance(fov, extentsSize)
	local xSize, ySize, zSize = extentsSize.X, extentsSize.Y, extentsSize.Z

	local maxSize = math.max(xSize, ySize)

	local fovMultiplier = 1 / math.tan(math.rad(fov) / 2)
	local halfSize = maxSize / 2
	return (halfSize * fovMultiplier) + (zSize / 2)
end

local function rotateVectorAround(v, amount, axis)
	return CFrame.fromAxisAngle(axis, amount):VectorToWorldSpace(v)
end

function PreviewViewport:resetCameraPosition()
	if not self.model then
		return
	end

	self.modelCFrame = self.model:GetModelCFrame()
	self.initialLookVector = self.modelCFrame.lookVector

	local humanoidRootPart = self.model:FindFirstChild("HumanoidRootPart")
	if humanoidRootPart then
		self.initialLookVector = humanoidRootPart.CFrame.lookVector
	end

	self.modelExtentsSize = self.model:GetExtentsSize()
	self.cameraDistance = getCameraDistance(CAMERA_FOV, self.modelExtentsSize)

	if self.props.asset and self.props.asset:IsA("AnimationClip") then
		self.cameraDegreesAngle = Vector2.new(0, 0)
		self.zoomFactor = ANIMATION_CLIP_INITIAL_ZOOM_FACTOR
	else
		self.cameraDegreesAngle = Vector2.new(5, 20)
		self.zoomFactor = INITIAL_ZOOM_FACTOR
	end

	self.cameraPanInPixels = Vector2.new(0, 0)

	self:updateCameraPosition()

	if self.state.cameraMoved then
		self:setState({ cameraMoved = false })
	end
end

-- calculates how many world coordinates points are per one pixel at the current resolution without zooming
function PreviewViewport:pointsToPixelsFactor()
	if
		self.absoluteSize == nil
		or self.modelExtentsSize == nil
		or self.absoluteSize.Y == 0
		or self.modelExtentsSize.Y == 0
		or self.modelExtentsSize.X == 0
	then
		return 1
	end
	-- this calculation is based on how we calculate cameraDistance (to exactly match the max extents within the viewport)
	-- also viewport takes only height into consideration when scaling its content
	return math.max(self.modelExtentsSize.X, self.modelExtentsSize.Y) / self.absoluteSize.Y
end

function PreviewViewport:updateCameraPosition()
	if self.absoluteSize == nil or self.cameraDistance == nil then
		return
	end

	-- ZOOM
	-- we just increase or decrease the camera distance from the model based on the zoom factor
	local zoomedCameraDistance = self.cameraDistance / self.zoomFactor

	-- ROTATION
	local newLookVector = self.initialLookVector
	local angleX = math.rad(self.cameraDegreesAngle.X)
	local angleY = math.rad(self.cameraDegreesAngle.Y)
	newLookVector = rotateVectorAround(newLookVector, angleX, WORLD_X_AXIS)
	newLookVector = rotateVectorAround(newLookVector, angleY, WORLD_Y_AXIS)
	local newCFrame = CFrame.new(self.modelCFrame.p + (newLookVector * zoomedCameraDistance), self.modelCFrame.p)

	-- PANNING
	-- panScalingFactor represents the ratio of points to pixels of actual panning in pixels
	local panScalingFactor = self:pointsToPixelsFactor() / self.zoomFactor
	-- we move the camera on the perpendicular plane to the lookVector
	newCFrame = newCFrame
		+ newCFrame.UpVector * panScalingFactor * self.cameraPanInPixels.Y
		+ newCFrame.RightVector * panScalingFactor * self.cameraPanInPixels.X

	self.updateCameraCFrameBinding(newCFrame)
	self.updateCameraFocusBinding(self.modelCFrame)
end

local localized = {
	resetViewButtonText = RobloxTranslator:FormatByKey("CoreScripts.AssetPreviewView.Action.ResetView"),
	loadingFailedText = RobloxTranslator:FormatByKey("CoreScripts.AssetPreviewView.Label.LoadingFailed"),
}

function PreviewViewport:render()
	local loadingState = self.state.loadingState
	local toolTipItems = {
		{
			icon = {
				[InputType.MouseAndKeyboard] = Images["icons/controls/mouse/scroll"],
				[InputType.Gamepad] = Images["icons/controls/keys/xboxRSVertical"],
			},
			text = RobloxTranslator:FormatByKey("CoreScripts.PublishAvatarPrompt.Zoom"),
		},
		{
			icon = {
				[InputType.MouseAndKeyboard] = Images["icons/controls/mouse/clickLeft"],
				[InputType.Gamepad] = Images["icons/controls/keys/xboxRSHorizontal"],
			},
			text = RobloxTranslator:FormatByKey("CoreScripts.PublishAvatarPrompt.Rotate"),
		},
		{
			icon = {
				[InputType.MouseAndKeyboard] = Images["icons/controls/mouse/clickRight"],
			},
			text = RobloxTranslator:FormatByKey("CoreScripts.PublishAvatarPrompt.Pan"),
		},
		{
			icon = {
				[InputType.Gamepad] = Images["icons/controls/keys/xboxY"],
			},
			text = RobloxTranslator:FormatByKey("CoreScripts.PublishAvatarPrompt.ResetView"),
		},
		{
			icon = {
				[InputType.Gamepad] = Images["icons/controls/keys/xboxB"],
			},
			text = RobloxTranslator:FormatByKey("CoreScripts.PublishAvatarPrompt.Close"),
		},
	}

	local showResetViewButton = self.state.cameraMoved and not self.state.isGamepad

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.fromScale(1, 1),
		Position = UDim2.fromScale(0.5, 0.5),
		AnchorPoint = Vector2.new(0.5, 0.5),
		[Roact.Ref] = self.ref,
		[Roact.Change.AbsoluteSize] = function(rbx)
			self.absoluteSize = rbx.AbsoluteSize
			self:updateCameraPosition()
		end,
		[Roact.Change.AbsolutePosition] = function(rbx)
			local topLeftInset = GuiService:GetGuiInset()
			self.absolutePosition = rbx.absolutePosition + topLeftInset
		end,
	}, {
		LastInputTypeConnection = Roact.createElement(ExternalEventConnection, {
			event = UserInputService.LastInputTypeChanged,
			callback = function(lastInputType)
				self:setState({
					isGamepad = isGamepadInput(lastInputType),
				})
			end,
		}) or nil,

		ButtonFrame = Roact.createElement("Frame", {
			Size = UDim2.fromScale(1, 1),
			Position = UDim2.fromScale(0, 0),
			BackgroundTransparency = 1,
		}, {
			UIPadding = Roact.createElement("UIPadding", {
				PaddingBottom = UDim.new(0, BUTTON_PADDING),
				PaddingLeft = UDim.new(0, BUTTON_PADDING),
				PaddingRight = UDim.new(0, BUTTON_PADDING),
			}),
			ResetViewButton = if showResetViewButton
				then Roact.createElement(Button, {
					buttonType = ButtonType.Secondary,
					size = UDim2.fromOffset(ICON_SIZE, ICON_SIZE),
					-- Lower left corner
					position = UDim2.fromScale(0, 1),
					anchorPoint = Vector2.new(0, 1),
					icon = ResetViewIcon,
					onActivated = self.onResetButtonPressed,
				})
				else nil,
			ShrinkPreviewButton = Roact.createElement(Button, {
				buttonType = ButtonType.PrimarySystem,
				size = UDim2.fromOffset(ICON_SIZE, ICON_SIZE),
				icon = PreviewShrinkIcon,
				-- Lower right corner
				position = UDim2.fromScale(1, 1),
				anchorPoint = Vector2.new(1, 1),
				onActivated = self.props.closePreviewView,
			}),
		}),

		TooltipHint = if self.props.asset:IsA("Model")
			then Roact.createElement(ShortcutBar, {
				position = UDim2.fromScale(0.5, 0.9),
				anchorPoint = Vector2.new(0.5, 1),
				transitionDelaySeconds = 2,
				items = toolTipItems,
			})
			else nil,

		ShimmerFrame = (loadingState == LoadingState.LOADING) and Roact.createElement(ShimmerPanel, {
			Size = UDim2.fromScale(1, 1),
			Position = UDim2.fromScale(0.5, 0.5),
			AnchorPoint = Vector2.new(0.5, 0.5),
		}),

		LoadingFailed = (loadingState == LoadingState.FAILED_TO_LOAD) and Roact.createElement(EmptyState, {
			text = localized.loadingFailedText,
			size = UDim2.fromScale(1, 1),
			onActivated = self.onRetryLoading,
		}),

		InteractionFrame = Roact.createElement(InteractionFrame, {
			ZIndex = -1,
			Size = UDim2.fromScale(1, 1),
			Visible = (loadingState == LoadingState.SUCCESSFULLY_LOADED),
			panByPixels = self.panByPixels,
			rotateByPixels = self.rotateByPixels,
			setAngularVelocityByPixels = self.setAngularVelocityByPixels,
			zoomToPoint = self.zoomToPoint,
		}, {
			ViewportFrame = Roact.createElement("ViewportFrame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 1),
				Position = UDim2.fromScale(0.5, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.5),
				LightColor = Constants.ViewportLightColor,
				Ambient = Constants.ViewportLightAmbient,
				LightDirection = Constants.ViewportLightDirection,
				CurrentCamera = self.cameraRef,
			}, {
				Camera = Roact.createElement("Camera", {
					CameraType = Enum.CameraType.Scriptable,
					FieldOfView = CAMERA_FOV,

					HeadLocked = true,
					VRTiltAndRollEnabled = true,

					CFrame = self.cameraCFrameBinding,
					Focus = self.cameraFocusBinding,

					[Roact.Ref] = self.cameraRef,
				}),

				WorldModel = Roact.createElement("WorldModel", {
					[Roact.Ref] = self.worldModelRef,
				}),
			}),
		}),
	})
end

function PreviewViewport:setUpGamepad()
	ContextActionService:UnbindCoreAction("PreviewViewportClose")
	ContextActionService:UnbindCoreAction("PreviewViewportReset")
	ContextActionService:UnbindCoreAction("PreviewViewportRotateAndZoom")

	ContextActionService:BindCoreAction(
		"PreviewViewportClose",
		self.props.closePreviewView,
		false,
		Enum.KeyCode.ButtonB
	)
	local onButtonPressY = function()
		self:resetCameraPosition()
	end
	ContextActionService:BindCoreAction("PreviewViewportReset", onButtonPressY, false, Enum.KeyCode.ButtonY)
	ContextActionService:BindCoreAction(
		"PreviewViewportRotateAndZoom",
		self.storeInput,
		false,
		Enum.KeyCode.Thumbstick2
	)
	self.gamePadConnection = RunService.RenderStepped:Connect(function(deltaTime)
		if self.inputState == Enum.UserInputState.Change and self.inputObject then
			GamepadUtils.rotateAndZoom(
				self.inputObject,
				deltaTime,
				self.setAngularVelocityByPixels,
				self.rotateByRadians,
				self.zoomToPoint
			)
		end
	end)
end

function PreviewViewport:didMount()
	local topLeftInset = GuiService:GetGuiInset()
	self.isMounted = true
	self.absolutePosition = self.ref.current.AbsolutePosition + topLeftInset
	self:processAsset()
	self:setUpGamepad()
end

function PreviewViewport:cleanupGamepad()
	ContextActionService:UnbindCoreAction("PreviewViewportClose")
	ContextActionService:UnbindCoreAction("PreviewViewportReset")
	ContextActionService:UnbindCoreAction("PreviewViewportRotateAndZoom")
	if self.gamePadConnection then
		self.gamePadConnection:Disconnect()
	end
end

function PreviewViewport:willUnmount()
	self.isMounted = false
	self:cleanupGamepad()
end

function PreviewViewport:didUpdate(prevProps)
	local assetChanged = self.props.asset ~= prevProps.asset
	if assetChanged then
		-- Unparent the old model
		if self.model ~= nil then
			self.model.Parent = nil
			self.model = nil
		end

		-- delete old baseplate if it exists
		if self.baseplate ~= nil then
			self.baseplate.Parent = nil
			self.baseplate:Destroy()
		end

		self:processAsset()
	end
end

return PreviewViewport
