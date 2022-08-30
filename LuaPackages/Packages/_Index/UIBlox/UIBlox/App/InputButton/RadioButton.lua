local Packages = script.Parent.Parent.Parent.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local Cryo = require(Packages.Cryo)
local withStyle = require(Packages.UIBlox.Core.Style.withStyle)
local Images = require(Packages.UIBlox.App.ImageSet.Images)
local InputButton = require(Packages.UIBlox.Core.InputButton.InputButton)
local RoactGamepad = require(Packages.RoactGamepad)
local UIBloxConfig = require(Packages.UIBlox.UIBloxConfig)
local devOnly = require(Packages.UIBlox.Utility.devOnly)

local RadioButton = Roact.PureComponent:extend("RadioButton")

local validateProps = devOnly(t.strictInterface({
	text = t.string,
	isSelected = t.optional(t.boolean),
	isDisabled = t.optional(t.boolean),
	onActivated = t.callback,
	size = t.UDim2,
	layoutOrder = t.optional(t.number),
	id = t.number,

	-- optional parameters for RoactGamepad
	NextSelectionLeft = t.optional(t.table),
	NextSelectionRight = t.optional(t.table),
	NextSelectionUp = t.optional(t.table),
	NextSelectionDown = t.optional(t.table),
	SelectionImageObject = t.optional(t.table),
	forwardRef = t.optional(t.table),
}))

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
	assert(validateProps(self.props))

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

		local buttonComponent = InputButton
		if UIBloxConfig.enableRadioButtonGamepadSupport then
			buttonComponent = RoactGamepad.Focusable[InputButton]
		end

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

			[Roact.Ref] = UIBloxConfig.enableRadioButtonGamepadSupport and self.props.forwardRef or nil,
			NextSelectionUp = UIBloxConfig.enableRadioButtonGamepadSupport and self.props.NextSelectionUp or nil,
			NextSelectionDown = UIBloxConfig.enableRadioButtonGamepadSupport and self.props.NextSelectionDown or nil,
			NextSelectionLeft = UIBloxConfig.enableRadioButtonGamepadSupport and self.props.NextSelectionLeft or nil,
			NextSelectionRight = UIBloxConfig.enableRadioButtonGamepadSupport and self.props.NextSelectionRight or nil,
			SelectionImageObject = UIBloxConfig.enableRadioButtonGamepadSupport and self.props.SelectionImageObject
				or nil,
		})
	end)
end

if UIBloxConfig.enableRadioButtonGamepadSupport then
	return Roact.forwardRef(function(props, ref)
		return Roact.createElement(RadioButton, Cryo.Dictionary.join(props, { forwardRef = ref }))
	end)
else
	return RadioButton
end
