--[[
	This Quick Action UI component will turn on/off the users camera.
]]
local CorePackages = game:GetService("CorePackages")
local FaceAnimatorService = game:GetService("FaceAnimatorService")

local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local IconButton = UIBlox.App.Button.IconButton
local withHoverTooltip = UIBlox.App.Dialog.TooltipV2.withHoverTooltip
local Images = UIBlox.App.ImageSet.Images
local ExternalEventConnection = UIBlox.Utility.ExternalEventConnection

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact

local InGameMenu = script.Parent.Parent.Parent
local withLocalization = require(InGameMenu.Localization.withLocalization)
local Constants = require(InGameMenu.Resources.Constants)

local CoreGui = game:GetService("CoreGui")

local VIDEO_IMAGE = Images["icons/controls/video"]
local VIDEO_OFF_IMAGE = Images["icons/controls/videoOff"]

local ToggleCameraButton = Roact.PureComponent:extend("ToggleCameraButton")

ToggleCameraButton.validateProps = t.interface({
	layoutOrder = t.integer,
	iconTransparency = t.optional(t.union(t.number, t.table)),
	backgroundTransparency = t.optional(t.union(t.number, t.table)),
	backgroundColor = t.optional(t.table),
})

function ToggleCameraButton:init()
	self:setState({
		cameraEnabled = if FaceAnimatorService then FaceAnimatorService:IsStarted() and FaceAnimatorService.VideoAnimationEnabled else false,
	})

	self.onActivated = function()
		if not FaceAnimatorService or not FaceAnimatorService:IsStarted() then
			return
		end

		FaceAnimatorService.VideoAnimationEnabled = not FaceAnimatorService.VideoAnimationEnabled

		self:setState({
			cameraEnabled = FaceAnimatorService.VideoAnimationEnabled
		})
	end
end

function ToggleCameraButton:render()
	return withLocalization({
		camera = "CoreScripts.InGameMenu.QuickActions.Camera",
	})(function(localized)
		self.camera = localized.unmuteAll
		return withHoverTooltip({
			headerText = localized.camera,
			textAlignment = Enum.TextXAlignment.Center,
		}, {
			guiTarget = CoreGui,
			DisplayOrder = Constants.DisplayOrder.Tooltips,
		}, function(triggerPointChanged, onStateChanged)
			return Roact.createFragment({
				IconButton = Roact.createElement(IconButton, {
					iconTransparency = self.props.iconTransparency,
					backgroundTransparency = self.props.backgroundTransparency,
					backgroundColor = self.props.backgroundColor,
					showBackground = true,
					layoutOrder = self.props.layoutOrder,
					icon = self.state.cameraEnabled and VIDEO_IMAGE or VIDEO_OFF_IMAGE,
					iconSize = self.props.iconSize,
					onActivated = self.onActivated,
					onStateChanged = onStateChanged,
					buttonRef = self.props.buttonRef,
					[Roact.Change.AbsoluteSize] = triggerPointChanged,
					onAbsolutePositionChanged = triggerPointChanged,
				}),
				VideoEnabledChanged = FaceAnimatorService and Roact.createElement(ExternalEventConnection, {
					event = FaceAnimatorService:GetPropertyChangedSignal("VideoAnimationEnabled"),
					callback = function()
						self:setState({
							cameraEnabled = FaceAnimatorService.VideoAnimationEnabled,
						})
					end,
				}) or nil,
			})
		end)
	end)
end

return ToggleCameraButton
