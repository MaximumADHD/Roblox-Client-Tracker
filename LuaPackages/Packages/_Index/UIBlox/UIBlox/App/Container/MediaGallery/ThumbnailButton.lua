local MediaGallery = script.Parent
local Container = MediaGallery.Parent
local App = Container.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Core = UIBlox.Core

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local ControlState = require(Core.Control.Enum.ControlState)
local withStyle = require(UIBlox.Core.Style.withStyle)

local Interactable = require(Core.Control.Interactable)
local HoverButtonBackground = require(Core.Button.HoverButtonBackground)
local getIconSize = require(App.ImageSet.getIconSize)
local IconSize = require(App.ImageSet.Enum.IconSize)
local Images = require(App.ImageSet.Images)
local ImageSetLabel = require(UIBlox.Core.ImageSet.ImageSetComponent).Label
local PrimaryContextualButton = require(App.Button.PrimaryContextualButton)
local LoadableImage = require(App.Loading.LoadableImage)

local IMAGE_UNAVAILABLE = "icons/imageUnavailable"
local ICON_SIZE = getIconSize(IconSize.Large)

local CORNER_RADIUS = 8

local ICON_PLAY = "icons/common/play"
local PLAY_BUTTON_SIZE = UDim2.fromOffset(64, 48)

local ThumbnailButton = Roact.Component:extend("ThumbnailButton")

ThumbnailButton.validateProps = t.strictInterface({
	layoutOrder = t.optional(t.number),
	size = t.optional(t.UDim2),
	anchorPoint = t.optional(t.Vector2),
	position = t.optional(t.UDim2),

	itemKey = t.any,
	imageId = t.optional(t.string),
	isVideo = t.optional(t.boolean),
	isSelected = t.optional(t.boolean),
	userInteractionEnabled = t.optional(t.boolean),
	onActivated = t.optional(t.callback),
	onPlayActivated = t.optional(t.callback),
})

ThumbnailButton.defaultProps = {
	size = UDim2.fromScale(1, 1),
	imageId = "",
	isVideo = false,
	isSelected = false,
	userInteractionEnabled = true,
}

function ThumbnailButton:init()
	self:setState({
		controlState = ControlState.Initialize,
	})

	self.onStateChanged = function(_, newState)
		self:setState({
			controlState = newState,
		})
	end

	self.onActivated = function()
		if self.props.onActivated then
			self.props.onActivated(self.props.itemKey)
		end
	end

	self.onPlayActivated = function()
		if self.props.onPlayActivated then
			self.props.onPlayActivated(self.props.itemKey)
		end
	end
end

function ThumbnailButton:renderButton()
	return withStyle(function(style)
		local layoutOrder = self.props.layoutOrder
		local anchorPoint = self.props.anchorPoint
		local position = self.props.position
		local size = self.props.size
		local isSelected = self.props.isSelected
		local imageId = self.props.imageId
		local isVideo = self.props.isVideo
		local userInteractionEnabled = self.props.userInteractionEnabled

		local currentState = self.state.controlState
		local hovering = currentState == ControlState.Hover
		local bgStyle = isSelected and style.Theme.BackgroundDefault or style.Theme.BackgroundUIDefault

		return Roact.createElement(Interactable, {
			LayoutOrder = layoutOrder,
			Size = size,
			AnchorPoint = anchorPoint,
			Position = position,
			AutoButtonColor = false,
			BackgroundColor3 = bgStyle.Color,
			BackgroundTransparency = bgStyle.Transparency,
			onStateChanged = self.onStateChanged,
			userInteractionEnabled = userInteractionEnabled,
			[Roact.Event.Activated] = self.onActivated,
		}, {
			Corner = Roact.createElement("UICorner", {
				CornerRadius = UDim.new(0, CORNER_RADIUS),
			}),
			Tile = Roact.createElement(LoadableImage, {
				Size = UDim2.fromScale(1, 1),
				cornerRadius = UDim.new(0, CORNER_RADIUS),
				Image = imageId,
				useShimmerAnimationWhileLoading = true,
				ZIndex = -1,
			}),
			PlayButton = isVideo and Roact.createElement(PrimaryContextualButton, {
				size = PLAY_BUTTON_SIZE,
				anchorPoint = Vector2.new(0.5, 0.5),
				position = UDim2.fromScale(0.5, 0.5),
				icon = Images[ICON_PLAY],
				onActivated = self.onPlayActivated,
			}) or nil,
			HoverBackground = hovering and Roact.createElement(HoverButtonBackground) or nil,
		})
	end)
end

function ThumbnailButton:renderEmptyState()
	return withStyle(function(style)
		local layoutOrder = self.props.layoutOrder
		local anchorPoint = self.props.anchorPoint
		local position = self.props.position
		local size = self.props.size

		return Roact.createElement("Frame", {
			LayoutOrder = layoutOrder,
			Size = size,
			AnchorPoint = anchorPoint,
			Position = position,
			BackgroundColor3 = style.Theme.BackgroundUIDefault.Color,
			BackgroundTransparency = style.Theme.BackgroundUIDefault.Transparency,
		}, {
			Corner = Roact.createElement("UICorner", {
				CornerRadius = UDim.new(0, CORNER_RADIUS),
			}),
			Icon = Roact.createElement(ImageSetLabel, {
				Size = UDim2.fromOffset(ICON_SIZE, ICON_SIZE),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				Image = Images[IMAGE_UNAVAILABLE],
				ImageColor3 = style.Theme.UIDefault.Color,
				ImageTransparency = style.Theme.UIDefault.Transparency,
				BackgroundTransparency = 1,
			}),
		})
	end)
end

function ThumbnailButton:render()
	if self.props.imageId == "" then
		return self:renderEmptyState()
	end

	return self:renderButton()
end

return ThumbnailButton
