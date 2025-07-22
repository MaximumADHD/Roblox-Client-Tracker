--!nonstrict
--[[
	Create a generic button that can be themed for different state the background and content.
]]
local Menu = script.Parent
local App = Menu.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Core = UIBlox.Core

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local Cryo = require(Packages.Cryo)

local Interactable = require(Core.Control.Interactable)

local ControlState = require(Core.Control.Enum.ControlState)

local withStyle = require(Core.Style.withStyle)
local useStyle = require(UIBlox.Core.Style.useStyle)
local withSelectionCursorProvider = require(App.SelectionImage.withSelectionCursorProvider)
local useCursorByType = require(App.SelectionCursor.useCursorByType)
local CursorType = require(App.SelectionCursor.CursorType)
local UIBloxConfig = require(UIBlox.UIBloxConfig)
local CursorKind = require(App.SelectionImage.CursorKind)
local ImageSetComponent = require(Core.ImageSet.ImageSetComponent)
local ShimmerPanel = require(App.Loading.ShimmerPanel)
local IconSize = require(App.Constant.IconSize)
local GenericTextLabel = require(Core.Text.GenericTextLabel.GenericTextLabel)

local validateImage = require(Core.ImageSet.Validator.validateImage)
local ButtonGetContentStyle = require(Core.Button.getContentStyle)
local validateTypographyInfo = require(Core.Style.Validator.validateTypographyInfo)
local validateColorInfo = require(Core.Style.Validator.validateColorInfo)

local StyleDefaults = require(script.Parent.StyleDefaults)

local DropdownMenuCell = Roact.PureComponent:extend("DropdownMenuCell")

local function getColorFromMap(colorMap, controlState)
	local controlStateColor = colorMap[controlState] or colorMap[ControlState.Default]
	return {
		Color = controlStateColor.Color,
		Transparency = controlStateColor.Transparency,
	}
end

local function getButtonStyle(getStyleFunc, contentMap, controlState, style, isActive)
	local buttonStyle = getStyleFunc(contentMap, controlState, style)
	if (controlState ~= ControlState.Disabled and controlState ~= ControlState.Pressed) and isActive then
		buttonStyle.Transparency = 0.5 * buttonStyle.Transparency + 0.5
	end
	return buttonStyle
end

local function getButtonContentStyle(getStyleFunc, contentMap, controlState, style, isActive, hasContent)
	local contentStyle = getStyleFunc(contentMap, controlState, style)

	if
		(controlState ~= ControlState.Disabled and controlState ~= ControlState.Pressed)
		and (isActive or not hasContent)
	then
		contentStyle.Transparency = 0.5 * contentStyle.Transparency + 0.5
	end
	return contentStyle
end

function DropdownMenuCell:init()
	self:setState({
		controlState = ControlState.Initialize,
	})

	self.onStateChanged = function(oldState, newState)
		self:setState({
			controlState = newState,
		})
		if self.props.onStateChanged then
			self.props.onStateChanged(oldState, newState)
		end
	end
end

local colorStateMap = t.union(
	t.interface({
		-- The default state theme color class
		[ControlState.Default] = t.string,
	}),
	t.interface({
		[ControlState.Default] = validateColorInfo,
	})
)

DropdownMenuCell.validateProps = t.interface({
	--The icon of the button
	icon = t.optional(validateImage),

	--The text of the button
	text = t.optional(t.string),

	--The font of the text
	textFont = t.optional(validateTypographyInfo),

	--The image being used as the background of the button
	buttonImage = validateImage,

	--The theme color class mapping for different button states
	buttonStateColorMap = colorStateMap,

	--The theme color class mapping for different content tates
	contentStateColorMap = colorStateMap,

	--The theme color class mapping for different text tates
	textStateColorMap = t.optional(colorStateMap),

	--The theme color class mapping for different icon tates
	iconStateColorMap = t.optional(colorStateMap),

	-- A Boolean value that determines whether the cell is disabled
	isDisabled = t.optional(t.boolean),

	--Is the button activated
	isActivated = t.optional(t.boolean),

	--Does the button hold a selected value
	hasContent = t.optional(t.boolean),

	--Is the button loading
	isLoading = t.optional(t.boolean),

	-- Callback for the activated event of the cell
	onActivated = t.callback,

	-- The state change callback for the cell
	onStateChanged = t.optional(t.callback),

	-- A Boolean value that determines whether the cell is interactable
	userInteractionEnabled = t.optional(t.boolean),

	-- Note that this component can accept all valid properties of the Roblox ImageButton instance

	-- Size of the icon button
	iconSize = t.optional(t.number),

	-- Padding of the container at the left/right side
	containerPadding = t.optional(t.strictInterface({
		left = t.number,
		right = t.number,
	})),

	-- Spacing between text and icon
	iconTextSpacing = t.optional(t.number),

	-- Container border config which is a replacement for rounded image button background
	border = t.optional(t.strictInterface({
		-- Border corner radius
		cornerRadius = t.number,
		-- Border size
		size = t.number,
	})),

	-- Indicate whether design override is enabled
	enableTokenOverride = t.optional(t.boolean),

	selectionOrder = t.optional(t.number),
	-- Optional selection cursor
	selectionCursor = t.optional(t.any),
})

