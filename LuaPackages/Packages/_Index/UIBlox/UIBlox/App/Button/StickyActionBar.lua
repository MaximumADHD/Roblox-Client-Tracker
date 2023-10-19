--!nonstrict
local Button = script.Parent
local App = Button.Parent
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent

local t = require(Packages.t)
local Roact = require(Packages.Roact)
local ImageSetLabel = require(Core.ImageSet.ImageSetComponent).Label
local GenericTextLabel = require(Core.Text.GenericTextLabel.GenericTextLabel)
local validateImage = require(Core.ImageSet.Validator.validateImage)
local IconSize = require(App.ImageSet.Enum.IconSize)
local getIconSize = require(App.ImageSet.getIconSize)
local withStyle = require(Core.Style.withStyle)
local GetTextSize = require(Core.Text.GetTextSize)

local ActionBar = require(Button.ActionBar)

-- StickyActionBar layout parameters
local PADDING_LEFT = 56
local PADDING_RIGHT = 24
local WIDTH_BREAKPOINT = 1280
-- ActionBar section layout parameters
local ACTIONBAR_WIDTH = 380
local ACTIONBAR_HEIGHT = 48
-- Info section layout parameters
local INFO_SPACING_ICON_TEXT = 12
local INFO_PADDING_LEFT_DEFAULT = 24
local INFO_PADDING_LEFT_LARGE = 80
local INFO_PADDING_RIGHT = 24
local INFO_ICON_SIZE = getIconSize(IconSize.Large)
local INFO_ICON_ROUND_CORNER_RADIUS = 8
local TEXT_MAX_BOUND = 10000

local StickyActionBar = Roact.PureComponent:extend("StickyActionBar")

StickyActionBar.validateProps = t.strictInterface({
	-- Props to render the ActionBar component.
	-- See [[ActionBar]] for more information.
	actionBarProps = t.optional(ActionBar.validateProps),
	-- Info used to render the info section in the `StickyActionBar`.
	infoProps = t.optional(t.strictInterface({
		-- Title in info
		title = t.string,
		-- Image uri for icon in info section
		icon = t.optional(validateImage),
		-- Indicate whether info section should be rendered at the start of `StickyActionBar` or not.
		-- By default, the info will always stay at the right side of the `StickyActionBar` and get aligned to Center
		-- of the whole component horizontally. With `enableInfoAtStart` specified as true, the info section will be rendered
		-- at the left side of the `StickyActionBar` and get aligned to Left of the infoSection instead.
		enableInfoAtStart = t.optional(t.boolean),
		-- The width of the info section.
		-- By default, the info section will always occupy the full space of the right side of `StickyActionBar`.
		infoSectionWidth = t.optional(t.integer),
	})),
	-- Width of the `StickyActionBar` component in parent container
	width = t.optional(t.integer),
	-- LayoutOrder of the `StickyActionBar` component in parent container
	layoutOrder = t.optional(t.integer),
})

StickyActionBar.defaultProps = {
	actionBarProps = nil,
	infoProps = nil,
	layoutOrder = 1,
	width = nil,
}

function StickyActionBar:init()
	self.state = {
		containerWidth = nil,
	}
	self.onContainerSizeChange = function(rbx)
		self:setState(function(prevState, props)
			return {
				containerWidth = rbx.AbsoluteSize.X,
			}
		end)
	end

	local getActionBarSectionSize = function()
		return UDim2.fromOffset(ACTIONBAR_WIDTH, ACTIONBAR_HEIGHT)
	end

	local getInfoSectionWidth = function(containerWidth, hasActionBar, infoProps)
		if infoProps and infoProps.infoSectionWidth then
			return infoProps.infoSectionWidth
		else
			local actionBarWidth = getActionBarSectionSize().X.Offset
			local paddingLeftRight = PADDING_LEFT + PADDING_RIGHT
			return hasActionBar and containerWidth - paddingLeftRight - actionBarWidth
				or containerWidth - paddingLeftRight
		end
	end

	local getInfoSectionPadding = function(containerWidth, infoContentWidth, hasActionBar, infoAtStart)
		if infoAtStart or not hasActionBar then
			return {
				horizontalAlignment = Enum.HorizontalAlignment.Left,
				left = INFO_PADDING_LEFT_DEFAULT,
				right = INFO_PADDING_RIGHT,
			}
		else
			local infoOffsetToContainerLeft = (containerWidth - infoContentWidth) / 2
			local minimumPadding
			if containerWidth < WIDTH_BREAKPOINT then
				minimumPadding = INFO_PADDING_LEFT_DEFAULT
			else
				minimumPadding = INFO_PADDING_LEFT_LARGE
			end
			local actionBarWidth = getActionBarSectionSize().X.Offset
			infoOffsetToContainerLeft = math.max(actionBarWidth + minimumPadding, infoOffsetToContainerLeft)
			return {
				left = infoOffsetToContainerLeft - actionBarWidth,
				right = INFO_PADDING_RIGHT,
			}
		end
	end

	local getTextWidth = function(text, fontStyle, style)
		local baseSize = style.Font.BaseSize
		local fontSize = fontStyle.RelativeSize * baseSize
		local bounds = Vector2.new(TEXT_MAX_BOUND, TEXT_MAX_BOUND)
		return GetTextSize(text, fontSize, fontStyle.Font, bounds).X
	end

	self.getLayoutConfig = function(
		containerWidth,
		hasActionBar,
		infoProps,
		infoIconSize,
		infoText,
		infoTextStyle,
		style
	)
		local enableInfoAtStart = (self.props.infoProps and self.props.infoProps.enableInfoAtStart) and true or false
		local infoContentWidth = getTextWidth(infoText, infoTextStyle, style)
			+ infoIconSize
			+ (infoIconSize > 0 and INFO_SPACING_ICON_TEXT or 0)
		local layoutOrder = enableInfoAtStart and {
			infoSection = 1,
			actionBarSection = 2,
		} or {
			infoSection = 2,
			actionBarSection = 1,
		}
		return {
			layoutOrder = layoutOrder,
			infoHorizontalAlignment = Enum.HorizontalAlignment.Left,
			infoSectionWidth = getInfoSectionWidth(containerWidth, hasActionBar, infoProps),
			infoSectionPadding = getInfoSectionPadding(
				containerWidth,
				infoContentWidth,
				hasActionBar,
				enableInfoAtStart
			),
			actionBarSectionSize = getActionBarSectionSize(),
			actionBarSectionMarginOverride = {
				left = 0,
				right = 0,
				top = 0,
				bottom = 0,
			},
		}
	end
