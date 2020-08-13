local Loading = script.Parent
local App = Loading.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local withStyle = require(UIBlox.Core.Style.withStyle)
local TextureScroller = require(script.Parent.TextureScroller)

local validateProps = t.strictInterface({
	AnchorPoint = t.optional(t.Vector2),
	LayoutOrder = t.optional(t.integer),
	Position = t.optional(t.UDim2),
	Size = t.UDim2,

	-- The corner radius of the image's rounded corners. Defaults to UDim(0, 0) for corners with no rounding.
	cornerRadius = t.optional(t.UDim),

	-- The loading image that will move across the panel
	Image = t.optional(t.string),

	-- The pixel dimensions of the moving image
	imageDimensions = t.optional(t.Vector2),

	-- The scale of the moving image
	imageScale = t.optional(t.number),

	-- The speed of the moving image
	shimmerSpeed = t.optional(t.number),
})

local ShimmerPanel = Roact.PureComponent:extend("ShimmerPanel")

ShimmerPanel.defaultProps = {
	cornerRadius = UDim.new(0, 0),
	Image = "rbxasset://textures/ui/LuaApp/graphic/shimmer.png",
	imageDimensions = Vector2.new(219, 250),
	imageScale = 2.5,
	shimmerSpeed = 4,
}

function ShimmerPanel:render()
	assert(validateProps(self.props))

	local anchorPoint = self.props.AnchorPoint
	local layoutOrder = self.props.LayoutOrder
	local position = self.props.Position
	local cornerRadius = self.props.cornerRadius
	local shimmerImage = self.props.Image
	local shimmerImageDimensions = self.props.imageDimensions
	local imageScale = self.props.imageScale
	local shimmerSpeed = self.props.shimmerSpeed
	local size = self.props.Size

	local imageRectSize = shimmerImageDimensions / imageScale

	local repeatTime = 0
	if shimmerSpeed ~= 0 then
		repeatTime = (imageScale + 1) / shimmerSpeed
	end

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme

		return Roact.createElement(TextureScroller, {
			anchorPoint = anchorPoint,
			layoutOrder = layoutOrder,
			backgroundColor3 = theme.PlaceHolder.Color,
			backgroundTransparency = theme.PlaceHolder.Transparency,
			cornerRadius = cornerRadius,
			image = shimmerImage,
			imageRectSize = imageRectSize,
			imageAnchorPoint = Vector2.new(0, 0.5),
			imageTransparency = 0,
			imageRectOffsetStart = Vector2.new(shimmerImageDimensions.X, shimmerImageDimensions.Y / 2),
			imageRectOffsetEnd = Vector2.new(-imageRectSize.X, shimmerImageDimensions.Y / 2),
			imageScrollCycleTime = repeatTime,
			position = position,
			size = size,
		})
	end)
end

return ShimmerPanel