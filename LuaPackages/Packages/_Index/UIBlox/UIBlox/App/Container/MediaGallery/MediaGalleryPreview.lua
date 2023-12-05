local RunService = game:GetService("RunService")

local MediaGallery = script.Parent
local Container = MediaGallery.Parent
local App = Container.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local withStyle = require(UIBlox.Core.Style.withStyle)
local Otter = require(Packages.Otter)

local getIconSize = require(App.ImageSet.getIconSize)
local IconSize = require(App.ImageSet.Enum.IconSize)
local Images = require(App.ImageSet.Images)
local IconButton = require(App.Button.IconButton)
local ExternalEventConnection = require(UIBlox.Utility.ExternalEventConnection)
local ThumbnailButton = require(MediaGallery.ThumbnailButton)
local getShowItems = require(MediaGallery.getShowItems)

local ICON_CYCLE_LEFT = "icons/actions/cycleLeft"
local ICON_CYCLE_RIGHT = "icons/actions/cycleRight"

local DEFAULT_THUMBNAILS_COUNT = 5
local PADDING_MIDDLE = 24
local PADDING_ITEMS = 12
local CORNER_RADIUS = 8
local IMAGE_RATIO = 16 / 9 -- width / height
local PAGINATION_ARROW_WIDTH = getIconSize(IconSize.Medium)

local METER_BAR_THICKNESS = 2
local METER_ANIMATION_INTERVAL = 5
local FADE_ANIMATION_INTERVAL = 0.5
local SPRING_PARAMETERS = {
	frequency = 4,
	dampingRatio = 1,
}

local MediaGalleryPreview = Roact.Component:extend("MediaGalleryPreview")

MediaGalleryPreview.validateProps = t.strictInterface({
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
	items = t.array(t.strictInterface({
		-- URL of image to be rendered
		imageId = t.string,
		-- A Boolean value that determines whether this item is a video
		isVideo = t.optional(t.boolean),
	})),
	-- The number of thumbnails to be displayed
	numberOfThumbnails = t.optional(t.integer),
	-- Callback for clicking the previewing image
	onPreviewActivated = t.optional(t.callback),
	-- Callback for clicking the video item or the play button on it
	onVideoPlayActivated = t.optional(t.callback),
})

MediaGalleryPreview.defaultProps = {
	size = UDim2.fromScale(1, 1),
	numberOfThumbnails = DEFAULT_THUMBNAILS_COUNT,
}

function MediaGalleryPreview.getDerivedStateFromProps(nextProps, lastState)
	if lastState.items == nextProps.items and lastState.numberOfThumbnails == nextProps.numberOfThumbnails then
		return
	end

	local itemsToShow, videoItemsSize, imageItemsSize = getShowItems(nextProps)
	return {
		items = nextProps.items,
		numberOfThumbnails = nextProps.numberOfThumbnails,
		itemsToShow = itemsToShow,
		videoItemsSize = videoItemsSize,
		imageItemsSize = imageItemsSize,
		animationOn = imageItemsSize > 1,
		animatedIndex = videoItemsSize + 1,
		selectedIndex = videoItemsSize + 1,
	}
end

