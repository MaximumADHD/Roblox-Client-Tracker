local Packages = script.Parent.Parent.Parent.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local withStyle = require(Packages.UIBlox.Core.Style.withStyle)
local Images = require(Packages.UIBlox.App.ImageSet.Images)
local InputButton = require(Packages.UIBlox.Core.InputButton.InputButton)

--TODO: This code is considered Control.Checkbox by design, consider moving this out of InputButton for consistency.

local Checkbox = Roact.PureComponent:extend("Checkbox")

local validateProps = t.strictInterface({
	text = t.string,
	isSelected = t.optional(t.boolean),
	isDisabled = t.optional(t.boolean),
	onActivated = t.callback,
	size = t.optional(t.UDim2),
	layoutOrder = t.optional(t.number),
	[Roact.Ref] = t.optional(t.table),
})

Checkbox.defaultProps = {
	text = "Checkbox Text",
	isSelected = false,
	isDisabled = false,
}

local CHECKMARK_SIZE = 14

function Checkbox:init()
	self.state = {
		value = self.props.isSelected
	}

	self.onFlip = function()
		if self.props.isDisabled then return end
		self.props.onActivated(not self.props.isSelected)
	end
end

function Checkbox:render()
	assert(validateProps(self.props))

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme

		local image
		local imageColor
		local fillImage
		local fillImageSize

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
		})
	end)
end

return Checkbox
