--!nonstrict
local ToastRoot = script.Parent
local DialogRoot = ToastRoot.Parent
local AppRoot = DialogRoot.Parent
local UIBloxRoot = AppRoot.Parent
local Packages = UIBloxRoot.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local GetTextSize = require(UIBloxRoot.Core.Text.GetTextSize)
local Images = require(UIBloxRoot.App.ImageSet.Images)
local memoize = require(UIBloxRoot.Utility.memoize)
local withStyle = require(UIBloxRoot.Core.Style.withStyle)
local validateColorInfo = require(UIBloxRoot.Core.Style.Validator.validateColorInfo)
local ButtonType = require(AppRoot.Button.Enum.ButtonType)
local FoundationButtonUtils = require(AppRoot.Button.FoundationButtonUtils)
local StandardButtonSize = require(UIBloxRoot.Core.Button.Enum.StandardButtonSize)
local UIBloxConfig = require(UIBloxRoot.UIBloxConfig)

local DEFAULT_PADDING = 12
local DEFAULT_ICON_SIZE = Vector2.new(36, 36)

local BUTTON_MAX_WIDTH = 200
-- Only used for GenericButton, which labels at Font.Header2 and so can be measured
-- from this component's own text styles: 8px of UIPadding per side plus the 16px its
-- label reserves beyond TextBounds horizontally, and 16px to reach its fixed 36px
-- height. Undershooting the width silently truncates the label, which carries
-- text-truncate-end. Foundation's button is measured through FoundationButtonUtils
-- instead, since it labels at its own typography.
local BUTTON_PADDING_X = 32
local BUTTON_PADDING_Y = 16

-- The reservation before useFoundationToastButtonSizing, kept so switching the config
-- off restores the geometry consumers ship today.
local LEGACY_BUTTON_PADDING = 40

-- Kept in sync with the size ToastFrame renders the button at.
local BUTTON_SIZE = StandardButtonSize.Small

local MAX_WIDTH = 400
local MIN_WIDTH = 24
local MIN_HEIGHT = 60

local MAX_BOUND = 10000

local function getTextHeight(text, font, fontSize, widthCap)
	local bounds = Vector2.new(widthCap, MAX_BOUND)
	local textSize = GetTextSize(text, fontSize, font, bounds)
	return textSize.Y
end

local ToastContainer = Roact.PureComponent:extend("ToastContainer")

ToastContainer.validateProps = t.strictInterface({
	anchorPoint = t.optional(t.Vector2),
	buttonText = t.optional(t.string),
	fitHeight = t.optional(t.boolean),
	iconColorStyle = t.optional(validateColorInfo),
	-- Optional image to be displayed in the toast.
	iconImage = t.optional(t.union(t.table, t.string, t.callback)),
	iconSize = t.optional(t.Vector2),
	iconChildren = t.optional(t.table),
	layoutOrder = t.optional(t.integer),
	onActivated = t.optional(t.callback),
	onTouchSwipe = t.optional(t.callback),
	padding = t.numberMin(0),
	position = t.UDim2,
	pressedScale = t.optional(t.number),
	renderToast = t.callback,
	size = t.UDim2,
	sizeConstraint = t.optional(t.table),
	toastSubtitle = t.optional(t.string),
	toastTitle = t.string,
	buttonType = t.optional(ButtonType.isEnumValue),
})

ToastContainer.defaultProps = {
	anchorPoint = Vector2.new(0, 0),
	fitHeight = true,
	padding = DEFAULT_PADDING,
	position = UDim2.new(0, 0, 0, 0),
	size = UDim2.new(1, -DEFAULT_PADDING * 2, 0, 0),
	sizeConstraint = {
		MaxSize = Vector2.new(MAX_WIDTH, math.huge),
		MinSize = Vector2.new(MIN_WIDTH, MIN_HEIGHT),
	},
}

