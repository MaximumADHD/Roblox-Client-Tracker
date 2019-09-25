local UIBloxRoot = script.Parent.Parent
local Roact = require(UIBloxRoot.Parent.Roact)
local t = require(UIBloxRoot.Parent.t)
local validateFontInfo = require(UIBloxRoot.Style.Validator.validateFontInfo)
local validateColor = require(UIBloxRoot.Style.Validator.validateColor)
local GenericTextLabel = require(UIBloxRoot.GenericTextLabel.GenericTextLabel)

local ToastText = Roact.PureComponent:extend("ToastText")

local validateProps = t.interface({
	colorStyle = validateColor,
	fontStyle = validateFontInfo,
	Size = t.UDim2,
	Text = t.string,
})

ToastText.defaultProps = {
	TextXAlignment = Enum.TextXAlignment.Left,
	TextYAlignment = Enum.TextYAlignment.Center,
}

function ToastText:render()
	assert(validateProps(self.props))

	return Roact.createElement(GenericTextLabel, self.props)
end

return ToastText
