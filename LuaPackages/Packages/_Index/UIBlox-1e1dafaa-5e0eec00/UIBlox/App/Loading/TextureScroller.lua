local RunService = game:GetService("RunService")
local Loading = script.Parent
local App = Loading.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local ExternalEventConnection = require(UIBlox.Utility.ExternalEventConnection)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)

local validateProps = t.strictInterface({
	-- The anchor point of the panel
	AnchorPoint = t.optional(t.Vector2),
	-- The layout order of the panel
	LayoutOrder = t.optional(t.integer),
	-- The background color of the panel
	BackgroundColor3 = t.optional(t.Color3),
	-- The background transparency of the panel
	BackgroundTransparency = t.optional(t.number),
	-- The position of the panel
	Position = t.optional(t.UDim2),
	-- The image that will move across the panel
	Image = t.string,
	-- The tranparency of the moving image
	ImageTransparency = t.optional(t.number),
	-- The anchor point of the moving image
	imageAnchorPoint = t.optional(t.Vector2),
	-- The start position of the moving image
	imagePositionStart = t.optional(t.UDim2),
	-- The end position of the moving image
	imagePositionEnd = t.optional(t.UDim2),
	-- The take it takes for the image to move from the start positon
	-- to the end positions
	imageScrollCycleTime = t.optional(t.number),
	-- The size of the moving image
	imageSize = t.optional(t.UDim2),
	-- The size point of the panel
	Size = t.optional(t.UDim2),
})

local TextureScroller = Roact.PureComponent:extend("TextureScroller")

TextureScroller.defaultProps = {
	BackgroundTransparency = 1,
	imageAnchorPoint = Vector2.new(0, 0),
	imagePositionStart = UDim2.new(-1.5, 0, 0, 0),
	imagePositionEnd = UDim2.new(1.5, 0, 0, 0),
	imageScrollCycleTime = 1,
}

function TextureScroller:init()
	self.lerpValue = 0
	self.imageRef = Roact.createRef()

	self.renderSteppedCallback = function(dt)
		local imageScrollCycleTime = self.props.imageScrollCycleTime
		local imagePositionStart = self.props.imagePositionStart
		local imagePositionEnd = self.props.imagePositionEnd

		local lerpPerFrame = 0
		if imageScrollCycleTime ~= 0 then
			lerpPerFrame = (dt / imageScrollCycleTime)
		end
		self.lerpValue = (self.lerpValue + lerpPerFrame) % 1
		if self.imageRef.current then
			self.imageRef.current.Position = imagePositionStart:lerp(imagePositionEnd, self.lerpValue)
		end
	end
end

function TextureScroller:render()
	assert(validateProps(self.props))
	local anchorPoint = self.props.AnchorPoint
	local backgroundColor = self.props.BackgroundColor3
	local backgroundTransparency = self.props.BackgroundTransparency
	local image = self.props.Image
	local imageSize = self.props.imageSize
	local imageTransparency = self.props.ImageTransparency
	local imageAnchorPoint = self.props.imageAnchorPoint
	local imagePositionStart = self.props.imagePositionStart
	local layoutOrder = self.props.LayoutOrder
	local position = self.props.Position
	local size = self.props.Size

	return Roact.createElement("Frame", {
		AnchorPoint = anchorPoint,
		ClipsDescendants = true,
		BackgroundColor3 = backgroundColor,
		BackgroundTransparency = backgroundTransparency,
		BorderSizePixel = 0,
		LayoutOrder = layoutOrder,
		Position = position,
		Size = size,
	}, {
		TextureScrollerImage = Roact.createElement(ImageSetComponent.Label, {
			AnchorPoint = imageAnchorPoint,
			BackgroundTransparency = 1,
			Image = image,
			ImageTransparency = imageTransparency,
			Position = imagePositionStart,
			Size = imageSize,
			[Roact.Ref] = self.imageRef,
		}),
		renderStepped = Roact.createElement(ExternalEventConnection, {
			callback = self.renderSteppedCallback,
			event = RunService.renderStepped,
		}),
	})
end

return TextureScroller