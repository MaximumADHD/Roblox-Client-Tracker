--!nonstrict
local UserInputService = game:GetService("UserInputService")

local MediaGallery = script.Parent
local Container = MediaGallery.Parent
local App = Container.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local Images = require(App.ImageSet.Images)
local IconButton = require(App.Button.IconButton)
local ExternalEventConnection = require(UIBlox.Utility.ExternalEventConnection)
local withStyle = require(UIBlox.Core.Style.withStyle)

local ThumbnailButton = require(MediaGallery.ThumbnailButton)
local getShowItems = require(MediaGallery.getShowItems)

local ICON_CYCLE_LEFT = "icons/actions/cycleLeft"
local ICON_CYCLE_RIGHT = "icons/actions/cycleRight"
local IMAGE_RATIO = 16 / 9 -- width / height
local ARROW_WIDTH = 96

local MediaGalleryFullScreen = Roact.Component:extend("MediaGalleryFullScreen")

MediaGalleryFullScreen.validateProps = t.strictInterface({
	-- The LayoutOrder of the cell
	layoutOrder = t.optional(t.integer),
	-- The Size of the cell.
	-- If it's no set, the cell will size itself to the parent container
	size = t.optional(t.UDim2),
	-- The AnchorPoint of the cell
	anchorPoint = t.optional(t.Vector2),
	-- The Position of the cell
	position = t.optional(t.UDim2),
	-- Array of items to be rendered
	items = t.array(t.interface({
		-- URL of image to be rendered
		imageId = t.string,
		-- A Boolean value that determines whether this item is a video
		isVideo = t.optional(t.boolean),
	})),
	-- The number of image to be displayed first
	showIndex = t.optional(t.integer),
	-- Callback for clicking the video item or the play button on it
	onVideoPlayActivated = t.optional(t.callback),
})

MediaGalleryFullScreen.defaultProps = {
	size = UDim2.fromScale(1, 1),
	showIndex = 1,
}