function MediaGalleryPreview:init()
	self.state = {
		items = nil,
		numberOfThumbnails = 1,
		itemsToShow = nil,
		videoItemsSize = 0,
		imageItemsSize = 0,
		animationOn = false,
		animatedIndex = 1,
		selectedIndex = 1,
		showArrows = false,
		focusIndex = 1,
	}

	self.animationTime = 0
	self.scrolling = false
	self.scrollMotor = Otter.createSingleMotor(0)

	self.contentSize, self.updateContentSize = Roact.createBinding(UDim2.fromScale(1, 1))
	self.previewSize, self.updatePreviewSize = Roact.createBinding(UDim2.fromScale(1, 0.5))
	self.paginationSize, self.updatePaginationSize = Roact.createBinding(UDim2.fromScale(1, 0.5))
	self.thumbnailSize, self.updateThumbnailSize = Roact.createBinding(UDim2.fromScale(0, 0))

	self.canvasPosition, self.updateCanvasPosition = Roact.createBinding(Vector2.new(0, 0))
	self.progress, self.updateProgress = Roact.createBinding(0)
	self.previewTransparency, self.updatePreviewTransparency = Roact.createBinding(0)

	self.onResize = function(container)
		self:updateSizes(container)
		self.updateCanvasPosition(Vector2.new(self:getCanvasPositionX(), 0))
	end

	self.onMouseLeave = function(_, input)
		if input.UserInputType ~= Enum.UserInputType.MouseMovement then
			return
		end

		self.resetAnimation()
		self:setState(function(prevState)
			local nextAnimatedIndex = prevState.selectedIndex
			local nextFocusIndex = self.getNextFocusIndex(nextAnimatedIndex)

			return {
				animationOn = prevState.imageItemsSize > 1,
				animatedIndex = nextAnimatedIndex,
				focusIndex = nextFocusIndex,
			}
		end)
	end

	self.onPreviewActivated = function()
		self.resetAnimation()
		self:setState({
			animationOn = false,
		})

		if self.props.onPreviewActivated then
			local itemsToShow = self.state.itemsToShow
			local selectedIndex = self.state.selectedIndex
			local originalIndex = itemsToShow[selectedIndex].originalIndex

			self.props.onPreviewActivated(originalIndex)
		end
	end

	self.onMouseEnterPagination = function(_, input)
		if input.UserInputType ~= Enum.UserInputType.MouseMovement then
			return
		end

		self:setState(function(prevState)
			if prevState.showArrows then
				return
			end

			return {
				showArrows = true,
			}
		end)
	end

	self.onMouseLeavePagination = function(_, input)
		if input.UserInputType ~= Enum.UserInputType.MouseMovement then
			return
		end

		self:setState(function(prevState)
			if not prevState.showArrows then
				return
			end

			return {
				showArrows = false,
			}
		end)
	end

	self.onCycleLeftActivated = function()
		if self.scrolling then
			return
		end

		local nextFocusIndex = math.max(self.state.focusIndex - 1, 1)

		self.resetAnimation()
		self:setState({
			animationOn = false,
			focusIndex = nextFocusIndex,
		})
	end

	self.onCycleRightActivated = function()
		if self.scrolling then
			return
		end

		local itemsCount = #self.props.items
		local nextFocusIndex = math.min(self.state.focusIndex + 1, itemsCount)

		self.resetAnimation()
		self:setState({
			animationOn = false,
			focusIndex = nextFocusIndex,
		})
	end

	self.onItemActivated = function(index)
		local itemsToShow = self.state.itemsToShow
		local isVideo = itemsToShow[index].isVideo

		self.resetAnimation()
		self:setState({
			animationOn = false,
			selectedIndex = not isVideo and index or nil,
		})

		if isVideo then
			self.onVideoPlayActivated(index)
		end
	end

	self.onItemPlayActivated = function(index)
		self.resetAnimation()
		self:setState({
			animationOn = false,
		})

		self.onVideoPlayActivated(index)
	end

	self.onVideoPlayActivated = function(index)
		if self.props.onVideoPlayActivated then
			local itemsToShow = self.state.itemsToShow
			local originalIndex = itemsToShow[index].originalIndex

			self.props.onVideoPlayActivated(originalIndex)
		end
	end

	self.getNextFocusIndex = function(animatedIndex)
		local lastFocusIndex = self.state.focusIndex
		local numberOfThumbnails = self.props.numberOfThumbnails

		if animatedIndex < lastFocusIndex then
			return animatedIndex
		end

		if animatedIndex >= lastFocusIndex + numberOfThumbnails then
			return animatedIndex - numberOfThumbnails + 1
		end

		return lastFocusIndex
	end

	self.resetAnimation = function()
		self.animationTime = 0
		self.updateProgress(0)
		self.updatePreviewTransparency(0)
	end

	self.renderSteppedCallback = function(deltaTime)
		self.animationTime = self.animationTime + deltaTime
		local fadeAnimationTime = self.animationTime - (METER_ANIMATION_INTERVAL - FADE_ANIMATION_INTERVAL)

		if self.animationTime > METER_ANIMATION_INTERVAL then
			self.animationTime = 0
			self.updateProgress(0)

			local lastAnimatedIndex = self.state.animatedIndex
			local videoItemsSize = self.state.videoItemsSize
			local imageItemsSize = self.state.imageItemsSize
			local nextAnimatedIndex = (lastAnimatedIndex - videoItemsSize) % imageItemsSize + 1 + videoItemsSize
			local nextFocusIndex = self.getNextFocusIndex(nextAnimatedIndex)

			self:setState({
				animatedIndex = nextAnimatedIndex,
				selectedIndex = nextAnimatedIndex,
				focusIndex = nextFocusIndex,
			})
		else
			self.updateProgress(self.animationTime / METER_ANIMATION_INTERVAL)

			if fadeAnimationTime > 0 then
				self.updatePreviewTransparency(fadeAnimationTime / FADE_ANIMATION_INTERVAL)
			end
		end
	end

	self.scrollMotorOnStep = function(value)
		self.updateCanvasPosition(Vector2.new(value, 0))
	end

	self.scrollMotorOnComplete = function()
		self.scrolling = false
	end

	self.scrollMotor:onStep(self.scrollMotorOnStep)
	self.scrollMotor:onComplete(self.scrollMotorOnComplete)
