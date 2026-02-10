--!nonstrict
local Loading = script.Parent
local App = Loading.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Foundation = require(Packages.Foundation)
local Skeleton = Foundation.Skeleton
local getClosestRadius = require(Loading.getClosestRadius)

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local withStyle = require(UIBlox.Core.Style.withStyle)

local ShimmerPanel = Roact.PureComponent:extend("ShimmerPanel")

ShimmerPanel.validateProps = t.strictInterface({
	AnchorPoint = t.optional(t.Vector2),
	LayoutOrder = t.optional(t.integer),
	Position = t.optional(t.UDim2),
	-- The size of the shimmer panel
	Size = t.UDim2,

	-- The corner radius of the image, shimmer, and failed image's rounded corners
	cornerRadius = t.optional(t.UDim),

	-- **DEPRECATED** The image that will move across the panel
	Image = t.optional(t.string),

	-- **DEPRECATED** The pixel dimensions of the moving image
	imageDimensions = t.optional(t.Vector2),

	-- **DEPRECATED** The scale of the moving image
	imageScale = t.optional(t.number),

	-- **DEPRECATED** The speed of the moving image
	shimmerSpeed = t.optional(t.number),
})

ShimmerPanel.defaultProps = {
	cornerRadius = UDim.new(0, 0),
	Image = "rbxasset://textures/ui/LuaApp/graphic/shimmer.png",
	imageDimensions = Vector2.new(219, 250),
	imageScale = 2.5,
	shimmerSpeed = 4,
}

function ShimmerPanel:init()
	self.state = {
		lerpValue = 0,
	}
	self.frameRef = Roact.createRef()
	self.lerpValue = 0
end

function ShimmerPanel:render()
	local anchorPoint = self.props.AnchorPoint
	local layoutOrder = self.props.LayoutOrder
	local position = self.props.Position
	local cornerRadius = self.props.cornerRadius
	local size = self.props.Size

	return withStyle(function(stylePalette)
		local tokens = stylePalette.Tokens

		local radius = getClosestRadius(tokens.Semantic.Radius, cornerRadius)
		return Roact.createElement(Skeleton, {
			radius = radius,
			AnchorPoint = anchorPoint,
			Position = position,
			Size = size,
			LayoutOrder = layoutOrder,
		})
	end)
end

return ShimmerPanel