function ToastContainer:init()
	self.containerRef = Roact.createRef()
	self.isMounted = false

	self.state = {
		containerWidth = 0,
		pressed = false,
		subtitleHeight = 0,
		titleHeight = 0,
	}

	self.getIconSize = function()
		local iconSize = self.props.iconSize
		local iconImage = self.props.iconImage
		local imagesResolutionScale = Images.ImagesResolutionScale
		if iconImage then
			if iconSize then
				return iconSize
			elseif iconImage.ImageRectSize and imagesResolutionScale and imagesResolutionScale > 0 then
				return iconImage.ImageRectSize / imagesResolutionScale
			else
				return DEFAULT_ICON_SIZE
			end
		end
		return Vector2.new(0, 0)
	end

	self.onButtonInputBegan = function(_, inputObject)
		if
			inputObject.UserInputState == Enum.UserInputState.Begin
			and (
				inputObject.UserInputType == Enum.UserInputType.Touch
				or inputObject.UserInputType == Enum.UserInputType.MouseButton1
			)
		then
			if not self.state.pressed then
				self:setState({
					pressed = true,
				})
			end
		end
	end

	self.onButtonInputEnded = function()
		if self.state.pressed then
			self:setState({
				pressed = false,
			})
		end
	end

	self.getTextHeights = function(stylePalette)
		local iconImage = self.props.iconImage
		local iconSize = self.getIconSize()
		local buttonText = self.props.buttonText
		local onActivated = self.props.onActivated
		local padding = self.props.padding
		local toastSubtitle = self.props.toastSubtitle
		local toastTitle = self.props.toastTitle

		local font = stylePalette.Font
		local titleStyle = font.Header2
		local subtitleStyle = font.CaptionBody

		local textFrameWidth = self.state.containerWidth - padding * 2
		if iconImage then
			textFrameWidth = textFrameWidth - iconSize.X - padding
		end

		if buttonText and onActivated and not self.showCompactToast() then
			textFrameWidth = textFrameWidth - self.getButtonDimensions(stylePalette).X - self.getButtonGap()
		end

		local titleFont = titleStyle.Font
		local titleSize = titleStyle.RelativeSize * font.BaseSize
		local titleHeight = math.max(0, getTextHeight(toastTitle, titleFont, titleSize, textFrameWidth))

		local subtitleHeight = 0
		if toastSubtitle then
			local subtitleFont = subtitleStyle.Font
			local subtitleSize = subtitleStyle.RelativeSize * font.BaseSize
			subtitleHeight = math.max(0, getTextHeight(toastSubtitle, subtitleFont, subtitleSize, textFrameWidth))
		end

		return subtitleHeight, titleHeight
	end

	self.showCompactToast = function()
		return self.state.containerWidth < MAX_WIDTH
	end

	-- The UIListLayout gap ToastFrame puts between the message and the button. It went
	-- unreserved before useFoundationToastButtonSizing, so it stays unreserved while the
	-- config is off.
	self.getButtonGap = function()
		return if UIBloxConfig.useFoundationToastButtonSizing then self.props.padding else 0
	end

	self.showPressed = function()
		if not self.props.buttonText and self.props.onActivated then
			return self.state.pressed
		end

		return nil
	end

	self.getButtonDimensions = memoize(function(stylePalette)
		local buttonText = self.props.buttonText
		local onActivated = self.props.onActivated
		if not buttonText or not onActivated then
			return Vector2.new(0, 0)
		end

		local measureFoundationButton = UIBloxConfig.useFoundationToastButtonSizing and UIBloxConfig.useFoundationButton
		local dimensions = if measureFoundationButton
			then FoundationButtonUtils.getFitContentSize(buttonText, BUTTON_SIZE, stylePalette.Tokens)
			else nil

		if not dimensions then
			local primarySystemButtonFont = stylePalette.Font.Header2.Font
			local primarySystemButtonFontSize = stylePalette.Font.Header2.RelativeSize * stylePalette.Font.BaseSize
			local reservation = if UIBloxConfig.useFoundationToastButtonSizing
				then Vector2.new(BUTTON_PADDING_X, BUTTON_PADDING_Y)
				else Vector2.new(LEGACY_BUTTON_PADDING, LEGACY_BUTTON_PADDING)
			dimensions = reservation
				+ GetTextSize(buttonText, primarySystemButtonFontSize, primarySystemButtonFont, Vector2.new(1000, 1000))
		end

		if not self.showCompactToast() then
			return dimensions
		else
			return Vector2.new(math.min(dimensions.X, BUTTON_MAX_WIDTH), dimensions.Y)
		end
	end)
