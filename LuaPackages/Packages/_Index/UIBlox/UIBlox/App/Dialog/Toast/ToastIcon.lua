--!nonstrict
local ToastRoot = script.Parent
local DialogRoot = ToastRoot.Parent
local AppRoot = DialogRoot.Parent
local UIBloxRoot = AppRoot.Parent
local Packages = UIBloxRoot.Parent

local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)
local t = require(Packages.t)

local ImageSetComponent = require(UIBloxRoot.Core.ImageSet.ImageSetComponent)
local validateColorInfo = require(UIBloxRoot.Core.Style.Validator.validateColorInfo)
local withStyle = require(UIBloxRoot.Core.Style.withStyle)

local ToastIcon = Roact.PureComponent:extend("ToastIcon")

ToastIcon.validateProps = t.interface({
	-- ImageSet compatible image info or image directory
	Image = t.union(t.table, t.string, t.callback),
	Size = t.UDim2,

	AnchorPoint = t.optional(t.Vector2),
	-- The color table from the style palette
	colorStyle = t.optional(validateColorInfo),
	LayoutOrder = t.optional(t.integer),
	Position = t.optional(t.UDim2),
})

ToastIcon.defaultProps = {
	BackgroundTransparency = 1,
}

function ToastIcon:render()
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
