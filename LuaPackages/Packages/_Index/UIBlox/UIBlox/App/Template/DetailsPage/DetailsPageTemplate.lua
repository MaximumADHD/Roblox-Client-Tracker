local DetailsPage = script.Parent
local Template = DetailsPage.Parent
local App = Template.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local withStyle = require(UIBlox.Core.Style.withStyle)
local LoadableImage = require(App.Loading.LoadableImage)

local Images = require(App.ImageSet.Images)
local IconButton = require(App.Button.IconButton)
local IconSize = require(App.ImageSet.Enum.IconSize)
local getIconSizeUDim2 = require(App.ImageSet.getIconSizeUDim2)
local VerticalScrollView = require(App.Container.VerticalScrollViewV2)

local Constants = require(DetailsPage.Constants)
local DetailsPageHeader = require(DetailsPage.DetailsPageHeader)
local DetailsPageBody = require(DetailsPage.DetailsPageBody)
local validateDetailsPageComponentList = require(DetailsPage.validateDetailsPageComponentList)

local StyledTextLabel = require(App.Text.StyledTextLabel)

local DetailsPageTemplate = Roact.PureComponent:extend("DetailsPageTemplate")

local ICON_CLOSE = Images["icons/navigation/close"]

local HEADER_MAX_PADDING = 500

local DISPLAY_ASPECT_RATIO = 16 / 9

local MOBILE_ACTION_BAR_HEIGHT = 72

DetailsPageTemplate.defaultProps = {
	startingOffsetPosition = HEADER_MAX_PADDING,
	mobileMode = false,
}

DetailsPageTemplate.validateProps = t.strictInterface({
	--Header props
	thumbnailImageUrl = t.optional(t.string),
	thumbnailAspectRatio = t.optional(t.Vector2),
	titleText = t.optional(t.string),
	subTitleText = t.optional(t.string),
	infoContentComponent = t.optional(t.table),
	actionBarProps = t.optional(t.table),

	--Body props
	componentList = t.optional(validateDetailsPageComponentList),

	--Template props
	onClose = t.callback,
	bannerPlaceholderGradient = t.optional(t.table),
	bannerImageUrl = t.optional(t.string),
	startingOffsetPosition = t.optional(t.number),
	mobileMode = t.optional(t.boolean),
})

local function getHeaderPaddingHeight(props, backgroundHeight)
	local headerHeight = props.mobileMode and Constants.HeaderBarBackgroundHeight.Mobile
		or Constants.HeaderBarBackgroundHeight.Desktop
	return backgroundHeight - headerHeight
end

function DetailsPageTemplate:init()
	self.containerRef = Roact.createRef()
	self.scrollingFrameRef = Roact.createRef()
	self.scrolled = false
	self.state = {
		showStickyActionTopBar = false,
		backgroundHeight = HEADER_MAX_PADDING,
		containerSize = Vector2.new(HEADER_MAX_PADDING, HEADER_MAX_PADDING),
		backgroundComponentPosition = HEADER_MAX_PADDING / 2,
	}

	self.onContainerSizeChange = function(rbx)
		self:setState({
			containerSize = rbx.AbsoluteSize,
		})
	end

	self.onBackgroundComponentFrameSizeChange = function(rbx)
		self:setState(function(prevState, props)
			local backgroundHeight = rbx.AbsoluteSize.Y
			local headerPadding = getHeaderPaddingHeight(props, backgroundHeight)
			local backgroundComponentPosition = math.max(0, headerPadding) / 2
			return {
				backgroundHeight = backgroundHeight,
				backgroundComponentPosition = backgroundComponentPosition,
			}
		end)
	end

	self.canvasPositionChange = function(rbx)
		self.scrolled = true
		self:setState(function(prevState, props)
			local headerPadding = getHeaderPaddingHeight(props, prevState.backgroundHeight)
			local backgroundComponentPosition = math.max(0, headerPadding - rbx.CanvasPosition.Y) / 2

			if rbx.CanvasPosition.Y > headerPadding then
				if prevState.showStickyActionTopBar == false and props.mobileMode == false then
					return {
						showStickyActionTopBar = true,
					}
				else
					return nil
				end
			else
				if prevState.showStickyActionTopBar == true then
					return {
						showStickyActionTopBar = false,
						backgroundComponentPosition = backgroundComponentPosition,
					}
				else
					return {
						backgroundComponentPosition = backgroundComponentPosition,
					}
				end
			end
		end)
	end