end

function ToastContainer:render()
	local iconImage = self.props.iconImage
	local iconSize = self.getIconSize()
	local padding = self.props.padding
	local toastSubtitle = self.props.toastSubtitle
	local toastTitle = self.props.toastTitle
	return withStyle(function(stylePalette)
		local subtitleHeight, titleHeight = self.getTextHeights(stylePalette)
		local textFrameHeight = titleHeight + subtitleHeight
		local buttonDimensions = self.getButtonDimensions(stylePalette)
		local buttonHeight = buttonDimensions.Y

		local size = self.props.size
		if self.props.fitHeight then
			local containerHeight = math.max(iconSize.Y, textFrameHeight)
				+ padding * 2
				+ (
					if self.showCompactToast()
							and self.props.buttonText
							and self.props.onActivated
						then buttonHeight + self.getButtonGap()
						else 0
				)
			size = UDim2.new(size.X.Scale, size.X.Offset, 0, containerHeight)
		end

		local theme = stylePalette.Theme
		local font = stylePalette.Font
		local titleStyle = font.Header2
		local subtitleStyle = font.CaptionBody

		return Roact.createElement("TextButton", {
			AnchorPoint = self.props.anchorPoint,
			BackgroundTransparency = 1,
			LayoutOrder = self.props.layoutOrder,
			Position = self.props.position,
			Size = size,
			Text = "",
			[Roact.Change.AbsoluteSize] = function(rbx)
				if self.state.containerWidth ~= rbx.AbsoluteSize.X then
					self:setState({
						containerWidth = rbx.AbsoluteSize.X,
					})
				end
			end,
			[Roact.Event.Activated] = if not self.props.buttonText then self.props.onActivated else nil,
			[Roact.Event.InputBegan] = self.onButtonInputBegan,
			[Roact.Event.InputEnded] = self.onButtonInputEnded,
			[Roact.Event.TouchSwipe] = self.props.onTouchSwipe,
			[Roact.Ref] = self.containerRef,
		}, {
			UISizeConstraint = Roact.createElement("UISizeConstraint", self.props.sizeConstraint),
			Toast = self.props.renderToast({
				buttonProps = if self.props.buttonText and self.props.onActivated
					then {
						buttonDimensions = self.getButtonDimensions(stylePalette),
						buttonText = self.props.buttonText,
						onActivated = self.props.onActivated,
						buttonType = self.props.buttonType,
					}
					else nil,
				iconProps = iconImage and {
					colorStyle = self.props.iconColorStyle,
					Image = iconImage,
					Size = UDim2.new(0, iconSize.X, 0, iconSize.Y),
				} or nil,
				iconChildren = self.props.iconChildren,
				-- The `self.props.buttonText and self.props.onActivated` predicate exists because passing in
				-- `isCompact` into the `InformativeToast` component otherwise would cause a validation error
				isCompact = if self.props.buttonText and self.props.onActivated then self.showCompactToast() else nil,
				padding = padding,
				pressed = self.showPressed(),
				pressedScale = self.props.pressedScale,
				subtitleTextProps = toastSubtitle and {
					colorStyle = theme.TextEmphasis,
					fontStyle = subtitleStyle,
					Size = UDim2.new(1, 0, 0, subtitleHeight),
					Text = toastSubtitle,
				} or nil,
				textFrameSize = UDim2.new(1, iconImage and -iconSize.X - padding or 0, 0, textFrameHeight),
				titleTextProps = {
					colorStyle = theme.TextEmphasis,
					fontStyle = titleStyle,
					Size = UDim2.new(1, 0, 0, titleHeight),
					Text = toastTitle,
				},
			}),
		})
	end)
end

function ToastContainer:didMount()
	self:setState({
		containerWidth = self.containerRef.current and self.containerRef.current.AbsoluteSize.X or 0,
	})
end

return ToastContainer
