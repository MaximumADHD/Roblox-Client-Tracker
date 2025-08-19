local Packages = script.Parent.Parent.Parent.Parent

local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)
local t = require(Packages.t)
local withStyle = require(Packages.UIBlox.Core.Style.withStyle)
local Images = require(Packages.UIBlox.App.ImageSet.Images)
local InputButton = require(Packages.UIBlox.Core.InputButton.InputButton)
local CursorKind = require(Packages.UIBlox.App.SelectionImage.CursorKind)
local withSelectionCursorProvider = require(Packages.UIBlox.App.SelectionImage.withSelectionCursorProvider)
local UIBloxConfig = require(Packages.UIBlox.UIBloxConfig)
local useCursorByType = require(Packages.UIBlox.App.SelectionCursor.useCursorByType)

--TODO: This code is considered Control.Checkbox by design, consider moving this out of InputButton for consistency.

local Checkbox = Roact.PureComponent:extend("Checkbox")

Checkbox.validateProps = t.strictInterface({
	-- The text that is displayed beside the textbox option
	text = t.string,
	-- Whether the Checkbox is currently selected
	isSelected = t.optional(t.boolean),
	-- Whether the Checkbox is disabled. When `true`, the `onActivated` callback
	-- will not be invoked, even if the user interacts with the toggle.
	isDisabled = t.optional(t.boolean),
	-- A function that will be called whenever the toggle is activated
	onActivated = t.callback,
	-- The size of the checkbox. If the size is not provided, the checkbox
	-- will be sized based on the width of it's parent and the height of it's text.
	size = t.optional(t.UDim2),
	-- The layout order of the Checkbox, if it is being laid out by a UI layout
	layoutOrder = t.optional(t.number),
	frameRef = t.optional(t.table),
	-- An Instance for gamepad NextSelectionDown
	NextSelectionDown = t.optional(t.table),
	-- An Instance for gamepad NextSelectionUp
	NextSelectionUp = t.optional(t.table),
	-- An Instance for gamepad NextSelectionLeft
	NextSelectionLeft = t.optional(t.table),
	-- An Instance for gamepad NextSelectionRight
	NextSelectionRight = t.optional(t.table),
	-- selectionCursor object
	cursor = t.table,
	-- Whether to enable RoactGamepad functionality
	isRoactGamepadEnabled = t.optional(t.boolean),
})

Checkbox.defaultProps = {
	text = "Checkbox Text",
	isSelected = false,
	isDisabled = false,
	isRoactGamepadEnabled = true,
}

local CHECKMARK_SIZE = if UIBloxConfig.migrateBuilderIcon then 20 else 14

function Checkbox:init()
	self.state = {
		value = self.props.isSelected,
	}

	self.onFlip = function()
		if self.props.isDisabled then
			return
		end
		self.props.onActivated(not self.props.isSelected)
	end
end

function Checkbox:render()
	return withSelectionCursorProvider(function(getSelectionCursor)
		return withStyle(function(style)
			return self:renderWithProviders(style, getSelectionCursor, self.props.cursor)
		end)
	end)
end

function Checkbox:renderWithProviders(style, getSelectionCursor, cursor)
	local image, imageColor, fillImage, fillImageSize

	local theme = style.Theme
	local transparency = theme.TextDefault.Transparency
	local textColor = theme.TextDefault.Color
	local fillImageColor = theme.SystemPrimaryContent.Color

	if self.props.isDisabled then
		transparency = 0.5
	end

	if self.props.isSelected then
		image = Images["squircles/fill"]
		imageColor = theme.SystemPrimaryDefault.Color
		fillImage = Images["icons/status/success_small"]
		fillImageSize = UDim2.new(0, CHECKMARK_SIZE, 0, CHECKMARK_SIZE)
	else
		image = Images["squircles/hollow"]
		imageColor = theme.TextDefault.Color
	end

	return Roact.createElement(InputButton, {
		text = self.props.text,
		onActivated = self.onFlip,
		size = self.props.size,
		image = image,
		imageColor = imageColor,
		fillImage = fillImage,
		fillImageSize = fillImageSize,
		fillImageColor = fillImageColor,
		selectedColor = theme.SystemPrimaryDefault.Color,
		textColor = textColor,
		transparency = transparency,
		layoutOrder = self.props.layoutOrder,
		isDisabled = self.props.isDisabled,
		isRoactGamepadEnabled = self.props.isRoactGamepadEnabled,
		[Roact.Ref] = self.props.frameRef,
		SelectionImageObject = cursor,
	})
end

return Roact.forwardRef(function(props, ref)
	local cursor = useCursorByType(CursorKind.InputButton)
	return Roact.createElement(Checkbox, Cryo.Dictionary.join(props, { frameRef = ref, cursor = cursor }))
end)
