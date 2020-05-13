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

	-- The loading image that will move across the panel
	Image = t.optional(t.string),

	-- The aspect ratio (width / height) of the moving image
	imageAspectRatio = t.optional(t.number),

	-- The scale of the moving image
	imageScale = t.optional(t.number),

	-- The speed of the moving image
	shimmerSpeed = t.optional(t.number),
})

local ShimmerPanel = Roact.PureComponent:extend("ShimmerPanel")

ShimmerPanel.defaultProps = {
	Image = "rbxasset://textures/ui/LuaApp/graphic/shimmer.png",
	imageAspectRatio = 219 / 250,
	imageScale = 2.5,
	shimmerSpeed = 4,
}

function ShimmerPanel:render()
	assert(validateProps(self.props))

	local anchorPoint = self.props.AnchorPoint
	local layoutOrder = self.props.LayoutOrder
	local position = self.props.Position
	local shimmerImage = self.props.Image
	local shimmerImageRatio = self.props.imageAspectRatio
	local shimmerScale = self.props.imageScale
	local shimmerSpeed = self.props.shimmerSpeed
	local size = self.props.Size

	local imageSize = UDim2.new(shimmerImageRatio * shimmerScale, 0, shimmerScale, 0)

	local repeatTime = 0
	if shimmerSpeed ~= 0 then
		repeatTime = (shimmerScale + 1) / shimmerSpeed
	end

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme

		return Roact.createElement(TextureScroller, {
			AnchorPoint = anchorPoint,
			LayoutOrder = layoutOrder,
			BackgroundColor3 = theme.PlaceHolder.Color,
			BackgroundTransparency = theme.PlaceHolder.Transparency,
			Image = shimmerImage,
			imageSize = imageSize,
			ImageTransparency = 0,
			imageAnchorPoint = Vector2.new(0, 0.5),
			imagePositionStart = UDim2.new(-shimmerScale, 0, 0.5, 0),
			imagePositionEnd = UDim2.new(1, 0, 0.5, 0),
			imageScrollCycleTime = repeatTime,
			Position = position,
			Size = size,
		})
	end)
end

return ShimmerPanel