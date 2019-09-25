local UIBloxRoot = script.Parent.Parent
local Roact = require(UIBloxRoot.Parent.Roact)
local Cryo = require(UIBloxRoot.Parent.Cryo)
local t = require(UIBloxRoot.Parent.t)
local ImageSetComponent = require(UIBloxRoot.ImageSet.ImageSetComponent)
local validateColor = require(UIBloxRoot.Style.Validator.validateColor)
local withStyle = require(UIBloxRoot.Style.withStyle)

local ToastIcon = Roact.PureComponent:extend("ToastIcon")

local validateProps = t.interface({
	colorStyle = t.optional(validateColor),
	Image = t.union(t.table, t.string),
	Size = t.UDim2,
})

ToastIcon.defaultProps = {
	BackgroundTransparency = 1,
}

function ToastIcon:render()
	assert(validateProps(self.props))

	return withStyle(function(style)
		local theme = style.Theme

		local colorStyle = self.props.colorStyle
		if colorStyle == nil then
			colorStyle = theme.IconEmphasis
		end

		local imageColor = colorStyle.Color
		local imageTransparency = colorStyle.Transparency

		local newProps = Cryo.Dictionary.join(self.props, {
			colorStyle = Cryo.None,
			ImageColor3 = imageColor,
			ImageTransparency = imageTransparency,
		})

		return Roact.createElement(ImageSetComponent.Label, newProps)
	end)
end

return ToastIcon