end

function MediaGalleryPreview:render()
	local layoutOrder = self.props.layoutOrder
	local anchorPoint = self.props.anchorPoint
	local position = self.props.position
	local size = self.props.size
	local numberOfThumbnails = self.props.numberOfThumbnails
	local itemsSize = #self.props.items

	local itemsToShow = self.state.itemsToShow
	local showArrows = self.state.showArrows
	local focusIndex = self.state.focusIndex
	local selectedIndex = self.state.selectedIndex
	local animationOn = self.state.animationOn
	local videoItemsSize = self.state.videoItemsSize
	local imageItemsSize = self.state.imageItemsSize

	local inputActive = itemsSize > 1 and not animationOn
	local nextSelectedIndex = animationOn and (selectedIndex - videoItemsSize) % imageItemsSize + 1 + videoItemsSize
		or nil
	local paginationInputActive = itemsSize > numberOfThumbnails
	local leftArrowDisabled = focusIndex <= 1
	local rightArrowDisabled = focusIndex + numberOfThumbnails > #itemsToShow

	return withStyle(function(style)
		return Roact.createElement("Frame", {
			LayoutOrder = layoutOrder,
			Size = size,
			AnchorPoint = anchorPoint,
			Position = position,
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			[Roact.Change.AbsoluteSize] = self.onResize,
			[Roact.Event.InputEnded] = inputActive and self.onMouseLeave or nil,
		}, {
			Content = Roact.createElement("Frame", {
				Size = self.contentSize,
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
			}, {
				ListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, PADDING_MIDDLE),
				}),
				Preview = Roact.createElement("Frame", {
					LayoutOrder = 1,
					Size = self.previewSize,
					BackgroundTransparency = 1,
				}, {
					AnimationLabel = animationOn and Roact.createElement("ImageLabel", {
						Size = UDim2.fromScale(1, 1),
						Image = nextSelectedIndex and itemsToShow[nextSelectedIndex].imageId,
						BackgroundTransparency = 1,
						ZIndex = -1,
					}, {
						Corner = Roact.createElement("UICorner", {
							CornerRadius = UDim.new(0, CORNER_RADIUS),
						}),
					}) or nil,
					Button = Roact.createElement("ImageButton", {
						Size = UDim2.fromScale(1, 1),
						Image = itemsToShow[selectedIndex].imageId,
						ImageTransparency = self.previewTransparency,
						BackgroundTransparency = 1,
						AutoButtonColor = false,
						ZIndex = 1,
						[Roact.Event.Activated] = self.onPreviewActivated,
					}, {
						Corner = Roact.createElement("UICorner", {
							CornerRadius = UDim.new(0, CORNER_RADIUS),
						}),
					}),
				}),
				Pagination = Roact.createElement("Frame", {
					LayoutOrder = 2,
					Size = self.paginationSize,
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					[Roact.Event.InputBegan] = paginationInputActive and self.onMouseEnterPagination or nil,
					[Roact.Event.InputEnded] = paginationInputActive and self.onMouseLeavePagination or nil,
				}, {
					LeftArrow = showArrows and Roact.createElement(IconButton, {
						size = UDim2.new(0, PAGINATION_ARROW_WIDTH, 1, 0),
						anchorPoint = Vector2.new(0, 0.5),
						position = UDim2.fromScale(0, 0.5),
						icon = Images[ICON_CYCLE_LEFT],
						isDisabled = leftArrowDisabled,
						onActivated = self.onCycleLeftActivated,
					}) or nil,
					Scroller = self:renderScroller(style),
					RightArrow = showArrows and Roact.createElement(IconButton, {
						size = UDim2.new(0, PAGINATION_ARROW_WIDTH, 1, 0),
						anchorPoint = Vector2.new(1, 0.5),
						position = UDim2.fromScale(1, 0.5),
						icon = Images[ICON_CYCLE_RIGHT],
						isDisabled = rightArrowDisabled,
						onActivated = self.onCycleRightActivated,
					}) or nil,
				}),
			}),
			EventConnection = animationOn and Roact.createElement(ExternalEventConnection, {
				event = RunService.RenderStepped,
				callback = self.renderSteppedCallback,
			}) or nil,
		})
	end)
