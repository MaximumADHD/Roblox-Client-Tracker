local RunService = game:GetService("RunService")
local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local UIBlox = InGameMenuDependencies.UIBlox

local InGameMenu = script.Parent.Parent.Parent

local Assets = require(InGameMenu.Resources.Assets)

local ImageSetLabel = UIBlox.Core.ImageSet.Label

local BORDER_SIZE = 2
local FILL_RING_SIZE = 4
local EMPTY_COLOR = Color3.fromRGB(98, 98, 99)
local FILL_COLOR = Color3.fromRGB(255, 255, 255)
local FULL_COLOR = Color3.fromRGB(196, 0, 1)
local FILL_RING_MIN_SIZE = 16

local FPS = 30

local FillCircle = Roact.PureComponent:extend("FillCircle")

FillCircle.validateProps = t.strictInterface({
	Position = t.UDim2,
	AnchorPoint = t.Vector2,
	fillFraction = t.number,
	largerCircleFraction = t.number, --Fraction at which the circle should become larger
	popCircleFraction = t.number, --Fraction at which the circle should have a pop animation
	shakeCircleFraction = t.number, --Fraction at which the circle should have a shake animation
	BackgroundColor = t.Color3,
})

local function getFillRingZIndex(fillFraction)
	if fillFraction > 0.75 then
		return 8
	elseif fillFraction > 0.5 then
		return 6
	elseif fillFraction > 0.25 then
		return 4
	elseif fillFraction > 0 then
		return 2
	end
	return 0
end

local function linearTween(dTime, startFrame, endFrame)
	local range = (endFrame - startFrame)/FPS
	return (dTime - (startFrame/FPS)) / range
end

local function isBetweenFrames(dTime, startFrame, endFrame)
	return dTime >= (startFrame/FPS) and dTime <= (endFrame/FPS)
end

local function largerCircleAnimation(timeElapsed, updateBindings, reverse, stopCallback)
	--[[
		- frame 0 -> 16x16
		- frame 5 -> 22x22
		- frame 8 -> 20x20
	]]
	if reverse then
		timeElapsed = 8/FPS - timeElapsed
	end
	if isBetweenFrames(timeElapsed, 0, 5) then
		local scaledElapsed = linearTween(timeElapsed, 0, 5)
		local ringSize = 16 + (6 * scaledElapsed)
		updateBindings.size(UDim2.new(0, ringSize, 0, ringSize))
	elseif isBetweenFrames(timeElapsed, 5, 8) then
		local scaledElapsed = linearTween(timeElapsed, 5, 8)
		local ringSize = 22 - (2 * scaledElapsed)
		updateBindings.size(UDim2.new(0, ringSize, 0, ringSize))
	elseif timeElapsed < 0 then
		--Complete reversed animation
		updateBindings.size(UDim2.new(0, FILL_RING_MIN_SIZE, 0, FILL_RING_MIN_SIZE))
		stopCallback()
	else
		--Complete standard animation
		updateBindings.size(UDim2.new(0, 20, 0, 20))
		stopCallback()
	end
end

local function popCircleAnimation(timeElapsed, updateBindings, reverse, stopCallback)
	--[[
		- frame 0 -> 20x20
		- frame 3 -> 24x24
		- frame 6 -> 20x20
	]]
	if isBetweenFrames(timeElapsed, 0, 3) then
		local scaledElapsed = linearTween(timeElapsed, 0, 3)
		local ringSize = 20 + (4 * scaledElapsed)
		updateBindings.size(UDim2.new(0, ringSize, 0, ringSize))
	elseif isBetweenFrames(timeElapsed, 3, 6) then
		local scaledElapsed = linearTween(timeElapsed, 3, 6)
		local ringSize = 24 - (4 * scaledElapsed)
		updateBindings.size(UDim2.new(0, ringSize, 0, ringSize))
	else
		--Complete animation
		updateBindings.size(UDim2.new(0, 20, 0, 20))
		stopCallback()
	end
end

