-- disable linting for GetModelCFrame function usage
--!nolint DeprecatedApi
--[[
	EmoteThumbnailView.lua
	A component for displaying a square ViewportFrame of a given emote thumbnail.
]]

local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local EmoteUtility = require(CorePackages.Thumbnailing).EmoteUtility
local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)

local EmoteThumbnailParameters = require(script.Parent.EmoteThumbnailParameters)

local THUMBNAIL_CAMERA_FOV = 20 -- this parameter is matching the one in AnimationSilhouette which is responsible for creating emote icons on RCC
local MANNEQUIN_OUTFIT_ID = 1342485078 -- this is an outfitId of Mannequin-Blocky bundle that is used to create emote thumbnails https://www.roblox.com/bundles/515/Mannequin-Blocky

local EmoteThumbnailView = Roact.PureComponent:extend("EmoteThumbnailView")

EmoteThumbnailView.validateProps = t.strictInterface({
	animationClip = t.instanceIsA("AnimationClip"),
	thumbnailParameters = EmoteThumbnailParameters.validate,

	position = t.optional(t.UDim2),
	anchorPoint = t.optional(t.Vector2),
	size = t.optional(t.UDim2),
})

function EmoteThumbnailView:updateCameraAndCharacterPose()
	if self.character == nil then
		return
	end

	local props = self.props
	local model = self.character
	local emoteAnimationClip = props.animationClip

	local parameters = props.thumbnailParameters

	local thumbnailTime = parameters.thumbnailTime
	local thumbnailKeyframeNumber = parameters.thumbnailKeyframe
	local rotationDegrees = parameters.thumbnailCharacterRotation

	local thumbnailKeyframe
	if emoteAnimationClip:IsA("CurveAnimation") then
		thumbnailKeyframe =
			EmoteUtility.GetThumbnailKeyframeFromCurve(thumbnailTime, emoteAnimationClip, rotationDegrees)
	elseif emoteAnimationClip:IsA("KeyframeSequence") then
		thumbnailKeyframe =
			EmoteUtility.GetThumbnailKeyframe(thumbnailKeyframeNumber, emoteAnimationClip, rotationDegrees)
	else
		error("Unsupported Animation data:", emoteAnimationClip.ClassName)
	end

	-- reset all joints as keyframe's pose can alter just a subset of joints
	EmoteUtility.SetPlayerCharacterNeutralPose(model)

	-- two last parameters are deprecated and not used but here just to satisfy the roblox-cli
	EmoteUtility.ApplyKeyframe(model, thumbnailKeyframe)

	task.spawn(function()
		-- this wait for the animation to make sure the pose is updated
		-- on the character for GetModelCFrame to provide a proper value
		RunService.PreAnimation:Wait()
		RunService.PostSimulation:Wait()

		-- this is a hack to invalidate the cache inside GetExtentsSize which is also used in GetModelCFrame
		local folderHack = Instance.new("Folder")
		folderHack.Parent = model
		folderHack:Destroy()

		local modelCFrame = model:GetModelCFrame()

		local thumbnailCameraCFrame = EmoteUtility.ThumbnailZoomExtents(
			model,
			THUMBNAIL_CAMERA_FOV,
			parameters.thumbnailHorizontalOffset,
			parameters.thumbnailVerticalOffset,
			parameters.thumbnailZoom
		)

		self.updateCameraCFrameBinding(thumbnailCameraCFrame)
		self.updateCameraFocusBinding(modelCFrame)
	end)
end

function EmoteThumbnailView:addCharacterToViewportIfNeeded()
	if self.character ~= nil and self.character.Parent ~= nil then
		return
	end

	if self.worldModelRef:getValue() and self.character ~= nil then
		self.character.Parent = self.worldModelRef:getValue()
		self:updateCameraAndCharacterPose()
	end
end

function EmoteThumbnailView:init()
	self.cameraRef = Roact.createRef()
	self.worldModelRef = Roact.createRef()

	self.cameraCFrameBinding, self.updateCameraCFrameBinding = Roact.createBinding(CFrame.new())
	self.cameraFocusBinding, self.updateCameraFocusBinding = Roact.createBinding(CFrame.new())

	task.spawn(function()
		-- default character for emote creation
		local ok, humanoidDescription = pcall(function()
			-- this is an outfit of Mannequin-Blocky bundle that is used to create emote thumbnails https://www.roblox.com/bundles/515/Mannequin-Blocky
			local mannequinRig = Players:GetHumanoidDescriptionFromOutfitId(MANNEQUIN_OUTFIT_ID)
			return mannequinRig
		end)
		if not ok then
			humanoidDescription = Instance.new("HumanoidDescription")
		end
		self.character = Players:CreateHumanoidModelFromDescription(humanoidDescription, Enum.HumanoidRigType.R15)
		self:addCharacterToViewportIfNeeded()
	end)
end

function EmoteThumbnailView:render()
	return Roact.createElement("Frame", {
		BackgroundTransparency = 0,
		Position = self.props.position or UDim2.fromScale(0, 0),
		AnchorPoint = self.props.anchorPoint or Vector2.new(0, 0),
		Size = self.props.size or UDim2.fromScale(1, 1),
		-- this is the thumbnail's background color
		BackgroundColor3 = Color3.fromRGB(200, 200, 200),
	}, {
		UICorner = Roact.createElement("UICorner", {
			CornerRadius = UDim.new(0, 8),
		}),

		AspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
			AspectRatio = 1,
			AspectType = Enum.AspectType.FitWithinMaxSize,
			DominantAxis = Enum.DominantAxis.Width,
		}),

		ViewportFrame = Roact.createElement("ViewportFrame", {
			Size = UDim2.fromScale(1, 1),
			Position = UDim2.fromScale(0.5, 0.5),
			AnchorPoint = Vector2.new(0.5, 0.5),

			-- create sihouette effect by making the avatar black, combined with transparent background
			-- background color comes from Parent's BackgroundColor3
			ImageColor3 = Color3.new(0, 0, 0),
			ImageTransparency = 0,
			BackgroundTransparency = 1,

			CurrentCamera = self.cameraRef,
		}, {
			Camera = Roact.createElement("Camera", {
				CameraType = Enum.CameraType.Scriptable,
				FieldOfView = THUMBNAIL_CAMERA_FOV,

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

function EmoteThumbnailView:didMount()
	self:addCharacterToViewportIfNeeded()
end

function EmoteThumbnailView:didUpdate(prevProps)
	self:updateCameraAndCharacterPose()
end

return EmoteThumbnailView
