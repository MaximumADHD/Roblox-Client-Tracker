--!nonstrict
local DetailsPage = script.Parent
local Template = DetailsPage.Parent
local App = Template.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local UIBloxConfig = require(UIBlox.UIBloxConfig)

local withStyle = require(UIBlox.Core.Style.withStyle)
local LoadableImage = require(App.Loading.LoadableImage)

local Images = require(App.ImageSet.Images)
local IconButton = require(App.Button.IconButton)
local IconSize = require(App.ImageSet.Enum.IconSize)
local getIconSize = require(App.ImageSet.getIconSize)
local getIconSizeUDim2 = require(App.ImageSet.getIconSizeUDim2)
local VerticalScrollView = require(App.Container.VerticalScrollView)
local ActionBar = require(App.Button.ActionBar)
local StickyActionBar = require(App.Button.StickyActionBar)
local DeviceType = require(App.Style.Constants).DeviceType

local getPlatformConfig = require(DetailsPage.getPlatformConfig)
local DetailsPageHeader = require(DetailsPage.DetailsPageHeader)
local DetailsPageBody = require(DetailsPage.DetailsPageBody)
local validateDetailsPageComponentList = require(DetailsPage.validateDetailsPageComponentList)

local DetailsPageTemplate = Roact.PureComponent:extend("DetailsPageTemplate")

local ICON_CLOSE = "icons/navigation/close"

local ICON_BACK = "icons/navigation/pushBack"

local HEADER_MAX_PADDING = 500

local DISPLAY_ASPECT_RATIO = 16 / 9

local CLOSE_BUTTON_OFFSET = 22

local MOBILE_ACTION_BAR_GRADIENT = 24

local MOBILE_ACTION_BAR_HEIGHT = 72

DetailsPageTemplate.validateProps = t.strictInterface({
	-- URL for the thumbnail
	thumbnailImageUrl = t.optional(t.string),
	-- The height of the thumbnail image
	thumbnailHeight = t.optional(t.number),
	-- Aspect ratio of the thumbnail
	thumbnailAspectRatio = t.optional(t.Vector2),
	-- Title text of the details page. It can be turned off if nil is passed through.
	titleText = t.optional(t.string),
	-- Sub title text of the details page. It can be turned off if nil is passed through.
	subTitleText = t.optional(t.string),
	-- A custom Roact component to be rendered in the header
	renderInfoContent = t.optional(t.callback),

	-- Props for the embedded action bar component.
	-- See [ActionBar](../../Button/ActionBar.md) for more information.
	actionBarProps = t.optional(ActionBar.validateProps),

	-- The table of props for the content of the details page
	componentList = t.optional(validateDetailsPageComponentList),
	-- The dual panel breakpoint
	dualPanelBreakpoint = t.optional(t.number),
	-- The side margin of the body components
	sideMargin = t.optional(t.number),
	bodyClipsDescendants = t.optional(t.boolean),

	-- Starting scrolling position of the details page
	startingOffsetPosition = t.optional(t.number),
	-- The height of the header bar
	headerBarBackgroundHeight = t.optional(t.number),
	onClose = t.callback,
	-- Custom gradient props for the background gradient banner
	bannerPlaceholderGradient = t.optional(t.table),
	-- URL of the background banner image
	bannerImageUrl = t.optional(t.string),
	-- Enable fullscreen mode
	isFullscreen = t.optional(t.boolean),
	-- A custom Roact component to be rendered when in fullscreen mode
	renderFullscreenContent = t.optional(t.callback),
	-- Device type
	deviceType = t.optional(t.string),

	-- deprecated Prop
	isMobile = t.optional(t.boolean),

	-- design tokens
	tokens = t.optional(t.table),
})

DetailsPageTemplate.defaultProps = {
	deviceType = DeviceType.Desktop,
	isFullscreen = false,
}

local function getHeaderPaddingHeight(props, backgroundHeight)
	local deviceConfig = getPlatformConfig(props.deviceType)
	local headerBarBackgroundHeight = if props.headerBarBackgroundHeight
		then props.headerBarBackgroundHeight
		else deviceConfig.headerBarBackgroundHeight
	return backgroundHeight - headerBarBackgroundHeight
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
		-- Track changes to the size of the background frame
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
		-- Track the position and scrolling of the page
		self.scrolled = true
		self:setState(function(prevState, props)
			local headerPadding = getHeaderPaddingHeight(props, prevState.backgroundHeight)

			--Position of the background to create the parallax effect
			local backgroundComponentPosition = math.max(0, headerPadding - rbx.CanvasPosition.Y) / 2

			if rbx.CanvasPosition.Y > headerPadding then
				-- Show the sticky action bar when the user scrolls past the header
				if prevState.showStickyActionTopBar == false and self.props.deviceType ~= DeviceType.Phone then
					return {
						showStickyActionTopBar = true,
					}
				else
					return nil
				end
			else
				-- Hide the sticky action when the header is in view
				if prevState.showStickyActionTopBar == true then
					return {
						showStickyActionTopBar = false,
						backgroundComponentPosition = backgroundComponentPosition,
					}
				else
					-- Update the position to create the parallax effect when the background is in view
					return {
						backgroundComponentPosition = backgroundComponentPosition,
					}
				end
			end
		end)
	end
