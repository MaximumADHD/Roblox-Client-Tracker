--[[
	A round Box decoration with a border.

	Required Props:
		Theme Theme: A Theme ContextItem, which is provided via mapToProps.

	Optional Props:
		Style Style: The style with which to render this component.
		StyleModifier StyleModifier: The StyleModifier index into Style.

	Style Values:
		Color3 Color: The color tint of the image.
		Color3 BorderColor: The color tint of the border.
		number Transparency: The transparency of the image.
		number BorderTransparency: The transparency of the border.
		string BackgroundImage: The background image.
		string BorderImage: The border image.
		Rect SliceCenter: The slice center.
		number ZIndex: The render index of this component.
]]

local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.ContextServices)
local Typecheck = require(Framework.Util).Typecheck

local FFlagRoundBoxZIndexProp = game:DefineFastFlag("RoundBoxZIndexProp", false)

local RoundBox = Roact.PureComponent:extend("RoundBox")
Typecheck.wrap(RoundBox, script)

function RoundBox:render()
	local props = self.props
	local theme = props.Theme
	local style = theme:getStyle("Framework", self)

	local color = style.Color
	local borderColor = style.BorderColor
	local transparency = style.Transparency
	local borderTransparency = style.BorderTransparency
	local backgroundImage = style.BackgroundImage
	local borderImage = style.BorderImage
	local sliceCenter = style.SliceCenter
	local zIndex = style.ZIndex

	return Roact.createElement("ImageLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		ImageTransparency = transparency,
		ImageColor3 = color,
		BorderSizePixel = 0,
		Image = backgroundImage,
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = sliceCenter,
		ZIndex = FFlagRoundBoxZIndexProp and zIndex or nil
	}, {
		Border = Roact.createElement("ImageLabel", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			ImageTransparency = borderTransparency,
			ImageColor3 = borderColor,
			BorderSizePixel = 0,
			Image = borderImage,
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = sliceCenter,
		}, props[Roact.Children])
	})
end

ContextServices.mapToProps(RoundBox, {
	Theme = ContextServices.Theme,
})

return RoundBox
