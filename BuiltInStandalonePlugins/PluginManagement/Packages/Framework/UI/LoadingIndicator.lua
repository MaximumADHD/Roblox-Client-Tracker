--[[
	Loading Indicator of 3 rectangles which cyclically increase and then decrease in height while changing color.

	Required Props:
		Theme Theme: A Theme ContextItem, which is provided via mapToProps.

	Optional Props:
		number LayoutOrder: The layout order of this component in a UILayout.
		UDim2 Position: The position of the component. Defaults to zero.
		UDim2 Size: The size of the component. Defaults to the size of the parent component.
		Style Style: The style with which to render this component.
		StyleModifier StyleModifier: The StyleModifier index into Style.
		number ZIndex: The render index of this component.

	Style Values:
		Color3 StartColor: The starting color of the blocks.
		Color3 EndColor: The color of the blocks as they are at their maximum height.
]]

local RunService = game:GetService("RunService")

local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.ContextServices)
local Typecheck = require(Framework.Util).Typecheck

local LoadingIndicator = Roact.PureComponent:extend("LoadingIndicator")
Typecheck.wrap(LoadingIndicator, script)

local BLOCK_COUNT = 3
local BETWEEN_BLOCK_PADDING_RATIO = 1.5
local MARGIN_RATIO = 0.25
local ANIMATION_SPEED = 5

local BLOCK_WIDTH = 1 / (BLOCK_COUNT +
	(BLOCK_COUNT * BETWEEN_BLOCK_PADDING_RATIO) - BETWEEN_BLOCK_PADDING_RATIO + (2 * MARGIN_RATIO))
local BLOCK_PADDING = BLOCK_WIDTH * BETWEEN_BLOCK_PADDING_RATIO

function LoadingIndicator:init()
	self.state = {
		time = math.pi / 2,
		sinTime = 1,
		animatingBlockIndex = 1,
	}
end

function LoadingIndicator:didMount()
	self.animationConnection = RunService.RenderStepped:connect(function(timeDelta)
		self:updateAnimation(timeDelta)
	end)
end

function LoadingIndicator:willUnmount()
	if self.animationConnection then
		self.animationConnection:Disconnect()
	end
end

--[[
	Uses math.sin(time) to smoothly interpolate between the start and end heights and colors.
]]
function LoadingIndicator:updateAnimation(timeDelta)

	self:setState(function(prevState, props)
		local sinTime = prevState.sinTime

		local newIndex = prevState.animatingBlockIndex
		local newAnimationTime = prevState.time + timeDelta
		local newSinTime = math.sin(newAnimationTime * ANIMATION_SPEED)

		-- If sine has changed sign, move to the next block
		-- Note we are explicitly including 0 as positive and not using math.sign to avoid
		-- an unlikely extra block transition if sinTime == 0
		if (sinTime >= 0 and newSinTime < 0) or (sinTime < 0 and newSinTime >= 0) then
			newIndex = newIndex % BLOCK_COUNT + 1
		end

		return {
			time = newAnimationTime,
			sinTime = newSinTime,
			animatingBlockIndex = newIndex,
		}
	end)
end

function LoadingIndicator:render()
	local props = self.props
	local state = self.state

	local position = props.Position
	local size = props.Size or UDim2.new(1, 0, 1, 0)
	local zIndex = props.ZIndex

	local theme = props.Theme
	local style = theme:getStyle("Framework", self)

	local startColor = style.StartColor
	local endColor = style.EndColor

	local children = {
		UIListLayout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(BLOCK_PADDING, 0),
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		}),
	}

	local sinTime = math.abs(state.sinTime)
	local animatingBlockIndex = state.animatingBlockIndex

	for i = 1, BLOCK_COUNT do
		local height = 0.6
		local color = startColor

		if i == animatingBlockIndex then
			height = height + ((1 - height) * sinTime)
			color = startColor:lerp(endColor, sinTime)
		end

		children["Frame" .. i] = Roact.createElement("Frame", {
			Size = UDim2.new(BLOCK_WIDTH, 0, height, 0),
			LayoutOrder = i,
			BorderSizePixel = 0,
			BackgroundColor3 = color,
		})
	end

	return Roact.createElement("Frame", {
		Position = position,
		Size = size,
		ZIndex = zIndex,
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
	}, children)
end

ContextServices.mapToProps(LoadingIndicator, {
	Theme = ContextServices.Theme,
})

return LoadingIndicator