local function shakeCircleAnimation(timeElapsed, updateBindings, reverse, stopCallback)
	--[[
		- frame 0 -> center
		- frame 3 -> left 4 pixels
		- frame 6 -> right 8 pixels
		- frame 8 -> left 8 pixels
		- frame 10 -> right 8 pixels
		- frame 12 -> left 8 pixels
		- frame 14 -> center
	]]
	if isBetweenFrames(timeElapsed, 0, 3) then
		local scaledElapsed = linearTween(timeElapsed, 0, 3)
		updateBindings.positionOffset(UDim2.new(0, -4 * scaledElapsed, 0, 0))
	elseif isBetweenFrames(timeElapsed, 3, 6) then
		local scaledElapsed = linearTween(timeElapsed, 3, 6)
		updateBindings.positionOffset(UDim2.new(0, -4 + 12 * scaledElapsed, 0, 0))
	elseif isBetweenFrames(timeElapsed, 6, 8) then
		local scaledElapsed = linearTween(timeElapsed, 6, 8)
		updateBindings.positionOffset(UDim2.new(0, 8 - 16 * scaledElapsed, 0, 0))
	elseif isBetweenFrames(timeElapsed, 8, 10) then
		local scaledElapsed = linearTween(timeElapsed, 8, 10)
		updateBindings.positionOffset(UDim2.new(0, -8 + 16 * scaledElapsed, 0, 0))
	elseif isBetweenFrames(timeElapsed, 10, 12) then
		local scaledElapsed = linearTween(timeElapsed, 10, 12)
		updateBindings.positionOffset(UDim2.new(0, 8 - 16 * scaledElapsed, 0, 0))
	elseif isBetweenFrames(timeElapsed, 12, 14) then
		local scaledElapsed = linearTween(timeElapsed, 12, 14)
		updateBindings.positionOffset(UDim2.new(0, -8 + 8 * scaledElapsed, 0, 0))
	else
		--Complete animation
		updateBindings.positionOffset(UDim2.new(0, 0, 0, 0))
		stopCallback()
	end
end

function FillCircle:init()
	self.sizeBinding, self.sizeBindingUpdate = Roact.createBinding(
		UDim2.new(0, FILL_RING_MIN_SIZE, 0, FILL_RING_MIN_SIZE)
	)
	self.largerSizeBinding = self.sizeBinding:map(function(oldValue)
		return oldValue + UDim2.new(0, 2, 0, 2)
	end)
	self.positionOffsetBinding, self.positionOffsetBindingUpdate = Roact.createBinding(
		UDim2.new(0, 0, 0, 0)
	)

	self.updateBindings = {
		size = self.sizeBindingUpdate,
		positionOffset = self.positionOffsetBindingUpdate,
	}

	self.animationStartTime = nil
	self.animationFunction = nil
	self.reverseAnimation = false
	self.renderSteppedConnection = nil
end

