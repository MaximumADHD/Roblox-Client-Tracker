local LoadingRoot = script.Parent
local UIBloxRoot = LoadingRoot.Parent
local Roact = require(UIBloxRoot.Parent.Roact)
local TextureScroller = require(script.Parent.TextureScroller)
local withStyle = require(UIBloxRoot.Style.withStyle)
local t = require(UIBloxRoot.Parent.t)

local arePropsValid = t.strictInterface({
	-- The anchor point of the panel
	AnchorPoint = t.optional(t.Vector2),
	-- The layout order of the panel
	LayoutOrder = t.optional(t.integer),
	-- The loading image that will move across the panel
	Image = t.optional(t.string),
	-- The aspect ratio (width / height) of the moving image
	imageAspectRatio = t.optional(t.number),
	-- The scale of the moving image
	imageScale = t.optional(t.number),
	-- The image set data for slicing images correctly
	imageSetData = t.optional(t.table),
	-- The position point of the panel
	Position = t.optional(t.UDim2),
	-- The speed of the moving image
	shimmerSpeed = t.optional(t.number),
	-- The size point of the panel
	Size = t.UDim2,
})

local ShimmerPanel = Roact.PureComponent:extend("ShimmerPanel")

ShimmerPanel.defaultProps = {
	Image = "rbxasset://textures/ui/LuaApp/graphic/shimmer.png",
	imageAspectRatio = 219 / 250,
	imageScale = 2.5,
	imageSetData = {},
	shimmerSpeed = 4,
}

function ShimmerPanel:render()
	assert(arePropsValid(self.props))
	local anchorPoint = self.props.AnchorPoint
	local imageSetData = self.props.imageSetData
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

	local renderFunction = function(stylePalette)
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
			imageSetData = imageSetData,
			Position = position,
			Size = size,
		})
	end
	return withStyle(renderFunction)
end

return ShimmerPanel