end

function DetailsPageTemplate:render()
	local isPhone = self.props.deviceType == DeviceType.Phone
	local deviceConfig = getPlatformConfig(self.props.deviceType)

	local thumbnailHeight = if self.props.thumbnailHeight
		then self.props.thumbnailHeight
		else deviceConfig.thumbnailHeight
	local headerBarBackgroundHeight = if self.props.headerBarBackgroundHeight
		then self.props.headerBarBackgroundHeight
		else deviceConfig.headerBarBackgroundHeight
	local sideMargin = if self.props.sideMargin then self.props.sideMargin else deviceConfig.sideMargin
	local dualPanelBreakpoint = if self.props.dualPanelBreakpoint
		then self.props.dualPanelBreakpoint
		else deviceConfig.dualPanelBreakpoint

	local headerPadding = getHeaderPaddingHeight(self.props, self.state.backgroundHeight)
	local backgroundComponentPosition = self.state.backgroundComponentPosition
	local containerSize = self.state.containerSize

	local isFullscreen = self.props.isFullscreen
	local renderFullscreenContent = self.props.renderFullscreenContent
	local showFullscreen = (not isPhone and isFullscreen and renderFullscreenContent) and true or false

	return withStyle(function(style)
		local theme = style.Theme
		local showPlaceholderBanner = self.props.bannerImageUrl == nil
		local bannerPlaceholderGradient = self.props.bannerPlaceholderGradient
			or {
				Rotation = 90,
				Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, theme.BackgroundMuted.Color),
					ColorSequenceKeypoint.new(1, theme.BackgroundUIDefault.Color),
				}),
			}

		local closeButtonPosY = isPhone and ((getIconSize(IconSize.Large) + CLOSE_BUTTON_OFFSET) / 2)
			or (headerBarBackgroundHeight / 2)

		local showMobileActionBar = isPhone and self.props.actionBarProps

		return Roact.createElement("TextButton", {
			Text = "",
			AutoButtonColor = false,
			Size = UDim2.fromScale(1, 1),
			BackgroundColor3 = theme.BackgroundDefault.Color,
			BackgroundTransparency = theme.BackgroundDefault.Transparency,
			BorderSizePixel = 0,
			ClipsDescendants = true,
			[Roact.Ref] = self.containerRef,
			[Roact.Change.AbsoluteSize] = self.onContainerSizeChange,
		}, {
			CloseButtonFrame = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = getIconSizeUDim2(IconSize.Large),
				AnchorPoint = Vector2.new(0, 0.5),
				Position = UDim2.new(0, CLOSE_BUTTON_OFFSET, 0, closeButtonPosY),
				ZIndex = 2,
			}, {
				CloseButton = Roact.createElement(IconButton, {
					size = UDim2.fromScale(1, 1),
					icon = showFullscreen and Images[ICON_BACK] or Images[ICON_CLOSE],
					iconColor3 = if UIBloxConfig.useNewThemeColorPalettes then nil else style.Theme.UIEmphasis.Color,
					iconSize = IconSize.Medium,
					onActivated = self.props.onClose,
					showBackground = self.state.showStickyActionTopBar == false,
					backgroundColor = if UIBloxConfig.useNewThemeColorPalettes
						then nil
						else style.Theme.BackgroundUIDefault,
				}),
			}),
			BackgroundDetailsFrame = Roact.createElement("Frame", {
				BackgroundColor3 = theme.BackgroundMuted.Color,
				BackgroundTransparency = theme.BackgroundMuted.Transparency,
				Size = UDim2.fromScale(1, 1),
				AnchorPoint = Vector2.new(0.5, 0),
				Position = UDim2.fromScale(0.5, 0),
				[Roact.Change.AbsoluteSize] = self.onBackgroundComponentFrameSizeChange,
			}, {
				GradientPlaceholder = showPlaceholderBanner
						and Roact.createElement("UIGradient", bannerPlaceholderGradient)
					or nil,
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
			StickyActionBarFrame = (self.state.showStickyActionTopBar or showFullscreen)
					and Roact.createElement("TextButton", {
						Text = "",
						AutoButtonColor = false,
						Size = UDim2.new(1, 0, 0, headerBarBackgroundHeight),
						BackgroundColor3 = theme.BackgroundUIDefault.Color,
						BackgroundTransparency = theme.BackgroundUIDefault.Transparency,
						BorderSizePixel = 0,
					}, {
						StickyActionBar = Roact.createElement(StickyActionBar, {
							actionBarProps = self.props.actionBarProps,
							infoProps = {
								icon = self.props.thumbnailImageUrl,
								title = self.props.titleText,
							},
						}),
					})
				or nil,
			ContentScrollingFrame = Roact.createElement(VerticalScrollView, {
				size = UDim2.fromScale(1, 1),
				canvasSizeY = UDim.new(1, 0),
				useAutomaticCanvasSize = true,
				scrollingEnabled = not showFullscreen,

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
					BackgroundTransparency = 1,
					LayoutOrder = 2,
					AutomaticSize = Enum.AutomaticSize.Y,
				}, {
					Layout = Roact.createElement("UIListLayout", {
						SortOrder = Enum.SortOrder.LayoutOrder,
						FillDirection = Enum.FillDirection.Vertical,
					}),
					HeaderContainer = Roact.createElement("Frame", {
						Size = UDim2.new(1, 0, 0, headerBarBackgroundHeight),
						BackgroundTransparency = 1,
						LayoutOrder = 1,
					}, {
						DetailsPageHeader = Roact.createElement(DetailsPageHeader, {
							thumbnailImageUrl = self.props.thumbnailImageUrl,
							thumbnailAspectRatio = self.props.thumbnailAspectRatio,
							thumbnailHeight = thumbnailHeight,
							titleText = self.props.titleText,
							subTitleText = self.props.subTitleText,
							renderInfoContent = self.props.renderInfoContent,
							actionBarProps = self.props.actionBarProps,
							headerBarBackgroundHeight = headerBarBackgroundHeight,
							sideMargin = sideMargin,

							deviceType = self.props.deviceType,
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
								renderInfoContent = self.props.renderInfoContent,
								bodyClipsDescendants = self.props.bodyClipsDescendants,

								componentList = self.props.componentList,
								dualPanelBreakpoint = dualPanelBreakpoint,
								sideMargin = sideMargin,
								deviceType = self.props.deviceType,
							}),
						}),
					}),
				}),
				MobileActionViewPadding = showMobileActionBar and Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, MOBILE_ACTION_BAR_HEIGHT),
					BackgroundTransparency = 1,
					LayoutOrder = 3,
				}),
			}),
			FullscreenFrame = showFullscreen and Roact.createElement("TextButton", {
				Size = UDim2.new(1, 0, 1, -headerBarBackgroundHeight),
				Position = UDim2.fromOffset(0, headerBarBackgroundHeight),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				AutoButtonColor = false,
				ClipsDescendants = true,
				ZIndex = 2,
			}, {
				FullscreenContent = renderFullscreenContent(),
			}) or nil,
			MobileActionBarFrame = showMobileActionBar and Roact.createElement("TextButton", {
				Text = "",
				AutoButtonColor = false,
				AnchorPoint = Vector2.new(0, 1),
				Position = UDim2.fromScale(0, 1),
				Size = UDim2.new(1, 0, 0, MOBILE_ACTION_BAR_HEIGHT),
				BackgroundColor3 = theme.BackgroundDefault.Color,
				BackgroundTransparency = theme.BackgroundDefault.Transparency,
				BorderSizePixel = 0,
				ZIndex = 3,
			}, {
				GradientBar = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, MOBILE_ACTION_BAR_GRADIENT),
					BackgroundColor3 = theme.BackgroundDefault.Color,
					AnchorPoint = Vector2.new(0, 1),
					BorderSizePixel = 0,
					LayoutOrder = 1,
				}, {
					Gradient = Roact.createElement("UIGradient", {
						Rotation = 270,
						Transparency = NumberSequence.new({
							NumberSequenceKeypoint.new(0, 0.25),
							NumberSequenceKeypoint.new(1, 0.9999),
						}),
					}),
				}),
				ActionBar = Roact.createElement(ActionBar, {
					button = self.props.actionBarProps.button,
					icons = self.props.actionBarProps.icons,
				}),
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
	local deviceConfig = getPlatformConfig(self.props.deviceType)
	-- When the user haven't scroll the details page yet, set the inital starting position of the page
	if self.scrolled == false and self.scrollingFrameRef.current then
		local startingOffsetProp = if self.props.startingOffsetPosition
			then self.props.startingOffsetPosition
			else deviceConfig.startingOffsetPosition

		local startingOffsetPosition =
			math.max(0, getHeaderPaddingHeight(self.props, self.state.backgroundHeight) - startingOffsetProp)
		self.scrollingFrameRef.current.CanvasPosition = Vector2.new(0, startingOffsetPosition)
	end
end

return DetailsPageTemplate
