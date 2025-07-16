--!nonstrict
local Packages = script.Parent.Parent.Parent.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local Cryo = require(Packages.Cryo)
local withStyle = require(Packages.UIBlox.Core.Style.withStyle)
local Images = require(Packages.UIBlox.App.ImageSet.Images)
local InputButton = require(Packages.UIBlox.Core.InputButton.InputButton)
local RoactGamepad = require(Packages.RoactGamepad)

local RadioButton = Roact.PureComponent:extend("RadioButton")

RadioButton.validateProps = t.strictInterface({
	-- The text that is displayed beside the RadioButton option
	text = t.string,
	isSelected = t.optional(t.boolean),
	-- Is the RadioButton disabled
	isDisabled = t.optional(t.boolean),
	-- Callback for the activated event
	onActivated = t.callback,
	-- The size of the RadioButton
	size = t.UDim2,
	-- The layoutOrder of the RadioButton
	layoutOrder = t.optional(t.number),
	id = t.number,

	-- An Instance for gamepad NextSelectionDown
	NextSelectionDown = t.optional(t.table),
	-- An Instance for gamepad NextSelectionUp
	NextSelectionUp = t.optional(t.table),
	-- An Instance for gamepad NextSelectionLeft
	NextSelectionLeft = t.optional(t.table),
	-- An Instance for gamepad NextSelectionRight
	NextSelectionRight = t.optional(t.table),
	SelectionImageObject = t.optional(t.table),
	forwardRef = t.optional(t.table),
})

RadioButton.defaultProps = {
	text = "RadioButton Text",
	isSelected = false,
	isDisabled = false,
	layoutOrder = 0,
}

local INNER_BUTTON_SIZE = 18

function RadioButton:init()
	self.onSetValue = function()
		if not self.props.isDisabled then
			self.props.onActivated(self.props.id)
		end
	end
end

function RadioButton:render()
	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme

		local image = Images["component_assets/circle_24_stroke_1"]
		local imageColor = theme.TextDefault.Color

		local fillImage = Images["component_assets/circle_16"]
		local fillImageColor = theme.TextDefault.Color

		local fillImageSize
		local isSelected = self.props.isSelected

		local textColor = theme.TextDefault.Color
		local transparency = theme.TextDefault.Transparency

		if self.props.isDisabled then
			transparency = 0.5
		end

		if isSelected then
			fillImageSize = UDim2.new(0, INNER_BUTTON_SIZE, 0, INNER_BUTTON_SIZE)
			fillImageColor = theme.SystemPrimaryDefault.Color
			imageColor = theme.SystemPrimaryDefault.Color
		else
			fillImageSize = UDim2.new(0, 0, 0, 0)
		end

		local buttonComponent = RoactGamepad.Focusable[InputButton]

		return Roact.createElement(buttonComponent, {
			text = self.props.text,
			onActivated = self.onSetValue,
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

			[Roact.Ref] = self.props.forwardRef,
			NextSelectionUp = self.props.NextSelectionUp,
			NextSelectionDown = self.props.NextSelectionDown,
			NextSelectionLeft = self.props.NextSelectionLeft,
			NextSelectionRight = self.props.NextSelectionRight,
			SelectionImageObject = self.props.SelectionImageObject,
		})
	end)
end

return Roact.forwardRef(function(props, ref)
	return Roact.createElement(RadioButton, Cryo.Dictionary.join(props, { forwardRef = ref }))
end)
