local ToastRoot = script.Parent
local DialogRoot = ToastRoot.Parent
local AppRoot = DialogRoot.Parent
local UIBloxRoot = AppRoot.Parent
local Packages = UIBloxRoot.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local validateFontInfo = require(UIBloxRoot.Core.Style.Validator.validateFontInfo)
local validateColorInfo = require(UIBloxRoot.Core.Style.Validator.validateColorInfo)
local GenericTextLabel = require(UIBloxRoot.Core.Text.GenericTextLabel.GenericTextLabel)

local ToastText = Roact.PureComponent:extend("ToastText")

local validateProps = t.interface({
	colorStyle = validateColorInfo,
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
