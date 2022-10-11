--[[
	Flashing Dot Indicator of which fades in transparency.

	Optional Props:
		Vector2 AnchorPoint: an offset for positioning
		number LayoutOrder: The layout order of this component in a UILayout.
		UDim2 Position: The position of the component. Defaults to zero.
		UDim2 Size: The size of the component. Defaults to the size of the parent component.
		Style Style: The style with which to render this component.
		StyleModifier StyleModifier: The StyleModifier index into Style.
		number ZIndex: The render index of this component.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
]]

local RunService = game:GetService("RunService")
local Plugin = script.Parent.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Typecheck = Framework.Util.Typecheck

local FlashingDot = Roact.PureComponent:extend("FlashingDot")
Typecheck.wrap(FlashingDot, script)

local DOT_COUNT = 1
local BETWEEN_DOT_PADDING_RATIO = 1.5
local MARGIN_RATIO = 0.25
local ANIMATION_SPEED = 5

local DOT_WIDTH = 1
	/ (DOT_COUNT + (DOT_COUNT * BETWEEN_DOT_PADDING_RATIO) - BETWEEN_DOT_PADDING_RATIO + (2 * MARGIN_RATIO))
local DOT_PADDING = DOT_WIDTH * BETWEEN_DOT_PADDING_RATIO

function FlashingDot:init()
	self.state = {
		time = math.pi / 2,
		sinTime = 1,
		animatingDotIndex = 1,
	}
end

function FlashingDot:didMount()
	self.animationConnection = RunService.RenderStepped:connect(function(timeDelta)
		self:updateAnimation(timeDelta)
	end)
end

function FlashingDot:willUnmount()
	if self.animationConnection then
		self.animationConnection:Disconnect()
	end
end

--[[
	Uses math.sin(time) to smoothly interpolate between the start and end colors.
]]
function FlashingDot:updateAnimation(timeDelta)
	self:setState(function(prevState, props)
		local sinTime = prevState.sinTime

		local newIndex = prevState.animatingDotIndex
		local newAnimationTime = prevState.time + timeDelta
		local newSinTime = math.sin(newAnimationTime * ANIMATION_SPEED)

		-- If sine has changed sign, move to the next dot
		-- Note we are explicitly including 0 as positive and not using math.sign to avoid
		-- an unlikely extra dot transition if sinTime == 0
		if (sinTime >= 0 and newSinTime < 0) or (sinTime < 0 and newSinTime >= 0) then
			newIndex = newIndex % DOT_COUNT + 1
		end

		return {
			time = newAnimationTime,
			sinTime = newSinTime,
			animatingDotIndex = newIndex,
		}
	end)
end

function lerpNum(a, b, t)
	return a + (b - a) * t
end

function FlashingDot:render()
	local props = self.props
	local state = self.state

	local anchorPoint = props.AnchorPoint
	local position = props.Position
	local zIndex = props.ZIndex
	local layoutOrder = props.LayoutOrder

	local style = props.Stylizer
	local styleSize = style.Size
	local size = props.Size or styleSize
	local paddingLeft = props.PaddingLeft or 0

	local baseColor = Color3.new(1, 1, 1)
	local startTransparency = 1
	local endTransparency = 0

	local children = {
		UIListLayout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(DOT_PADDING, 0),
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		}),
	}

	local sinTime = math.abs(state.sinTime)
	local animatingDotIndex = state.animatingDotIndex

	for i = 1, DOT_COUNT do
		local transparency = 0.5

		if i == animatingDotIndex then
			transparency = lerpNum(0.5, 0, sinTime)
		end

		children["Frame" .. i] = Roact.createElement("Frame", {
			Size = UDim2.new(DOT_WIDTH, paddingLeft, DOT_WIDTH, 0),
			LayoutOrder = i,
			BorderSizePixel = 0,
			BackgroundColor3 = baseColor,
			BackgroundTransparency = 1,
		}, {
			Image = Roact.createElement("ImageLabel", {
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundTransparency = 1,
				Size = UDim2.new(0, 8, 0, 8),
				Position = UDim2.new(0, paddingLeft, 0.5, 0),
				Image = "rbxasset://textures/AnimationEditor/FaceCaptureUI/FlashingDot.png",
				ImageTransparency = transparency,
				LayoutOrder = 2,
			}),
		})
	end

	return Roact.createElement("Frame", {
		AnchorPoint = anchorPoint,
		Position = position,
		Size = size,
		ZIndex = zIndex,
		LayoutOrder = layoutOrder,
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
	}, children)
end

FlashingDot = withContext({
	Stylizer = ContextServices.Stylizer,
})(FlashingDot)

return FlashingDot
