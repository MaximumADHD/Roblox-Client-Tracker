--[[
	A round Box decoration with a border.

	Optional Props:
		Style Style: The style with which to render this component.
		StyleModifier StyleModifier: The StyleModifier index into Style.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.

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

local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext

local Typecheck = require(Framework.Util.Typecheck)

local RoundBox = Roact.PureComponent:extend("RoundBox")
Typecheck.wrap(RoundBox, script)

function RoundBox:render()
	local props = self.props
	local style = props.Stylizer
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
		ZIndex = zIndex,
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
		}, props[Roact.Children]),
	})
end

RoundBox = withContext({
	Stylizer = ContextServices.Stylizer,
})(RoundBox)

return RoundBox