DropdownMenuCell.defaultProps = {
	isDisabled = false,
	isLoading = false,
	SliceCenter = Rect.new(8, 8, 9, 9),
	iconSize = IconSize.Regular,
	containerPadding = {
		left = 12,
		right = 20,
	},
	iconTextSpacing = 5,
	border = {
		cornerRadius = 8,
		size = 1,
	},
	enableTokenOverride = false,
}

function DropdownMenuCell:render()
	return withStyle(function(style)
		return withSelectionCursorProvider(function(getSelectionCursor)
			assert(t.table(style), "Style provider is missing.")

			local currentState = self.state.controlState

			local text = self.props.text
			local icon = self.props.icon
			local iconSize = self.props.iconSize
			local containerPadding = self.props.containerPadding
			local iconTextSpacing = self.props.iconTextSpacing
			local isLoading = self.props.isLoading
			local isDisabled = self.props.isDisabled

			local buttonStateColorMap = self.props.buttonStateColorMap
			local contentStateColorMap = self.props.contentStateColorMap
			local textStateColorMap = self.props.textStateColorMap or contentStateColorMap
			local iconStateColorMap = self.props.iconStateColorMap or contentStateColorMap

			if isLoading then
				isDisabled = true
			end

			local selectionCursor = self.props.selectionCursor
				or (getSelectionCursor and getSelectionCursor(CursorKind.RoundedRectNoInset))
			local getStyleFunc
			if self.props.enableTokenOverride then
				getStyleFunc = getColorFromMap
			else
				getStyleFunc = ButtonGetContentStyle
			end

			local buttonStyle =
				getButtonStyle(getStyleFunc, buttonStateColorMap, currentState, style, self.props.isActivated)
			local textStyle = text
				and getButtonContentStyle(
					getStyleFunc,
					textStateColorMap,
					currentState,
					style,
					self.props.isActivated,
					self.props.hasContent
				)
			local iconStyle = icon
				and getButtonContentStyle(
					getStyleFunc,
					iconStateColorMap,
					currentState,
					style,
					self.props.isActivated,
					true
				)
			local buttonImage = self.props.buttonImage
			local fontStyle
			if self.props.enableTokenOverride then
				fontStyle = self.props.textFont
			else
				fontStyle = style.Font.Header2
			end

			local textRightOffset
			if icon ~= nil then
				textRightOffset = iconSize + iconTextSpacing + containerPadding.right
			else
				textRightOffset = containerPadding.right
			end

			local buttonContentLayer
			if isLoading then
				buttonContentLayer = {
					isLoadingShimmer = Roact.createElement(ShimmerPanel, {
						Size = UDim2.fromScale(1, 1),
					}),
				}
			else
				buttonContentLayer = self.props[Roact.Children]
					or {
						TextContainer = Roact.createElement("Frame", {
							Size = UDim2.fromScale(1, 1),
							BackgroundTransparency = 1,
						}, {
							UIListLayout = Roact.createElement("UIListLayout", {
								FillDirection = Enum.FillDirection.Horizontal,
								VerticalAlignment = Enum.VerticalAlignment.Center,
								HorizontalAlignment = Enum.HorizontalAlignment.Left,
								SortOrder = Enum.SortOrder.LayoutOrder,
							}),
							Padding = Roact.createElement("UIPadding", {
								PaddingLeft = UDim.new(0, containerPadding.left),
							}),
							Text = if text
								then Roact.createElement(GenericTextLabel, {
									BackgroundTransparency = 1,
									Text = text,
									fontStyle = fontStyle,
									colorStyle = textStyle,
									LayoutOrder = 1,
									Size = UDim2.new(1, -textRightOffset, 1, 0),
									TextTruncate = Enum.TextTruncate.AtEnd,
									TextXAlignment = Enum.TextXAlignment.Left,
									TextWrapped = false,
								})
								else nil,
						}),
						IconContainer = Roact.createElement("Frame", {
							Size = UDim2.fromScale(1, 1),
							BackgroundTransparency = 1,
						}, {
							UIListLayout = Roact.createElement("UIListLayout", {
								FillDirection = Enum.FillDirection.Horizontal,
								VerticalAlignment = Enum.VerticalAlignment.Center,
								HorizontalAlignment = Enum.HorizontalAlignment.Right,
								SortOrder = Enum.SortOrder.LayoutOrder,
							}),
							Padding = Roact.createElement("UIPadding", {
								PaddingRight = UDim.new(0, containerPadding.right),
							}),
							Icon = icon and Roact.createElement(ImageSetComponent.Label, {
								Size = UDim2.fromOffset(iconSize, iconSize),
								BackgroundTransparency = 1,
								Image = icon,
								ImageColor3 = iconStyle.Color,
								ImageTransparency = iconStyle.Transparency,
								LayoutOrder = 2,
							}) or nil,
						}),
					}
			end

			local PROPS_FILTER = {
				isActivated = Cryo.None,
				hasContent = Cryo.None,
				icon = Cryo.None,
				text = Cryo.None,
				textFont = Cryo.None,
				buttonImage = Cryo.None,
				buttonStateColorMap = Cryo.None,
				contentStateColorMap = Cryo.None,
				textStateColorMap = Cryo.None,
				iconStateColorMap = Cryo.None,
				iconSize = Cryo.None,
				containerPadding = Cryo.None,
				iconTextSpacing = Cryo.None,
				border = Cryo.None,
				enableTokenOverride = Cryo.None,
				onActivated = Cryo.None,
				isLoading = Cryo.None,
				[Roact.Children] = Cryo.None,
				isDisabled = isDisabled,
				onStateChanged = self.onStateChanged,
				userInteractionEnabled = self.props.userInteractionEnabled,
				ScaleType = Enum.ScaleType.Slice,
				BackgroundTransparency = 1,
				AutoButtonColor = false,
				selectionCursor = Cryo.None,
				SelectionImageObject = selectionCursor,
				SelectionOrder = self.props.selectionOrder,
				[Roact.Event.Activated] = self.props.onActivated,
			}
			local interactableProps
			local buttonBackgroundLayer
			local buttonContentSize
			if self.props.enableTokenOverride then
				local borderSize = self.props.border.size
				buttonContentSize = UDim2.new(1, -2 * borderSize, 1, -2 * borderSize)
				buttonBackgroundLayer = {
					UIStroke = Roact.createElement("UIStroke", {
						Color = buttonStyle.Color,
						Transparency = buttonStyle.Transparency,
						Thickness = borderSize,
					}),
					UICorner = Roact.createElement("UICorner", {
						CornerRadius = UDim.new(0, self.props.border.cornerRadius),
					}),
				}
				interactableProps = Cryo.Dictionary.join(self.props, PROPS_FILTER)
			else
				buttonContentSize = UDim2.new(1, 0, 1, 0)
				buttonBackgroundLayer = {}
				interactableProps = Cryo.Dictionary.join(self.props, {
					Image = buttonImage,
					ImageColor3 = buttonStyle.Color,
					ImageTransparency = buttonStyle.Transparency,
				}, PROPS_FILTER)
			end

			return Roact.createElement(Interactable, interactableProps, {
				ButtonContent = Roact.createElement("Frame", {
					Size = buttonContentSize,
					BackgroundTransparency = 1,
				}, Cryo.Dictionary.join(buttonBackgroundLayer, buttonContentLayer)),
			})
		end)
	end)
end

return function(providedProps: any)
	local props = providedProps
	local selectionCursor
	if UIBloxConfig.useFoundationSelectionCursor then
		selectionCursor = useCursorByType(CursorType.RoundedRectNoInset)
		props = Cryo.Dictionary.join(props, {
			selectionCursor = selectionCursor,
		})
	end
	if providedProps.enableTokenOverride then
		local style = useStyle()
		props = Cryo.Dictionary.join(StyleDefaults.getDropdownMenuCellDefaultTokens(style), providedProps)
	end
	return Roact.createElement(DropdownMenuCell, props)
end
