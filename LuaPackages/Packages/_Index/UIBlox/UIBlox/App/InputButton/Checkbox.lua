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

--TODO: This code is considered Control.Checkbox by design, consider moving this out of InputButton for consistency.

local Checkbox = Roact.PureComponent:extend("Checkbox")

local validateProps = t.strictInterface({
	text = t.string,
	isSelected = t.optional(t.boolean),
	isDisabled = t.optional(t.boolean),
	onActivated = t.callback,
	size = t.optional(t.UDim2),
	layoutOrder = t.optional(t.number),
	frameRef = t.optional(t.table),
	NextSelectionDown = t.optional(t.table),
	NextSelectionUp = t.optional(t.table),
	NextSelectionLeft = t.optional(t.table),
	NextSelectionRight = t.optional(t.table),
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
	if UIBloxConfig.useUpdatedCheckbox then
		return withSelectionCursorProvider(function(getSelectionCursor)
			return withStyle(function(style)
				return self:renderWithProviders(style, getSelectionCursor)
			end)
		end)
	else
		return self:renderWithProviders()
	end
end

function Checkbox:renderWithProviders(style, getSelectionCursor)
	assert(validateProps(self.props))

	-- Remove this withStyle with UIBloxConfig useUpdatedCheckbox
	return withStyle(function(stylePalette)
		local theme = UIBloxConfig.useUpdatedCheckbox and style.Theme or stylePalette.Theme

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
			[Roact.Ref] = UIBloxConfig.useUpdatedCheckbox and self.props.frameRef or nil,
			SelectionImageObject = UIBloxConfig.useUpdatedCheckbox
				and getSelectionCursor(CursorKind.InputButton) or nil,
		})
	end)
end

return Roact.forwardRef(function (props, ref)
	return Roact.createElement(Checkbox, Cryo.Dictionary.join(
		props,
		{frameRef = ref}
	))
end)