end

function DetailsPageTemplate:render()
	local mobileMode = self.props.mobileMode
	local headerHeight = self.props.mobileMode and Constants.HeaderBarBackgroundHeight.Mobile
		or Constants.HeaderBarBackgroundHeight.Desktop

	local headerPadding = getHeaderPaddingHeight(self.props, self.state.backgroundHeight)
	local backgroundComponentPosition = self.state.backgroundComponentPosition
	local containerSize = self.state.containerSize

	return withStyle(function(style)
		local theme = style.Theme
		local font = style.Font
		local showPlaceholderBanner = self.props.bannerImageUrl == nil
		local bannerPlaceholderGradient = self.props.bannerPlaceholderGradient
			or {
				Rotation = 90,
				Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, theme.BackgroundMuted.Color),
					ColorSequenceKeypoint.new(1, theme.BackgroundUIDefault.Color),
				}),
			}

		return Roact.createElement("TextButton", {
			Text = "",
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			ClipsDescendants = true,
			[Roact.Ref] = self.containerRef,
			[Roact.Change.AbsoluteSize] = self.onContainerSizeChange,
		}, {
			OnCloseButtonFrame = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = getIconSizeUDim2(IconSize.Large),
				AnchorPoint = Vector2.new(0, 0.5),
				Position = UDim2.new(0, 22, 0, headerHeight / 2),
				ZIndex = 2,
			}, {
				OnCloseButton = Roact.createElement(IconButton, {
					size = UDim2.fromScale(1, 1),
					icon = ICON_CLOSE,
					iconColor3 = style.Theme.IconEmphasis.Color,
					iconSize = IconSize.Medium,
					onActivated = self.props.onClose,
					showBackground = self.state.showStickyActionTopBar == false,
				}),
			}),
			BackgroundDetailsFrame = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 1),
				AnchorPoint = Vector2.new(0.5, 0),
				Position = UDim2.fromScale(0.5, 0),
				[Roact.Change.AbsoluteSize] = self.onBackgroundComponentFrameSizeChange,
			}, {
				GradientPlaceholder = showPlaceholderBanner and Roact.createElement(
					"UIGradient",
					bannerPlaceholderGradient
				) or nil,
				UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
					AspectRatio = DISPLAY_ASPECT_RATIO,
				}),
				BackgroundImage = showPlaceholderBanner == false and Roact.createElement(LoadableImage, {
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0, backgroundComponentPosition),
					Size = UDim2.new(0, containerSize.x, 1, 0),
					Image = self.props.bannerImageUrl,
					ScaleType = Enum.ScaleType.Crop,
				}) or nil,
			}),
			StickyActionBarFrame = self.state.showStickyActionTopBar and Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, headerHeight),
				BackgroundColor3 = theme.BackgroundUIDefault.Color,
				BackgroundTransparency = theme.BackgroundUIDefault.Transparency,
				BorderSizePixel = 0,
			}, {
				--TODO: replace placeholer https://jira.rbx.com/browse/APPEXP-133
				Layout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Vertical,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
				}),
				Placeholder = Roact.createElement(StyledTextLabel, {
					text = "Placeholder for Sticky Action Bar",
					fontStyle = font.Body,
					colorStyle = theme.TextDefault,
					automaticSize = Enum.AutomaticSize.XY,
				}),
				--
			}) or nil,
			ContentScrollingFrame = Roact.createElement(VerticalScrollView, {
				size = UDim2.fromScale(1, 1),
				canvasSizeY = UDim.new(1, 0),
				useAutomaticCanvasSize = true,

				[Roact.Change.CanvasPosition] = self.canvasPositionChange,
				scrollingFrameRef = self.scrollingFrameRef,
			}, {
				Layout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Vertical,
				}),
				Padding = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, headerPadding),
					BackgroundTransparency = 1,
					LayoutOrder = 1,
				}),
				MainView = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, 0),
					BackgroundColor3 = theme.BackgroundDefault.Color,
					BackgroundTransparency = theme.BackgroundDefault.Transparency,
					BorderSizePixel = 0,
					LayoutOrder = 2,
					AutomaticSize = Enum.AutomaticSize.Y,
				}, {
					Layout = Roact.createElement("UIListLayout", {
						SortOrder = Enum.SortOrder.LayoutOrder,
						FillDirection = Enum.FillDirection.Vertical,
					}),
					HeaderContainer = Roact.createElement("Frame", {
						Size = UDim2.new(1, 0, 0, headerHeight),
						BackgroundTransparency = 1,
						LayoutOrder = 1,
					}, {
						DetailsPageHeader = Roact.createElement(DetailsPageHeader, {
							thumbnailImageUrl = self.props.thumbnailImageUrl,
							thumbnailAspectRatio = self.props.thumbnailAspectRatio,
							titleText = self.props.titleText,
							subTitleText = self.props.subTitleText,
							infoContentComponent = self.props.infoContentComponent,
							actionBarProps = self.props.actionBarProps,

							mobileMode = mobileMode,
						}),
					}),
					BodyContainer = Roact.createElement("Frame", {
						Size = UDim2.fromScale(1, 0),
						LayoutOrder = 2,
						BackgroundColor3 = theme.BackgroundDefault.Color,
						BackgroundTransparency = theme.BackgroundDefault.Transparency,
						BorderSizePixel = 0,
						AutomaticSize = Enum.AutomaticSize.Y,
					}, {
						BodyContainerSafeArea = Roact.createElement("Frame", {
							Size = UDim2.fromOffset(
								math.min(containerSize.x, containerSize.y * DISPLAY_ASPECT_RATIO),
								0
							),
							AnchorPoint = Vector2.new(0.5, 0),
							Position = UDim2.fromScale(0.5, 0),
							BackgroundTransparency = 1,
							AutomaticSize = Enum.AutomaticSize.Y,
						}, {
							DetailsPageBody = Roact.createElement(DetailsPageBody, {
								titleText = self.props.titleText,
								subTitleText = self.props.subTitleText,
								infoContentComponent = self.props.infoContentComponent,

								componentList = self.props.componentList,
								mobileMode = mobileMode,
							}),
						}),
					}),
				}),
			}),
			MobileActionBar = mobileMode and Roact.createElement("Frame", {
				AnchorPoint = Vector2.new(0, 1),
				Position = UDim2.fromScale(0, 1),
				Size = UDim2.new(1, 0, 0, MOBILE_ACTION_BAR_HEIGHT),
				BackgroundColor3 = theme.BackgroundUIDefault.Color,
				BackgroundTransparency = theme.BackgroundUIDefault.Transparency,
				BorderSizePixel = 0,
			}, {
				--TODO: replace placeholer https://jira.rbx.com/browse/APPEXP-132
				Layout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Vertical,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
				}),
				Placeholder = Roact.createElement(StyledTextLabel, {
					text = "Placeholder for Action Bar",
					fontStyle = font.Body,
					colorStyle = theme.TextDefault,
					automaticSize = Enum.AutomaticSize.XY,
				}),
				--
			}),
		})
	end)
end

function DetailsPageTemplate:didMount()
	if self.containerRef.current then
		self.onContainerSizeChange(self.containerRef.current)
	end
end

function DetailsPageTemplate:didUpdate()
	if self.scrolled == false and self.scrollingFrameRef.current then
		local startingOffsetPosition = math.max(
			0,
			getHeaderPaddingHeight(self.props, self.state.backgroundHeight) - self.props.startingOffsetPosition
		)
		self.scrollingFrameRef.current.CanvasPosition = Vector2.new(0, startingOffsetPosition)
	end
end

return DetailsPageTemplate