end

function StickyActionBar:render()
	local hasActionBar = self.props.actionBarProps ~= nil
	local hasInfo = self.props.infoProps ~= nil
	local containerWidth = self.props.width or self.state.containerWidth
	assert(hasActionBar or hasInfo, "Either actionbar or info should be present!")
	return withStyle(function(style)
		local infoIconSize = (hasInfo and self.props.infoProps.icon and INFO_ICON_SIZE) or 0
		local infoText = hasInfo and self.props.infoProps.title or ""
		local infoTextStyle = style.Font.Header2
		local layoutConfig = self.getLayoutConfig(
			containerWidth or 0,
			hasActionBar,
			self.props.infoProps,
			infoIconSize,
			infoText,
			infoTextStyle,
			style
		)
		return self:renderHorizontalLayout({
			layoutOrder = self.props.layoutOrder,
			size = self.props.width and UDim2.new(0, self.props.width, 1, 0) or UDim2.fromScale(1, 1),
			onContainerSizeChange = self.onContainerSizeChange,
			horizontalAlignment = Enum.HorizontalAlignment.Left,
			padding = {
				left = PADDING_LEFT,
				right = PADDING_RIGHT,
			},
		}, {
			ActionBarSection = hasActionBar and self:renderHorizontalLayout({
				layoutOrder = layoutConfig.layoutOrder.actionBarSection,
				size = layoutConfig.actionBarSectionSize,
				horizontalAlignment = Enum.HorizontalAlignment.Left,
			}, {
				ActionBar = Roact.createElement(ActionBar, {
					button = self.props.actionBarProps.button,
					icons = self.props.actionBarProps.icons,
					marginOverride = layoutConfig.actionBarSectionMarginOverride,
					enableButtonAtStart = true,
				}),
			}) or nil,
			InfoSection = (hasInfo and containerWidth ~= nil) and self:renderHorizontalLayout({
				layoutOrder = layoutConfig.layoutOrder.infoSection,
				width = layoutConfig.infoSectionWidth,
				horizontalAlignment = layoutConfig.infoHorizontalAlignment,
				padding = layoutConfig.infoSectionPadding,
				internalSpacing = INFO_SPACING_ICON_TEXT,
			}, {
				Icon = self.props.infoProps.icon and Roact.createElement(ImageSetLabel, {
					Size = UDim2.new(0, infoIconSize, 0, infoIconSize),
					LayoutOrder = 1,
					Position = UDim2.new(0, 0, 0, 0),
					Image = self.props.infoProps.icon,
					BackgroundTransparency = 1,
					ScaleType = Enum.ScaleType.Crop,
				}, {
					RoundCorner = Roact.createElement("UICorner", {
						CornerRadius = UDim.new(0, INFO_ICON_ROUND_CORNER_RADIUS),
					}),
				}) or nil,
				Title = Roact.createElement(GenericTextLabel, {
					LayoutOrder = 2,
					Size = UDim2.new(0, 0, 0, ACTIONBAR_HEIGHT),
					AutomaticSize = Enum.AutomaticSize.X,
					Position = UDim2.new(0, INFO_ICON_SIZE + INFO_SPACING_ICON_TEXT, 0, 0),
					Text = infoText,
					fluidSizing = false,
					TextWrapped = true,
					TextXAlignment = Enum.TextXAlignment.Left,
					colorStyle = style.Theme.TextEmphasis,
					fontStyle = infoTextStyle,
					TextTruncate = Enum.TextTruncate.AtEnd,
					BackgroundTransparency = 1,
				}),
			}),
		})
	end)
end

function StickyActionBar:renderHorizontalLayout(extraProps, children)
	return Roact.createElement("Frame", {
		Size = extraProps.size and extraProps.size or UDim2.new(0, extraProps.width, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		LayoutOrder = extraProps.layoutOrder,
		[Roact.Change.AbsoluteSize] = extraProps.onContainerSizeChange,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = extraProps.horizontalAlignment,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, extraProps.internalSpacing or 0),
		}),
		Padding = if extraProps.padding
			then Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, extraProps.padding.left or 0),
				PaddingRight = UDim.new(0, extraProps.padding.right or 0),
				PaddingTop = UDim.new(0, extraProps.padding.top or 0),
				PaddingBottom = UDim.new(0, extraProps.padding.bottom or 0),
			})
			else nil,
		Elements = Roact.createFragment(children),
	})
end

return StickyActionBar