function FillCircle:render()
	local props = self.props

	local fillColor = props.fillFraction >= 1 and FULL_COLOR or FILL_COLOR

	return Roact.createElement("Frame", {
		Size = self.sizeBinding,
		Position = props.Position,
		AnchorPoint = props.AnchorPoint,
		BackgroundTransparency = 1,
	}, {
		PositionOffsetFrame = Roact.createElement("Frame", {
			Position = self.positionOffsetBinding,
			Size = UDim2.new(1, 0, 1, 0),
			BorderSizePixel = 0,
			BackgroundColor3 = EMPTY_COLOR,
		}, {
			OuterRing = Roact.createElement(ImageSetLabel, {
				Image = Assets.Images.CircleCutout,
				Size = UDim2.new(1, 0, 1, 0),
				ImageColor3 = props.BackgroundColor,
				BackgroundTransparency = 1,
				ZIndex = 10,
			}),

			InnerRing = Roact.createElement(ImageSetLabel, {
				Image = Assets.Images.Circle,
				Size = UDim2.new(1, -FILL_RING_SIZE, 1, -FILL_RING_SIZE),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				ImageColor3 = props.BackgroundColor,
				BackgroundTransparency = 1,
				ZIndex = 10,
			}),

			FillRingRotationFrame = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(0, 0, 0, 0),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				Rotation = props.fillFraction * 360,
				ZIndex = getFillRingZIndex(props.fillFraction),
			}, {
				FillRing = Roact.createElement(ImageSetLabel, {
					Image = Assets.Images.QuarterCircle,
					Size = self.largerSizeBinding,
					AnchorPoint = Vector2.new(0.5, 0.5),
					ImageColor3 = fillColor,
					BackgroundTransparency = 1,
				}),
			}),

			EdgeBlockers = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				ZIndex = 10,
			}, {
				Top = Roact.createElement("Frame", {
					AnchorPoint = Vector2.new(0.5, 1),
					Position = UDim2.new(0.5, 0, 0, 0),
					Size = UDim2.new(1, BORDER_SIZE * 2, 0, BORDER_SIZE),
					BackgroundColor3 = props.BackgroundColor,
					BorderSizePixel = 0,
				}),

				Right = Roact.createElement("Frame", {
					AnchorPoint = Vector2.new(0, 0.5),
					Position = UDim2.new(1, 0, 0.5, 0),
					Size = UDim2.new(0, BORDER_SIZE, 1, BORDER_SIZE * 2),
					BackgroundColor3 = props.BackgroundColor,
					BorderSizePixel = 0,
				}),

				Bottom = Roact.createElement("Frame", {
					AnchorPoint = Vector2.new(0.5, 0),
					Position = UDim2.new(0.5, 0, 1, 0),
					Size = UDim2.new(1, BORDER_SIZE * 2, 0, BORDER_SIZE),
					BackgroundColor3 = props.BackgroundColor,
					BorderSizePixel = 0,
				}),

				Left = Roact.createElement("Frame", {
					AnchorPoint = Vector2.new(1, 0.5),
					Position = UDim2.new(0, 0, 0.5, 0),
					Size = UDim2.new(0, BORDER_SIZE, 1, BORDER_SIZE * 2),
					BackgroundColor3 = props.BackgroundColor,
					BorderSizePixel = 0,
				}),
			}),

			TopLeftFill = Roact.createElement("Frame", {
				Size = UDim2.new(0.5, 0, 0.5, 0),
				BackgroundColor3 = props.fillFraction >= 1 and fillColor or EMPTY_COLOR,
				BorderSizePixel = 0,
				ZIndex = props.fillFraction >= 1 and 9 or 7,
			}),

			BottomLeftFill = Roact.createElement("Frame", {
				Size = UDim2.new(0.5, 0, 0.5, 0),
				Position = UDim2.new(0, 0, 0.5, 0),
				BackgroundColor3 = props.fillFraction >= 0.75 and fillColor or EMPTY_COLOR,
				BorderSizePixel = 0,
				ZIndex = props.fillFraction >= 0.75 and 9 or 5,
			}),

			BottomRightFill = Roact.createElement("Frame", {
				Size = UDim2.new(0.5, 0, 0.5, 0),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				BackgroundColor3 = props.fillFraction >= 0.5 and fillColor or EMPTY_COLOR,
				BorderSizePixel = 0,
				ZIndex = props.fillFraction >= 0.5 and 9 or 3,
			}),

			TopRightFill = Roact.createElement("Frame", {
				Size = UDim2.new(0.5, 0, 0.5, 0),
				Position = UDim2.new(0.5, 0, 0, 0),
				BackgroundColor3 = props.fillFraction >= 0.25 and fillColor or EMPTY_COLOR,
				BorderSizePixel = 0,
				ZIndex = props.fillFraction >= 0.25 and 9 or 1,
			}),
		}),
	})
end

function FillCircle:didUpdate(prevProps, prevState)
	local oldLargerCircle = prevProps.fillFraction >= prevProps.largerCircleFraction
	local newLargerCircle = self.props.fillFraction >= self.props.largerCircleFraction
	if oldLargerCircle ~= newLargerCircle then
		self:playAnimation(largerCircleAnimation, not newLargerCircle)
	end

	local oldPopCircle = prevProps.fillFraction >= prevProps.popCircleFraction
	local newPopCircle = self.props.fillFraction >= self.props.popCircleFraction
	if newPopCircle and not oldPopCircle then
		self:playAnimation(popCircleAnimation, false)
	end

	local oldShakeCircle = prevProps.fillFraction >= prevProps.shakeCircleFraction
	local newShakeCircle = self.props.fillFraction >= self.props.shakeCircleFraction
	if newShakeCircle and not oldShakeCircle then
		self:playAnimation(shakeCircleAnimation, false)
	end
end

function FillCircle:playAnimation(animFunc, reverse)
	if self.animationFunction then
		--Complete current animation
		self.animationFunction(100, self.updateBindings, self.reverseAnimation, function() end)
	end
	self.animationStartTime = tick()
	self.animationFunction = animFunc
	self.reverseAnimation = reverse
	if not self.renderSteppedConnection then
		self.renderSteppedConnection = RunService.RenderStepped:Connect(function()
			self.animationFunction(tick() - self.animationStartTime, self.updateBindings, self.reverseAnimation, function()
				self:stopAnimation()
			end)
		end)
	end
end

function FillCircle:stopAnimation()
	if self.renderSteppedConnection then
		self.renderSteppedConnection:Disconnect()
		self.renderSteppedConnection = nil
	end
end

function FillCircle:willUnmount()
	self:stopAnimation()
end

return FillCircle