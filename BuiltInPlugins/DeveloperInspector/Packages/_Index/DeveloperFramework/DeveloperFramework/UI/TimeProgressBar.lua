--[[
	A progress bar which displays time elapsed, and total time to wait.

	Required Props:
		number TotalTime: The amount of time in seconds that it will take for this bar to load.

	Optional Props:
		number Width: The width of the bar plus 2 time indicators.
		number LayoutOrder: The layout order
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
]]

local RunService = game:GetService("RunService")

local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.ContextServices)
local withContext = ContextServices.withContext

local Pane = require(Framework.UI.Pane)
local TextLabel = require(Framework.UI.TextLabel)
local LoadingBar = require(Framework.UI.LoadingBar)

local Typecheck = require(Framework.Util).Typecheck

local TimeProgressBar = Roact.PureComponent:extend("TimeProgressBar")
Typecheck.wrap(TimeProgressBar, script)

TimeProgressBar.defaultProps = {
	Width = 220,
}

local function formatSecondsTimeString(s: number)
	return string.format("%02i:%02i", s/60%60, s%60)
end

function TimeProgressBar:init(initialProps)
	assert(initialProps.TotalTime, "TotalTime prop must be specified")
	assert(initialProps.TotalTime >= 0, "TotalTime must not be negative")

	self:setState({
		currentTime = 0,
	})

	self.isMounted = false

	self.disconnectUpdateConnection = function()
		if self.updateConnection then
			self.updateConnection:Disconnect()
			self.updateConnection = nil
		end
	end
end

function TimeProgressBar:didMount()
	self.isMounted = true

	self.startTime = tick()
	self.updateConnection = RunService.RenderStepped:Connect(function()
		if not self.isMounted then
			self.disconnectUpdateConnection()
			return
		end

		local props = self.props
		local currentTime = tick() - self.startTime
		if currentTime > props.TotalTime then
			currentTime = props.TotalTime
			self.disconnectUpdateConnection()
		end

		self:setState({
			currentTime = currentTime,
		})
	end)
end

function TimeProgressBar:willUnmount()
	self.disconnectUpdateConnection()
	self.isMounted = false
end

function TimeProgressBar:render()
	local props = self.props

	local style = props.Stylizer

	local progress = 0
	if props.TotalTime > 0 then
		progress = self.state.currentTime / props.TotalTime
	end

	return Roact.createElement(Pane, {
		Size = UDim2.new(0, props.Width, 0, style.HeightPx),
		AutomaticSize = Enum.AutomaticSize.X,
		LayoutOrder = props.LayoutOrder,
		Layout = Enum.FillDirection.Horizontal,
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		VerticalAlignment = Enum.VerticalAlignment.Center,
		Spacing = style.PaddingPx,
	}, {
		LeftTime = Roact.createElement(TextLabel, {
			Text = formatSecondsTimeString(self.state.currentTime),
			Size = UDim2.fromOffset(style.TextLabelWidthPx, style.HeightPx),
			TextXAlignment = Enum.TextXAlignment.Right,
			TextYAlignment = Enum.TextYAlignment.Top,
			LayoutOrder = 1,
		}),
		Bar = Roact.createElement(LoadingBar, {
			Size = UDim2.fromOffset(props.Width - 2 * style.TextLabelWidthPx, style.BarHeightPx),
			Progress = progress,
			LayoutOrder = 2,
		}),
		RightTime = Roact.createElement(TextLabel, {
			Text = formatSecondsTimeString(props.TotalTime),
			Size = UDim2.fromOffset(style.TextLabelWidthPx, style.HeightPx),
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
			LayoutOrder = 3,
		})
	})
end

TimeProgressBar = withContext({
	Stylizer = ContextServices.Stylizer,
})(TimeProgressBar)

return TimeProgressBar