end

function MediaGalleryPreview:renderScroller(style)
	return Roact.createElement("ScrollingFrame", {
		Size = UDim2.new(1, -PAGINATION_ARROW_WIDTH * 2, 1, 0),
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.fromScale(0.5, 0.5),
		BackgroundTransparency = 1,
		ScrollBarThickness = 0,
		ClipsDescendants = true,
		ScrollingDirection = Enum.ScrollingDirection.X,
		AutomaticCanvasSize = Enum.AutomaticSize.XY,
		CanvasPosition = self.canvasPosition,
	}, self:renderThumbnails(style))
end

function MediaGalleryPreview:renderThumbnails(style)
	local selectedIndex = self.state.selectedIndex
	local animationOn = self.state.animationOn
	local animatedIndex = self.state.animatedIndex

	local thumbnails = {
		ListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, PADDING_ITEMS),
		}),
	}

	for index, item in ipairs(self.state.itemsToShow) do
		local isVideo = item.isVideo
		local isSelected = index == selectedIndex
		local isAnimated = animationOn and index == animatedIndex
		local notEmpty = item.imageId and item.imageId ~= ""

		thumbnails["item" .. index] = Roact.createElement("Frame", {
			LayoutOrder = index,
			Size = self.thumbnailSize,
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
		}, {
			Thumbnail = Roact.createElement(ThumbnailButton, {
				itemKey = index,
				imageId = item.imageId,
				isVideo = item.isVideo,
				isSelected = isSelected,
				onActivated = notEmpty and self.onItemActivated or nil,
				onPlayActivated = isVideo and self.onItemPlayActivated or nil,
				useScaledPlayButton = true,
			}),
			TimerBar = isAnimated and self:renderTimerBar(style) or nil,
		})
	end

	return thumbnails
end

function MediaGalleryPreview:renderTimerBar(style)
	local backgroundTheme = style.Theme.UIDefault
	local foregroundTheme = style.Theme.SecondaryContent

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, METER_BAR_THICKNESS),
		AnchorPoint = Vector2.new(0, 1),
		Position = UDim2.fromScale(0, 1),
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		ClipsDescendants = true,
		ZIndex = 100,
	}, {
		Background = Roact.createElement("Frame", {
			Size = self.thumbnailSize,
			AnchorPoint = Vector2.new(0, 1),
			Position = UDim2.fromScale(0, 1),
			BorderSizePixel = 0,
			BackgroundColor3 = backgroundTheme.Color,
			BackgroundTransparency = backgroundTheme.Transparency,
		}, {
			Corner = Roact.createElement("UICorner", {
				CornerRadius = UDim.new(0, CORNER_RADIUS),
			}),
			Progress = Roact.createElement("Frame", {
				Size = self.progress:map(function(value)
					return UDim2.fromScale(value, 1)
				end),
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				ClipsDescendants = true,
			}, {
				Foreground = Roact.createElement("Frame", {
					Size = self.thumbnailSize,
					BorderSizePixel = 0,
					BackgroundColor3 = foregroundTheme.Color,
					BackgroundTransparency = foregroundTheme.Transparency,
				}, {
					Corner = Roact.createElement("UICorner", {
						CornerRadius = UDim.new(0, CORNER_RADIUS),
					}),
				}),
			}),
		}),
	})
