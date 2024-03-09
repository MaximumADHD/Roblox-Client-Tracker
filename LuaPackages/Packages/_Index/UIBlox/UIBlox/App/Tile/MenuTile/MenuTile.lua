--!nonstrict
local MenuTileRoot = script.Parent
local Tile = MenuTileRoot.Parent
local App = Tile.Parent
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent

local Otter = require(Packages.Otter)
local Roact = require(Packages.Roact)
local t = require(Packages.t)

local Badge = require(App.Indicator.Badge)
local BadgeStates = require(App.Indicator.Enum.BadgeStates)
local IconSize = require(App.ImageSet.Enum.IconSize)
local getIconSize = require(App.ImageSet.getIconSize)
local withSelectionCursorProvider = require(App.SelectionImage.withSelectionCursorProvider)
local CursorKind = require(App.SelectionImage.CursorKind)

local ControlState = require(Core.Control.Enum.ControlState)
local Interactable = require(Core.Control.Interactable)
local ImageSetComponent = require(Core.ImageSet.ImageSetComponent)
local validateImage = require(Core.ImageSet.Validator.validateImage)
local validateColorInfo = require(UIBlox.Core.Style.Validator.validateColorInfo)
local enumerateValidator = require(UIBlox.Utility.enumerateValidator)
local validateFontInfo = require(UIBlox.Core.Style.Validator.validateFontInfo)
local validateTypographyInfo = require(UIBlox.Core.Style.Validator.validateTypographyInfo)

local withStyle = require(UIBlox.Core.Style.withStyle)
local divideTransparency = require(UIBlox.Utility.divideTransparency)
local withCursor = require(App.SelectionCursor.withCursor)
local CursorType = require(App.SelectionCursor.CursorType)
local UIBloxConfig = require(UIBlox.UIBloxConfig)
local GetTextSize = require(UIBlox.Core.Text.GetTextSize)

local FULLY_TRANSPARENT = 1
local LIST_PADDING = UDim.new(0, 12)
local PADDING_PADDING = UDim.new(0, 8)
local TITLE_MAX_NUMBER_OF_LINES = 2

-- ~0.33 duration
local SPRING_PARAMETERS = {
	frequency = 6,
	dampingRatio = 1,
}

local Z_INDEX = {
	BACKGROUND = 1,
	HOVER_MASK = 2,
	ICON_AND_TITLE_CONTAINER = 3,
	BADGE_CONTAINER = 4,
	ROUNDED_CORNERS_MASK = 5,
}

local LAYOUT_ORDER = {
	ICON = 1,
	TITLE = 2,
}

local MenuTile = Roact.Component:extend("MenuTile")

MenuTile.defaultProps = {
	size = UDim2.fromScale(1, 1),
	styleProps = {},
}

MenuTile.validateProps = t.strictInterface({
	-- Size of the menu tile.
	size = t.optional(t.UDim2),
	-- Position of the menu tile.
	position = t.optional(t.UDim2),
	-- The layout order of the menu tile.
	layoutOrder = t.optional(t.number),

	-- Value displayed in the badge.
	badgeValue = t.optional(t.union(t.string, t.number, BadgeStates.isEnumValue)),
	-- Image that will be shown in the middle of the menu tile.
	icon = t.optional(validateImage),
	-- Text displayed below the image.
	title = t.string,
	-- Function to call when user activates the menu tile.
	onActivated = t.callback,
	-- Props to customize style of icon and title
	styleProps = t.optional(t.strictInterface({
		-- Color style of icon
		iconStyle = t.optional(validateColorInfo),
		-- Size of icon
		iconSize = t.optional(enumerateValidator(IconSize)),
		-- Color style of title
		titleStyle = t.optional(validateColorInfo),
		-- Font of title
		titleFont = t.optional(t.union(validateFontInfo, validateTypographyInfo)),
	})),
})

local function withProviders(renderCallback)
	return withStyle(function(stylePalette)
		return withSelectionCursorProvider(function(getSelectionCursor)
			if UIBloxConfig.migrateToNewSelectionCursor then
				return withCursor(function(context)
					local cursor = context.getCursorByType(CursorType.RoundedRect)
					return renderCallback(stylePalette, getSelectionCursor, cursor)
				end)
			else
				return renderCallback(stylePalette, getSelectionCursor)
			end
		end)
	end)
