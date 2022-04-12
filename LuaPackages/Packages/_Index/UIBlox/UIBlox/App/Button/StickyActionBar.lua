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

local ActionBar = require(Button.ActionBar)
local validateActionBarContentProps = require(Button.Validator.validateActionBarContentProps)

-- StickyActionBar layout parameters
local PADDING_LEFT = 56
local PADDING_RIGHT = 24
-- ActionBar section layout parameters
local ACTIONBAR_WIDTH = 380
local ACTIONBAR_OFFSET_TOP = {
	-- Offset fix for PrimaryContextualButton
	BUTTON_WITH_ICON = 9,
	-- Offset fix for PrimarySystemButton
	BUTTON_WITHOUT_ICON = 24,
}
-- Info section layout parameters
local INFO_SPACING_ICON_TEXT = 12
local INFO_PADDING_LEFT = 24
local INFO_PADDING_RIGHT = 24
local INFO_ICON_SIZE = getIconSize(IconSize.Large)
local INFO_ICON_ROUND_CORNER_RADIUS = 8

local StickyActionBar = Roact.PureComponent:extend("StickyActionBar")

StickyActionBar.validateProps = t.strictInterface({
	-- Props to render the ActionBar component
	actionBarProps = t.optional(validateActionBarContentProps),
	-- Info used to render the info section in the StickyActionBat. Optional.
	infoProps = t.optional(t.strictInterface({
		-- Title in info
		title = t.string,
		-- Image uri for icon in info section
		icon = t.optional(validateImage),
		-- Indicate whether info section should be rendered at the start of StickyActionBar or not.
		--
		-- By default, the info will always stay at the right side of the StickyActionBar and get aligned to Center
		-- of the infoSection horizontally. With `enableInfoAtStart` specified as true, the info section will be rendered
		-- at the left side of the StickyActionBar and get aligned to Left of the infoSection instead.
		enableInfoAtStart = t.optional(t.boolean),
		-- The width of the info section.
		--
		-- By default, the info section will always occupy the full space of the right side of StickyActionBar.
		infoSectionWidth = t.optional(t.integer),
	})),
	-- Width of the component. The component will fit the parent container size by default if not specified.
	width = t.optional(t.integer),
	-- LayoutOrder of the component in parent container
	layoutOrder = t.optional(t.integer)
})

StickyActionBar.defaultProps = {
	actionBarProps = nil,
	infoProps = nil,
	layoutOrder = 1,
	width = nil
}

function StickyActionBar:init()
	self.state = {
		containerWidth = nil
	}
	self.onContainerSizeChange = function(rbx)
		self:setState(function(prevState, props)
			return {
				containerWidth = rbx.AbsoluteSize.X,
			}
		end)
	end

	local getInfoSectionWidth = function(containerWidth, hasActionBar, infoProps)
		if infoProps and infoProps.infoSectionWidth then
			return infoProps.infoSectionWidth
		else
			local paddingLeftRight = PADDING_LEFT + PADDING_RIGHT
			return hasActionBar and containerWidth - paddingLeftRight - ACTIONBAR_WIDTH or containerWidth - paddingLeftRight
		end
	end

	local getActionBarSectionWidth = function()
		return ACTIONBAR_WIDTH
	end

	local getActionBarSectionMarginOverride = function(actionBarProps)
		if actionBarProps.button and actionBarProps.button.props.icon then
			return {
				left = 0,
				right = 0,
				top = ACTIONBAR_OFFSET_TOP.BUTTON_WITH_ICON,
				bottom = 0,
			}
		else
			return {
				left = 0,
				right = 0,
				top = ACTIONBAR_OFFSET_TOP.BUTTON_WITHOUT_ICON,
				bottom = 0,
			}
		end
	end

	self.getLayoutConfig = function()
		if self.props.infoProps and self.props.infoProps.enableInfoAtStart then
			return {
				layoutOrder = {
					infoSection = 1,
					actionBarSection = 2,
				},
				infoHorizontalAlignment = Enum.HorizontalAlignment.Left,
				getInfoSectionWidth = getInfoSectionWidth,
				getActionBarSectionWidth = getActionBarSectionWidth,
				getActionBarSectionMarginOverride = getActionBarSectionMarginOverride
			}
		else
			return {
				layoutOrder = {
					infoSection = 2,
					actionBarSection = 1,
				},
				infoHorizontalAlignment = Enum.HorizontalAlignment.Center,
				getInfoSectionWidth = getInfoSectionWidth,
				getActionBarSectionWidth = getActionBarSectionWidth,
				getActionBarSectionMarginOverride = getActionBarSectionMarginOverride
			}
		end
	end