function MediaGalleryFullScreen.getDerivedStateFromProps(nextProps, lastState)
	local nextState

	if lastState.items ~= nextProps.items then
		local itemsToShow = getShowItems(nextProps)

		nextState = {
			items = nextProps.items,
			itemsToShow = itemsToShow,
			showArrows = #itemsToShow > 1,
			focusIndex = math.min(lastState.focusIndex or 1, #itemsToShow),
		}
	end

	if lastState.showIndex ~= nextProps.showIndex then
		nextState = nextState or {}
		nextState.showIndex = nextProps.showIndex
		nextState.focusIndex = math.min(nextProps.showIndex, #nextProps.items)
	end

	return nextState
end

function MediaGalleryFullScreen:init()
	self.state = {
		items = nil,
		itemsToShow = nil,
		showArrows = true,
		focusIndex = 1,
		showIndex = 1,
	}

	self.itemFrameSize, self.updateItemFrameSize = Roact.createBinding(UDim2.fromScale(1, 1))
	self.arrowButtonSize, self.updateArrowButtonSize = Roact.createBinding(UDim2.new(0, ARROW_WIDTH, 1, 0))
	self.leftArrowPosition, self.updateLeftArrowPosition = Roact.createBinding(UDim2.new(0.5, 0, 0.5, 0))
	self.rightArrowPosition, self.updateRightArrowPosition = Roact.createBinding(UDim2.new(0.5, 0, 0.5, 0))

	self.onResize = function(container)
		local containerWidth = container.AbsoluteSize.X
		local containerHeight = container.AbsoluteSize.Y

		local itemFrameHeight = containerHeight
		local itemFrameWidth = math.floor(itemFrameHeight * IMAGE_RATIO)
		if itemFrameWidth > containerWidth then
			itemFrameWidth = containerWidth
			itemFrameHeight = math.floor(itemFrameWidth / IMAGE_RATIO)
		end

		self.updateItemFrameSize(UDim2.new(0, itemFrameWidth, 0, itemFrameHeight))
	end

	self.onImageResize = function(container)
		local containerWidth = container.AbsoluteSize.X
		local containerHeight = container.AbsoluteSize.Y

		self.updateLeftArrowPosition(UDim2.new(0.5, -containerWidth / 2, 0.5, 0))
		self.updateRightArrowPosition(UDim2.new(0.5, containerWidth / 2, 0.5, 0))
		self.updateArrowButtonSize(UDim2.new(0, ARROW_WIDTH, 0, containerHeight))
	end

	self.onUserInputBegan = function(input)
		if input.UserInputType ~= Enum.UserInputType.Keyboard then
			return
		end

		local focusIndex = self.state.focusIndex
		local itemsCount = #self.props.items

		if input.KeyCode == Enum.KeyCode.Left and focusIndex > 1 then
			self.showPreviousItem()
		elseif input.KeyCode == Enum.KeyCode.Right and focusIndex < itemsCount then
			self.showNextItem()
		end
	end

	self.showPreviousItem = function()
		local nextFocusIndex = self.state.focusIndex - 1
		if nextFocusIndex < 1 then
			nextFocusIndex = 1
		end

		self:setState({
			focusIndex = nextFocusIndex,
		})
	end

	self.showNextItem = function()
		local itemsCount = #self.props.items
		local nextFocusIndex = self.state.focusIndex + 1
		if nextFocusIndex > itemsCount then
			nextFocusIndex = itemsCount
		end

		self:setState({
			focusIndex = nextFocusIndex,
		})
	end

	self.cycleNext = function()
		local itemsCount = #self.props.items
		local nextFocusIndex = self.state.focusIndex + 1
		if nextFocusIndex > itemsCount then
			nextFocusIndex = 1
		end

		self:setState({
			focusIndex = nextFocusIndex,
		})
	end

	self.onVideoPlayActivated = function(index)
		if self.props.onVideoPlayActivated then
			local itemsToShow = self.state.itemsToShow
			local originalIndex = itemsToShow[index].originalIndex

			self.props.onVideoPlayActivated(originalIndex)
		end
	end
end
local function renderArrowButton(style, icon, arrowDisabled, anchorPoint, position, size, onActivated)
	return Roact.createElement("Frame", {
		Size = size,
		AnchorPoint = anchorPoint,
		Position = position,
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		ZIndex = 100,
	}, {
		ArrowButton = Roact.createElement(IconButton, {
			size = UDim2.fromScale(1, 1),
			icon = Images[icon],
			showBackground = true,
			backgroundTransparency = 1,
			isDisabled = arrowDisabled,
			onActivated = onActivated,
		}),
	})
end

function MediaGalleryFullScreen:render()
	return withStyle(function(style)
		return self:renderWithProvider(style)
	end)
end

function MediaGalleryFullScreen:renderWithProvider(style)
	local layoutOrder = self.props.layoutOrder
	local anchorPoint = self.props.anchorPoint
	local position = self.props.position
	local size = self.props.size

	local itemsToShow = self.state.itemsToShow
	local showArrows = self.state.showArrows
	local focusIndex = self.state.focusIndex

	local item = itemsToShow[focusIndex]
	local leftArrowDisabled = focusIndex <= 1
	local rightArrowDisabled = focusIndex >= #itemsToShow

	return Roact.createElement("Frame", {
		LayoutOrder = layoutOrder,
		Size = size,
		AnchorPoint = anchorPoint,
		Position = position,
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		[Roact.Change.AbsoluteSize] = self.onResize,
	}, {
		LeftArrow = if showArrows
			then renderArrowButton(
				style,
				ICON_CYCLE_LEFT,
				leftArrowDisabled,
				Vector2.new(1, 0.5),
				self.leftArrowPosition,
				self.arrowButtonSize,
				self.showPreviousItem
			)
			else nil,
		FullScreenItemFrame = Roact.createElement("Frame", {
			Size = UDim2.new(1, -2 * ARROW_WIDTH, 1, 0),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			BackgroundTransparency = 1,
			[Roact.Change.AbsoluteSize] = self.onImageResize,
		}, {
			UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
				AspectRatio = IMAGE_RATIO,
			}),
			Item = Roact.createElement(ThumbnailButton, {
				itemKey = focusIndex,
				imageId = item.imageId,
				isVideo = item.isVideo,
				userInteractionEnabled = true,
				onActivated = self.cycleNext,
				onPlayActivated = item.isVideo and self.onVideoPlayActivated or nil,
			}),
		}),
		RightArrow = if showArrows
			then renderArrowButton(
				style,
				ICON_CYCLE_RIGHT,
				rightArrowDisabled,
				Vector2.new(0, 0.5),
				self.rightArrowPosition,
				self.arrowButtonSize,
				self.showNextItem
			)
			else nil,
		EventConnection = showArrows and Roact.createElement(ExternalEventConnection, {
			event = UserInputService.InputBegan,
			callback = self.onUserInputBegan,
		}) or nil,
	})
end

return MediaGalleryFullScreen