end

local function getStyleProps(providedStyleProps, stylePalette)
	local theme = stylePalette.Theme
	local font = stylePalette.Font

	local iconSize = if providedStyleProps.iconSize
		then getIconSize(providedStyleProps.iconSize, stylePalette)
		else getIconSize(IconSize.Large)

	return {
		iconStyle = providedStyleProps.iconStyle or theme.IconDefault,
		iconSize = iconSize,
		titleStyle = providedStyleProps.titleStyle or theme.TextDefault,
		titleFont = providedStyleProps.titleFont or font.SubHeader1,
	}
end

function MenuTile:init()
	self.hoverTransparency, self.updateHoverTransparency = Roact.createBinding(FULLY_TRANSPARENT)
	self.hoverTransparencyMotor = Otter.createSingleMotor(FULLY_TRANSPARENT)
	self.hoverTransparencyMotor:onStep(self.updateHoverTransparency)
	self.hoverTransparencyMotor:onComplete(function(value)
		if value == FULLY_TRANSPARENT then
			self:setState({
				showHoverMask = false,
			})
		end
	end)

	self:setState({
		backgroundTransparency = 0,
		iconTransparency = 0,
		titleTransparency = 0,
		showHoverMask = false,
	})
end

function MenuTile:render()
	local backgroundTransparency = self.state.backgroundTransparency
	local iconTransparency = self.state.iconTransparency
	local titleTransparency = self.state.titleTransparency

	local badgeValue = self.props.badgeValue
	local icon = self.props.icon
	local layoutOrder = self.props.layoutOrder
	local onActivated = self.props.onActivated
	local position = self.props.position
	local size = self.props.size
	local title = self.props.title

	return withProviders(function(stylePalette, getSelectionCursor, cursor)
		local theme = stylePalette.Theme

		local styleProps = getStyleProps(self.props.styleProps, stylePalette)

		local backgroundStyle = theme.BackgroundUIDefault
		local hoverStyle = theme.BackgroundOnHover

		local iconStyle = styleProps.iconStyle
		local iconSize = styleProps.iconSize

		local titleStyle = styleProps.titleStyle
		local titleFont = styleProps.titleFont
		local titleFontSize = if titleFont.RelativeSize
			then titleFont.RelativeSize * stylePalette.Font.BaseSize
			else titleFont.FontSize
		local titleTextOneLineSizeY =
			GetTextSize(title, titleFontSize, titleFont.Font, Vector2.new(100, titleFontSize)).Y

		local selectionCursor = if UIBloxConfig.migrateToNewSelectionCursor
			then cursor
			else getSelectionCursor(CursorKind.RoundedRect)

		local function onStateChanged(oldState, newState)
			if newState == ControlState.Hover then
				self:setState({
					backgroundTransparency = backgroundStyle.Transparency,
					iconTransparency = iconStyle.Transparency,
					titleTransparency = titleStyle.Transparency,
					showHoverMask = true,
				})
				self.hoverTransparencyMotor:setGoal(Otter.spring(hoverStyle.Transparency, SPRING_PARAMETERS))
			elseif newState == ControlState.Default then
				self:setState({
					backgroundTransparency = backgroundStyle.Transparency,
					iconTransparency = iconStyle.Transparency,
					titleTransparency = titleStyle.Transparency,
				})
				self.hoverTransparencyMotor:setGoal(Otter.spring(FULLY_TRANSPARENT, SPRING_PARAMETERS))
			elseif newState == ControlState.Pressed then
				self:setState({
					backgroundTransparency = divideTransparency(backgroundStyle.Transparency, 2),
					iconTransparency = divideTransparency(iconStyle.Transparency, 2),
					titleTransparency = divideTransparency(titleStyle.Transparency, 2),
					showHoverMask = false,
				})
				self.hoverTransparencyMotor:setGoal(Otter.instant(FULLY_TRANSPARENT))
			end
		end

		return Roact.createElement(Interactable, {
			Size = size,
			Position = position,
			BackgroundTransparency = 1, -- Default is 0
			SelectionImageObject = selectionCursor,
			LayoutOrder = layoutOrder,
			onStateChanged = onStateChanged,
			[Roact.Event.Activated] = onActivated,
		}, {
			MenuTileFrame = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = size,
			}, {
				Background = Roact.createElement("Frame", {
					BackgroundColor3 = backgroundStyle.Color,
					BackgroundTransparency = backgroundTransparency,
					BorderSizePixel = 0,
					Size = UDim2.fromScale(1, 1),
					ZIndex = Z_INDEX.BACKGROUND,
				}, {
					RoundedCornerUI = Roact.createElement("UICorner", {
						CornerRadius = UDim.new(0, 8),
					}),
				}),
				HoverMask = self.state.showHoverMask and Roact.createElement("Frame", {
					BackgroundColor3 = hoverStyle.Color,
					BackgroundTransparency = self.hoverTransparency,
					BorderSizePixel = 0,
					Size = UDim2.fromScale(1, 1),
					ZIndex = Z_INDEX.HOVER_MASK,
				}, {
					RoundedCornerUI = Roact.createElement("UICorner", {
						CornerRadius = UDim.new(0, 8),
					}),
				}),
				IconAndTitleContainer = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					Size = UDim2.fromScale(1, 1),
					ZIndex = Z_INDEX.ICON_AND_TITLE_CONTAINER,
				}, {
					IconAndTitleUIListLayout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Vertical,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						Padding = LIST_PADDING,
						VerticalAlignment = Enum.VerticalAlignment.Center,
					}),
					IconAndTitleUIPadding = Roact.createElement("UIPadding", {
						PaddingBottom = PADDING_PADDING,
						PaddingLeft = PADDING_PADDING,
						PaddingRight = PADDING_PADDING,
						-- pad by the height of the title line, to position Icon in the middle,
						-- title height is always 2 lines high
						PaddingTop = PADDING_PADDING + UDim.new(0, titleTextOneLineSizeY),
					}),
					Icon = icon and Roact.createElement(ImageSetComponent.Label, {
						BackgroundTransparency = 1,
						Image = icon,
						ImageColor3 = iconStyle.Color,
						ImageTransparency = iconTransparency,
						LayoutOrder = LAYOUT_ORDER.ICON,
						Size = UDim2.fromOffset(iconSize, iconSize),
					}),
					-- GenericText, does not limit to 2 lines
					Title = title and Roact.createElement("TextLabel", {
						BackgroundTransparency = 1,
						Font = titleFont.Font,
						LayoutOrder = LAYOUT_ORDER.TITLE,
						Size = UDim2.new(1, 0, 0, titleTextOneLineSizeY * TITLE_MAX_NUMBER_OF_LINES),
						Text = title,
						TextColor3 = titleStyle.Color,
						TextSize = titleFontSize,
						TextTransparency = titleTransparency,
						TextTruncate = Enum.TextTruncate.AtEnd,
						TextWrapped = true,
						TextYAlignment = Enum.TextYAlignment.Top,
					}),
				}),
				BadgeContainer = badgeValue and Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					Size = UDim2.fromScale(1, 1),
					ZIndex = Z_INDEX.BADGE_CONTAINER,
				}, {
					BadgeUIListLayout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Vertical,
						HorizontalAlignment = Enum.HorizontalAlignment.Right,
						Padding = LIST_PADDING,
						VerticalAlignment = Enum.VerticalAlignment.Top,
					}),
					BadgeUIPadding = Roact.createElement("UIPadding", {
						PaddingBottom = PADDING_PADDING,
						PaddingLeft = PADDING_PADDING,
						PaddingRight = PADDING_PADDING,
						PaddingTop = PADDING_PADDING,
					}),
					Badge = Roact.createElement(Badge, {
						value = badgeValue,
					}),
				}),
			}),
		})
	end)
end

function MenuTile:willUnmount()
	if self.hoverTransparencyMotor then
		self.hoverTransparencyMotor:destroy()
	end
end
return MenuTile
