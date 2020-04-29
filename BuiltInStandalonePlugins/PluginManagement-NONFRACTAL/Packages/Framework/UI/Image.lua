--[[
	A Decoration image.

	Required Props:
		Theme Theme: A Theme ContextItem, which is provided via mapToProps.

	Optional Props:
		Style Style: The style with which to render this component.
		StyleModifier StyleModifier: The StyleModifier index into Style.

	Style Values:
		Vector2 AnchorPoint: The anchor point of the image.
		Color3 Color: The color tint of the image.
		UDim2 Size: The size of the image.
		Vector2 Position: The position of the image.
		number Transparency: The transparency of the image.
		string Image: The image asset itself.
		Enum.ScaleType ScaleType: The SaleType of the image (Fit, Crop, etc).
		Rect SliceCenter: The SliceCenter rect of the image, if it is ScaleType Slice.
		UDim2 Size: size of the image
		UDim2 Position: position of the image
		Vector2 AnchorPoint: anchor point of the object
		Vector2 ImageRectSize: partial pixel size of the image
		Vector2 ImageRectOffset: pixel offset for rendering part of image
]]

local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.ContextServices)
local Typecheck = require(Framework.Util).Typecheck

local Image = Roact.PureComponent:extend("Image")
Typecheck.wrap(Image, script)

function Image:render()
	local props = self.props
	local theme = props.Theme
	local style = theme:getStyle("Framework", self)

	local color = style.Color
	local transparency = style.Transparency
	local image = style.Image
	local imageRectSize = style.ImageRectSize
	local imageRectOffset = style.ImageRectOffset
	local scaleType = style.ScaleType
	local sliceCenter = style.SliceCenter
	local anchorPoint = style.AnchorPoint
	local size = style.Size or UDim2.new(1, 0, 1, 0)
	local position = style.Position

	return Roact.createElement("ImageLabel", {
		AnchorPoint = anchorPoint,
		Size = size,
		BackgroundTransparency = 1,
		ImageTransparency = transparency,
		ImageColor3 = color,
		BorderSizePixel = 0,
		Image = image,
		ImageRectSize = imageRectSize,
		ImageRectOffset = imageRectOffset,
		Position = position,
		ScaleType = scaleType,
		SliceCenter = sliceCenter,
	}, props[Roact.Children])
end

ContextServices.mapToProps(Image, {
	Theme = ContextServices.Theme,
})

return Image
