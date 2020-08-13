local RunService = game:GetService("RunService")
local Loading = script.Parent
local App = Loading.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local ExternalEventConnection = require(UIBlox.Utility.ExternalEventConnection)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)

local function floorVector2(vector2)
	return Vector2.new(math.floor(vector2.X), math.floor(vector2.Y))
end

local validateProps = t.strictInterface({
	-- The anchor point of the panel
	anchorPoint = t.optional(t.Vector2),
	-- The layout order of the panel
	layoutOrder = t.optional(t.integer),
	-- The background color of the panel
	backgroundColor3 = t.optional(t.Color3),
	-- The background transparency of the panel
	backgroundTransparency = t.optional(t.number),
	-- The position of the panel
	position = t.optional(t.UDim2),
	-- The corner radius of the image's rounded corners. Defaults to UDim(0, 0) for corners with no rounding.
	cornerRadius = t.optional(t.UDim),
	-- The image that will move across the panel
	image = t.string,
	-- The tranparency of the moving image
	imageTransparency = t.optional(t.number),
	-- The anchor point of the moving image rect
	imageAnchorPoint = t.optional(t.Vector2),
	-- The start position of the moving image rect
	imageRectOffsetStart = t.Vector2,
	-- The end position of the moving image rect
	imageRectOffsetEnd = t.Vector2,
	-- The take it takes for the image to move from the start positon
	-- to the end positions
	imageScrollCycleTime = t.optional(t.number),
	-- The size of the image rect that is projected onto the panel
	imageRectSize = t.Vector2,
	-- The size point of the panel
	size = t.optional(t.UDim2),
})

local TextureScroller = Roact.PureComponent:extend("TextureScroller")

TextureScroller.defaultProps = {
	backgroundTransparency = 1,
	cornerRadius = UDim.new(0, 0),
	imageAnchorPoint = Vector2.new(0, 0),
	imageScrollCycleTime = 1,
}

function TextureScroller:init()
	self.lerpValue = 0
	self.imageRef = Roact.createRef()

	self.renderSteppedCallback = function(dt)
		local imageScrollCycleTime = self.props.imageScrollCycleTime
		local imageRectOffsetStart = self.props.imageRectOffsetStart
		local imageRectOffsetEnd = self.props.imageRectOffsetEnd
		local imageRectSize = self.props.imageRectSize
		local imageAnchorPoint = self.props.imageAnchorPoint

		local anchoredImageOffsetStart = Vector2.new(
			imageRectOffsetStart.X - imageAnchorPoint.X * imageRectSize.X,
			imageRectOffsetStart.Y - imageAnchorPoint.Y * imageRectSize.Y)
		local anchoredImageOffsetEnd = Vector2.new(
			imageRectOffsetEnd.X - imageAnchorPoint.X * imageRectSize.X,
			imageRectOffsetEnd.Y - imageAnchorPoint.Y * imageRectSize.Y)

		local lerpPerFrame = 0
		if imageScrollCycleTime ~= 0 then
			lerpPerFrame = (dt / imageScrollCycleTime)
		end
		self.lerpValue = (self.lerpValue + lerpPerFrame) % 1
		if self.imageRef.current then
			self.imageRef.current.ImageRectOffset = floorVector2(
				anchoredImageOffsetStart:lerp(anchoredImageOffsetEnd, self.lerpValue))
		end
	end
end

function TextureScroller:render()
	assert(validateProps(self.props))
	local anchorPoint = self.props.anchorPoint
	local backgroundColor = self.props.backgroundColor3
	local backgroundTransparency = self.props.backgroundTransparency
	local cornerRadius = self.props.cornerRadius
	local image = self.props.image
	local imageRectSize = self.props.imageRectSize
	local imageTransparency = self.props.imageTransparency
	local layoutOrder = self.props.layoutOrder
	local position = self.props.position
	local size = self.props.size

	return Roact.createElement("Frame", {
		AnchorPoint = anchorPoint,
		BackgroundColor3 = backgroundColor,
		BackgroundTransparency = backgroundTransparency,
		BorderSizePixel = 0,
		LayoutOrder = layoutOrder,
		Position = position,
		Size = size,
	}, {
		TextureScrollerImage = Roact.createElement(ImageSetComponent.Label, {
			BackgroundTransparency = 1,
			Image = image,
			ImageTransparency = imageTransparency,
			Size = UDim2.new(1, 0, 1, 0),
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(0, 0, imageRectSize.X, imageRectSize.Y),
			[Roact.Ref] = self.imageRef,
			ImageRectSize = imageRectSize,
		}, {
			UICorner = cornerRadius ~= UDim.new(0, 0) and Roact.createElement("UICorner", {
				CornerRadius = cornerRadius,
			}) or nil,
		}),
		renderStepped = Roact.createElement(ExternalEventConnection, {
			callback = self.renderSteppedCallback,
			event = RunService.renderStepped,
		}),
		UICorner = cornerRadius ~= UDim.new(0, 0) and Roact.createElement("UICorner", {
			CornerRadius = cornerRadius,
		}) or nil,
	})
end

return TextureScroller