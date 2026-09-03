--[[
	A component that animates a gradient from left to right. Multiple shimmers
	can be combined to create a placeholder for loading content.

	Optional Props:
		Vector2 AnchorPoint: The anchor point of the component.
		Color3 BackgroundColor: The background color of the component.
		number LayoutOrder: The LayoutOrder of the component
		UDim2 Position: The position of the component.
		UDim2 Size: The size of the component.
		Stylizer Stylizer: The Stylizer context item

	Style Values:
		Color3 BackgroundColor: The background color of the component.
		Color3 ColorStart: The gradient start color.
		Color3 ColorMiddle: The gradient mid-point color.
		Color3 ColorEnd: The gradient end color.
		Vector2 OffsetStart: The gradient starting offset.
		Vector2 OffsetEnd: The gradient ending offset.
]]
local RunService = game:GetService("RunService")

local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext

local Typecheck = require(Framework.Util.Typecheck)

local UI = Framework.UI
local Pane = require(UI.Components.Pane)
local prioritize = require(Framework.Util.prioritize)

local Shimmer = Roact.PureComponent:extend("Shimmer")
Typecheck.wrap(Shimmer, script)

function Shimmer:init()
	self.gradientRef = Roact.createRef()
end

function Shimmer:didMount()
	local props = self.props
	local style = props.Stylizer

	local startTime = os.clock()

	self.animateConnection = RunService.RenderStepped:Connect(function()
		local gradient = self.gradientRef.current
		if not gradient then
			return
		end

		local elapsedTime = os.clock() - startTime
		local offset = (elapsedTime / style.Time) % 1
		gradient.Color = self:_getGradientColor(offset)
	end)
end

function Shimmer:willUnmount()
	if self.animateConnection then
		self.animateConnection:Disconnect()
	end
end

function Shimmer:_getGradientColor(percentThroughAnimation: number): ColorSequence
	local style = self.props.Stylizer

	local function getColor(percentColor: number): Color3
		percentColor = math.clamp(percentColor, 0, 1)
		local endColor = style.ColorStart:Lerp(style.ColorEnd, style.ColorEndTintPercent)
		return style.ColorStart:Lerp(endColor, percentColor)
	end

	local frames = {}

	local function insertKeyFrameForTime(offset, forceCreateAsClamped: boolean?)
		local timeStamp = percentThroughAnimation + offset
		if timeStamp < 0 or timeStamp > 1 then
			if forceCreateAsClamped then
				timeStamp = math.clamp(timeStamp, 0, 1)
			else
				return
			end
		end
		local percentColor = offset % 1

		table.insert(frames, ColorSequenceKeypoint.new(timeStamp, getColor(percentColor)))
	end

	insertKeyFrameForTime(-1, true)
	insertKeyFrameForTime(-0.5)
	insertKeyFrameForTime(0)
	insertKeyFrameForTime(0.5)
	insertKeyFrameForTime(1, true)

	return ColorSequence.new(frames)
end

function Shimmer:render()
	local props = self.props
	local style = props.Stylizer

	local backgroundColor = prioritize(props.BackgroundColor, style.BackgroundColor)
	local cornerRadius = prioritize(props.CornerRadius, style.CornerRadius)
	if typeof(cornerRadius) == "number" then
		cornerRadius = UDim.new(0, cornerRadius)
	end
	local size = props.Size or UDim2.fromScale(1, 1)

	return Roact.createElement(Pane, {
		AnchorPoint = props.AnchorPoint,
		BackgroundColor = backgroundColor,
		LayoutOrder = props.LayoutOrder,
		Position = props.Position,
		Size = size,
	}, {
		UIGradient = Roact.createElement("UIGradient", {
			Color = self:_getGradientColor(0),
			Rotation = style.Rotation,
			[Roact.Ref] = self.gradientRef,
		}),
		UICorner = if cornerRadius
			then Roact.createElement("UICorner", {
				CornerRadius = cornerRadius,
			})
			else nil,
	}, props[Roact.Children])
end

Shimmer = withContext({
	Stylizer = ContextServices.Stylizer,
})(Shimmer)

return Shimmer