end

function MediaGalleryPreview:didUpdate(_, prevState)
	if self.state.focusIndex ~= prevState.focusIndex then
		self:scrollToNewIndex()
	end

	if self.state.selectedIndex ~= prevState.selectedIndex then
		self.updatePreviewTransparency(0)
	end
end

function MediaGalleryPreview:calcSizesFromWidth(containerWidth, numberOfThumbnails)
	local previewWidth = containerWidth - PAGINATION_ARROW_WIDTH * 2
	local previewHeight = math.floor(previewWidth / IMAGE_RATIO)
	local thumbnailWidth = math.floor(
		(containerWidth - PADDING_ITEMS * (numberOfThumbnails - 1) - PAGINATION_ARROW_WIDTH * 2) / numberOfThumbnails
	)
	local paginationHeight = math.floor(thumbnailWidth / IMAGE_RATIO)
	local contentHeight = previewHeight + paginationHeight + PADDING_MIDDLE

	return {
		contentSize = UDim2.fromOffset(containerWidth, contentHeight),
		previewSize = UDim2.fromOffset(previewWidth, previewHeight),
		paginationSize = UDim2.fromOffset(containerWidth, paginationHeight),
		thumbnailSize = UDim2.fromOffset(thumbnailWidth, paginationHeight),
	}
end

function MediaGalleryPreview:calcSizesFromHeight(containerHeight, numberOfThumbnails)
	-- reverse calculation of calcSizesFromWidth()
	local contentWidth = math.floor(
		(
			math.floor((containerHeight - PADDING_MIDDLE) * IMAGE_RATIO * numberOfThumbnails)
			+ PADDING_ITEMS * (numberOfThumbnails - 1)
			+ PAGINATION_ARROW_WIDTH * 2
			+ PAGINATION_ARROW_WIDTH * 2 * numberOfThumbnails
		) / (numberOfThumbnails + 1)
	)

	return self:calcSizesFromWidth(contentWidth, numberOfThumbnails)
end

function MediaGalleryPreview:updateSizes(container)
	local containerWidth = container.AbsoluteSize.X
	local containerHeight = container.AbsoluteSize.Y
	local numberOfThumbnails = self.props.numberOfThumbnails

	local sizes = self:calcSizesFromWidth(containerWidth, numberOfThumbnails)
	if sizes.contentSize.Y.Offset > containerHeight then
		sizes = self:calcSizesFromHeight(containerHeight, numberOfThumbnails)
	end

	self.updateContentSize(sizes.contentSize)
	self.updatePreviewSize(sizes.previewSize)
	self.updatePaginationSize(sizes.paginationSize)
	self.updateThumbnailSize(sizes.thumbnailSize)
end

function MediaGalleryPreview:getCanvasPositionX()
	local focusIndex = self.state.focusIndex
	local thumbnailW = self.thumbnailSize:getValue().X.Offset
	return (focusIndex - 1) * (thumbnailW + PADDING_ITEMS)
end

function MediaGalleryPreview:scrollToNewIndex()
	local oldX = self.canvasPosition:getValue().X
	local newX = self:getCanvasPositionX()

	self.scrollMotor:setGoal(Otter.instant(oldX))
	self.scrollMotor:setGoal(Otter.spring(newX, SPRING_PARAMETERS))
	self.scrolling = true
end

return MediaGalleryPreview
