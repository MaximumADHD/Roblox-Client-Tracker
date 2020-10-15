local Cell = script.Parent
local Core = Cell.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local withStyle = require(UIBlox.Core.Style.withStyle)

local ControlState = require(Packages.UIBlox.Core.Control.Enum.ControlState)
local GenericCell = require(Packages.UIBlox.Core.Cell.GenericCell)
local ImageSetComponent = require(Packages.UIBlox.Core.ImageSet.ImageSetComponent)

local GenericSelectionCell = Roact.PureComponent:extend("GenericSelectionCell")

local CELL_STATE_COLOR = {
	[ControlState.Default] = "BackgroundDefault",
	[ControlState.Hover] = "BackgroundOnHover",
	[ControlState.Pressed] = "BackgroundOnPress",
}

local ICON_STATE_COLOR = {
	[ControlState.Default] = "IconDefault",
	[ControlState.Hover] = "IconEmphasis",
	[ControlState.Pressed] = "IconDefault",
}

local function getCellStyle(contentMap, controlState, style)
	local buttonThemeClass = contentMap[controlState]
		or contentMap[ControlState.Default]

	local buttonStyle = {
		Color = style.Theme[buttonThemeClass].Color,
		Transparency = style.Theme[buttonThemeClass].Transparency,
	}

	-- Default/Disabled background color should be theme agnostic. Other control states deal with just
	-- White/Black alpha transparency which work for any background color.
	if controlState == ControlState.Default or controlState == ControlState.Disabled then
		buttonStyle.Transparency = 1
	end

	return buttonStyle
end

local function getIconStyle(contentMap, controlState, style)
	local iconThemeClass = contentMap[controlState]
		or contentMap[ControlState.Default]

	local iconStyle = {
		Color = style.Theme[iconThemeClass].Color,
		Transparency = style.Theme[iconThemeClass].Transparency,
	}

	--Based on the design specs, the disabled and pressed state is 0.5 * alpha value
	if controlState == ControlState.Disabled or
		controlState == ControlState.Pressed then
			iconStyle.Transparency = 0.5 * iconStyle.Transparency + 0.5
	end

	return iconStyle
end

local function getTextStyle(theme, controlState)
	local textStyle = {
		Color = theme.Color,
		Transparency = theme.Transparency,
	}

	--Based on the design specs, the disabled and pressed state is 0.5 * alpha value
	if controlState == ControlState.Disabled or
		controlState == ControlState.Pressed then
			textStyle.Transparency = 0.5 * textStyle.Transparency + 0.5
	end

	return textStyle
end

GenericSelectionCell.validateProps = t.strictInterface({
	-- The title text to display
	text = t.string,

	-- Subtitle text to display
	subtitleText = t.optional(t.string),

	-- Default Image to render for the right component.
	defaultImage = t.union(t.string, t.table),

	-- Image to render inside the defaultImage when this component is selected.
	selectedImage = t.union(t.string, t.table),

	-- Size of the default image
	defaultImageSize = t.number,

	-- Size of the selected image
	selectedImageSize = t.number,

	-- Callback for when this selection is activated.
	onActivated = t.optional(t.callback),

	-- Whether this cell is selected or not.
	isSelected = t.optional(t.boolean),

	-- If this cell is disabled
	isDisabled = t.optional(t.boolean),

	-- If this cell should use the default control state
	useDefaultControlState = t.optional(t.boolean),

	-- optional parameters for RoactGamepad
	[Roact.Ref] = t.optional(t.table),
	NextSelectionLeft = t.optional(t.table),
	NextSelectionRight = t.optional(t.table),
	NextSelectionUp = t.optional(t.table),
	NextSelectionDown = t.optional(t.table),
	SelectionImageObject = t.optional(t.table),
})

GenericSelectionCell.defaultProps = {
	isSelected = false,
}

function GenericSelectionCell:init()
	self.state = {
		controlState = ControlState.Default
	}

	self.onStateChanged = function(_, newState)
		self:setState({
			controlState = newState,
		})
	end
end

function GenericSelectionCell:render()
	assert(self.validateProps(self.props))

	return withStyle(function(stylePalette)
		local font = stylePalette.Font
		local theme = stylePalette.Theme

		local controlState = self.props.useDefaultControlState and ControlState.Default or self.state.controlState

		local iconStyle = getIconStyle(ICON_STATE_COLOR, controlState, stylePalette)
		local colorStyle = getCellStyle(CELL_STATE_COLOR, controlState, stylePalette)
		local textStyle = getTextStyle(theme.TextEmphasis, controlState)
		local subtitleTextStyle = getTextStyle(theme.TextDefault, controlState)
		local dividerStyle = theme.Divider

		return Roact.createElement(GenericCell, {
			titleText = self.props.text,
			colorStyle = colorStyle,
			textStyle = textStyle,
			fontStyle = font.Header2,
			subtitleText = self.props.subtitleText,
			subtitleTextStyle = subtitleTextStyle,
			subtitleFontStyle = font.Body,
			rightContentWidth = self.props.defaultImageSize,
			onActivated = self.props.onActivated,
			dividerStyle = dividerStyle,
			isDisabled = self.props.isDisabled,
			[Roact.Ref] = self.props[Roact.Ref],
			NextSelectionUp = self.props.NextSelectionUp,
			NextSelectionDown = self.props.NextSelectionDown,
			NextSelectionLeft = self.props.NextSelectionLeft,
			NextSelectionRight = self.props.NextSelectionRight,
			SelectionImageObject = self.props.SelectionImageObject,
			renderRightContent = function()
				return Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					Size = UDim2.new(0, self.props.defaultImageSize, 1, 0),
					LayoutOrder = 3,
				}, {
					SelectionImage = Roact.createElement(ImageSetComponent.Label, {
						BackgroundTransparency = 1,
						Image = self.props.defaultImage,
						Size = UDim2.new(0, self.props.defaultImageSize, 0, self.props.defaultImageSize),
						ImageColor3 = iconStyle.Color,
						ImageTransparency = iconStyle.Transparency,
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.new(0.5, 0, 0.5, 0),
					}, {
						SelectedImage = self.props.isSelected and Roact.createElement(ImageSetComponent.Label, {
							BackgroundTransparency = 1,
							Image = self.props.selectedImage,
							Size = UDim2.new(0, self.props.selectedImageSize, 0, self.props.selectedImageSize),
							ImageColor3 = iconStyle.Color,
							ImageTransparency = iconStyle.Transparency,
							AnchorPoint = Vector2.new(0.5, 0.5),
							Position = UDim2.new(0.5, 0, 0.5, 0),
						})
					})
				})
			end,
			onStateChanged = self.onStateChanged,
		})
	end)
end

return GenericSelectionCell