end

function StickyActionBar:render()
	local hasActionBar = self.props.actionBarProps ~= nil
	local hasInfo = self.props.infoProps ~= nil
	local containerWidth = self.props.width or self.state.containerWidth
	assert(hasActionBar or hasInfo, "Either actionbar or info should be present!")
	local layoutConfig = self.getLayoutConfig()
	return withStyle(function(style)
		return self:renderHorizontalLayout({
			layoutOrder = self.props.layoutOrder,
			size = self.props.width and UDim2.new(0, self.props.width, 1, 0) or UDim2.fromScale(1, 1),
			onContainerSizeChange = self.onContainerSizeChange,
			horizontalAlignment = Enum.HorizontalAlignment.Left,
			padding = {
				left = PADDING_LEFT,
				right = PADDING_RIGHT
			}
		}, {
			ActionBarSection = hasActionBar and self:renderHorizontalLayout({
				layoutOrder = layoutConfig.layoutOrder.actionBarSection,
				width = layoutConfig.getActionBarSectionWidth(),
				horizontalAlignment = Enum.HorizontalAlignment.Left,
			}, {
				ActionBar = Roact.createElement(ActionBar, {
					button = self.props.actionBarProps.button,
					icons = self.props.actionBarProps.icons,
					marginOverride = layoutConfig.getActionBarSectionMarginOverride(self.props.actionBarProps),
					enableButtonAtStart = true,
				}),
			}) or nil,
			InfoSection = (hasInfo and containerWidth ~= nil) and self:renderHorizontalLayout({
				layoutOrder = layoutConfig.layoutOrder.infoSection,
				width = layoutConfig.getInfoSectionWidth(containerWidth, hasActionBar, self.props.infoProps),
				horizontalAlignment = layoutConfig.infoHorizontalAlignment,
				padding = {
					left = INFO_PADDING_LEFT,
					right = INFO_PADDING_RIGHT
				},
				internalSpacing = INFO_SPACING_ICON_TEXT,
			}, {
				Icon = self.props.infoProps.icon and Roact.createElement(ImageSetLabel, {
					Size = UDim2.new(0, INFO_ICON_SIZE, 0, INFO_ICON_SIZE),
					LayoutOrder = 1,
					Position = UDim2.new(0, 0, 0, 0),
					Image = self.props.infoProps.icon,
					ImageColor3 = style.Theme.IconEmphasis.Color,
					BackgroundTransparency = 1,
					ScaleType = Enum.ScaleType.Crop,
				}, {
					RoundCorner = Roact.createElement("UICorner", {
						CornerRadius = UDim.new(0, INFO_ICON_ROUND_CORNER_RADIUS),
					}),
				}) or nil,
				Title = Roact.createElement(GenericTextLabel, {
					LayoutOrder = 2,
					Size = UDim2.fromScale(0, 0),
					AutomaticSize = Enum.AutomaticSize.XY,
					Position = UDim2.new(0, INFO_ICON_SIZE + INFO_SPACING_ICON_TEXT, 0, 0),
					Text = self.props.infoProps.title,
					fluidSizing = true,
					TextWrapped = false,
					TextXAlignment = Enum.TextXAlignment.Left,
					colorStyle = style.Theme.TextEmphasis,
					fontStyle = style.Font.Header2,
					TextTruncate = Enum.TextTruncate.AtEnd,
					BackgroundTransparency = 1,
				}),
			})
		})
	end)
end

function StickyActionBar:renderHorizontalLayout(extraProps, children)
	table.insert(children, Roact.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Horizontal,
		HorizontalAlignment = extraProps.horizontalAlignment,
		VerticalAlignment = Enum.VerticalAlignment.Center,
		SortOrder = Enum.SortOrder.LayoutOrder,
		Padding = UDim.new(0, extraProps.internalSpacing or 0),
	}))
	if extraProps.padding then
		table.insert(children, Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, extraProps.padding.left or 0),
			PaddingRight = UDim.new(0, extraProps.padding.right or 0),
			PaddingTop = UDim.new(0, extraProps.padding.top or 0),
			PaddingBottom = UDim.new(0, extraProps.padding.bottom or 0),
		}))
	end
	return Roact.createElement("Frame", {
		Size = extraProps.size and extraProps.size or UDim2.new(0, extraProps.width, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		LayoutOrder = extraProps.layoutOrder,
		[Roact.Change.AbsoluteSize] = extraProps.onContainerSizeChange,
		[Roact.Children] = children
	})
end

return StickyActionBar
