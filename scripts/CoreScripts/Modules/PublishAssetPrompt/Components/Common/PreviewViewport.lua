--!nonstrict
--[[
	PreviewViewport
	A viewport to provide a detailed preview of the asset to the user
    It accepts animationClip or a model as a parameter.
    It allows for zooming, panning and rotating the previewed asset.
]]
local AnimationClipProvider = game:GetService("AnimationClipProvider")
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local ShimmerPanel = UIBlox.App.Loading.ShimmerPanel
local EmptyState = UIBlox.App.Indicator.EmptyState
local IconButton = UIBlox.App.Button.IconButton
local IconSize = UIBlox.App.ImageSet.Enum.IconSize
local PrimarySystemButton = UIBlox.App.Button.PrimarySystemButton
local StandardButtonSize = UIBlox.App.Button.Enum.StandardButtonSize

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)
local InteractionFrame = require(script.Parent.InteractionFrame)
local Constants = require(script.Parent.Parent.Parent.Constants)

local UIBloxImages = UIBlox.App.ImageSet.Images
local PreviewShrinkIcon = UIBloxImages["icons/actions/previewShrink"]

local CAMERA_FOV = 30
local INITIAL_ZOOM_FACTOR = 1
local ANIMATION_CLIP_INITIAL_ZOOM_FACTOR = 0.75
local MAX_ZOOM_FACTOR = 10
local MIN_ZOOM_FACTOR = 0.3
local MIN_X_AXIS_ROTATION = -80
local MAX_X_AXIS_ROTATION = 80
local WORLD_Y_AXIS = Vector3.new(0, 1, 0)
local WORLD_X_AXIS = Vector3.new(1, 0, 0)

local ZOOM_STEP = 0.9

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

function PreviewViewport:init()
	self:setState({
		loadingState = LoadingState.LOADING,
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
	end

	self.rotateByPixels = function(pixelDelta)
		-- changing the position of the cursor along the X axis corresponds to a rotation around the Y axis
		-- changing the position of the cursor along the Y axis corresponds to a rotation around the X axis
		self.cameraDegreesAngle =
			Vector2.new(self.cameraDegreesAngle.X - pixelDelta.Y, self.cameraDegreesAngle.Y - pixelDelta.X)

		self:clampOffsets()
		self:updateCameraPosition()
	end

	self.setAngularVelocityByPixels = function(pixelVelocity) end

	self.zoomToPoint = function(zoomDelta, screenPixelPoint)
		local additionalZoomAplied = ZOOM_STEP ^ zoomDelta
		local newZoomFactor = self.zoomFactor * additionalZoomAplied

		-- we just check if zoom will change in value after clamping
		if newZoomFactor ~= math.clamp(newZoomFactor, MIN_ZOOM_FACTOR, MAX_ZOOM_FACTOR) then
			return
		end
		self.zoomFactor = newZoomFactor

		-- we translate screen coordinates to camera's current view coordinates with the center as (0,0)
		local pointFromCenter = screenPixelPoint - (self.absolutePosition + self.absoluteSize / 2)
		pointFromCenter = pointFromCenter * Vector2.new(1, -1) * -1
		-- we change the cameraPanInPixels to keep pointFromCenter in position when zooming
		self.cameraPanInPixels = pointFromCenter - (pointFromCenter - self.cameraPanInPixels) * additionalZoomAplied

		self:clampOffsets()
		self:updateCameraPosition()
	end

	self.onRetryLoading = function()
		self:processAsset()
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
				local mannequinRig = Players:GetHumanoidDescriptionFromOutfitId(MANNEQUIN_OUTFIT_ID)
				return mannequinRig
			end)

			local newModel
			if ok then
				newModel = Players:CreateHumanoidModelFromDescription(humanoidDescription, Enum.HumanoidRigType.R15)
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
	elseif asset:IsA("Model") then
		self.model = asset:Clone()
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

		-- TODO: move buttons to a superview
		ResetViewButton = (loadingState == LoadingState.SUCCESSFULLY_LOADED)
			and Roact.createElement(PrimarySystemButton, {
				standardSize = StandardButtonSize.XSmall,
				position = UDim2.new(0, 20, 1, -20),
				anchorPoint = Vector2.new(0, 1),
				text = localized.resetViewButtonText,
				onActivated = function()
					self:resetCameraPosition()
				end,
			}),

		ShrinkPreviewButton = Roact.createElement(IconButton, {
			position = UDim2.new(1, -20, 1, -20),
			anchorPoint = Vector2.new(1, 1),
			icon = PreviewShrinkIcon,
			iconSize = IconSize.Medium,
			onActivated = function()
				self.props.closePreviewView()
			end,
		}),

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

function PreviewViewport:didMount()
	local topLeftInset = GuiService:GetGuiInset()
	self.isMounted = true
	self.absolutePosition = self.ref.current.AbsolutePosition + topLeftInset
	self:processAsset()
end

function PreviewViewport:willUnmount()
	self.isMounted = false
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
