--!nonstrict
local RunService = game:GetService("RunService")
local Loading = script.Parent
local App = Loading.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local ReactUtils = require(Packages.ReactUtils)
local EventConnection = ReactUtils.EventConnection

local withStyle = require(UIBlox.Core.Style.withStyle)
local TextureScroller = require(script.Parent.TextureScroller)
local lerp = require(Packages.UIBlox.Utility.lerp)

local PULSATE_TRANSPARENCY_DELTA = 0.1
local PULSATE_ANIM_TIME = 2.5

local ShimmerPanel = Roact.PureComponent:extend("ShimmerPanel")

ShimmerPanel.validateProps = t.strictInterface({
	AnchorPoint = t.optional(t.Vector2),
	LayoutOrder = t.optional(t.integer),
	Position = t.optional(t.UDim2),
	-- The size of the shimmer panel
	Size = t.UDim2,

	-- The corner radius of the image, shimmer, and failed image's rounded corners
	cornerRadius = t.optional(t.UDim),

	-- The image that will move across the panel
	Image = t.optional(t.string),

	-- The pixel dimensions of the moving image, if provided
	imageDimensions = t.optional(t.Vector2),

	-- The scale of the moving image
	imageScale = t.optional(t.number),

	-- The speed of the moving image
	shimmerSpeed = t.optional(t.number),
})

ShimmerPanel.defaultProps = {
	cornerRadius = UDim.new(0, 0),
	Image = "rbxasset://textures/ui/LuaApp/graphic/shimmer.png",
	imageDimensions = Vector2.new(219, 250),
	imageScale = 2.5,
	shimmerSpeed = 4,
}

--[[ 
	lerpValue increases linearly from 0 to PULSATE_ANIM_TIME (2.5) sec
	We then make the value go from 0 to 1 and then back to 0 so the animation fades in and then out
 	And then we use a easeInOutCubic curve on the value to make the animation appear smoother 
	easeInOutCubic curve is from https://gizma.com/easing/#easeInOutCubic
]]
local function lerpValueToAnimCurve(lerpValue: number)
	lerpValue = math.abs(lerpValue - 1)
	if lerpValue > 1 then
		return 1
	elseif lerpValue < 0.5 then
		return 4 * math.pow(lerpValue, 3)
	else
		return 1 - math.pow(-2 * lerpValue + 2, 3) / 2
	end
end

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
		local settings = stylePalette.Settings

		local renderSteppedCallback = function(dt)
			local backgroundOnHover = theme.BackgroundOnHover
			local newLerpValue = self.lerpValue + dt

			if newLerpValue > PULSATE_ANIM_TIME then
				newLerpValue = 0
			end

			self.lerpValue = newLerpValue
			if self.frameRef.current then
				local anim = lerpValueToAnimCurve(self.lerpValue)
				self.frameRef.current.BackgroundColor3 = backgroundOnHover.Color:Lerp(backgroundOnHover.Color, anim)
				self.frameRef.current.BackgroundTransparency = lerp(
					backgroundOnHover.Transparency,
					backgroundOnHover.Transparency - PULSATE_TRANSPARENCY_DELTA,
					anim
				)
			end
		end

		if settings.ReducedMotion then
			return Roact.createElement("Frame", {
				AnchorPoint = anchorPoint,
				LayoutOrder = layoutOrder,
				BorderSizePixel = 0,
				Position = position,
				Size = size,
				[Roact.Ref] = self.frameRef,
			}, {
				UICorner = cornerRadius ~= UDim.new(0, 0) and Roact.createElement("UICorner", {
					CornerRadius = cornerRadius,
				}) or nil,
				renderStepped = Roact.createElement(EventConnection, {
					callback = renderSteppedCallback,
					event = RunService.renderStepped,
				}),
			})
		end

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
