--[[
	A progress bar which displays time elapsed, and total time to wait.

	Required Props:
		number TotalTime: The amount of time in seconds that it will take for this bar to load.

	Optional Props:
		number LayoutOrder: The layout order
		UDim2 Size: The size of the component.
		number StartTime: The start time in seconds. If omitted start this will be set
			when the component is mounted.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		any Width: The width of the component. Can be a number or UDim. If both Size and Width
			are specified, Width will override the X component of Size.
		boolean CanGoOverTime: Set if the progress bar can go over the total time.
]]

local RunService = game:GetService("RunService")

local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext

local Pane = require(Framework.UI.Components.Pane)
local TextLabel = require(Framework.UI.Components.TextLabel)
local LoadingBar = require(Framework.UI.Components.LoadingBar)

local Typecheck = require(Framework.Util).Typecheck
local getSizeFromPropsAndStyle = require(Framework.Util.getSizeFromPropsAndStyle)

local TimeProgressBar = Roact.PureComponent:extend("TimeProgressBar")
Typecheck.wrap(TimeProgressBar, script)

local function formatSecondsTimeString(s: number)
	return string.format("%02i:%02i", s / 60 % 60, s % 60)
end

function TimeProgressBar:init(initialProps)
	assert(initialProps.TotalTime, "TotalTime prop must be specified")
	assert(initialProps.TotalTime >= 0, "TotalTime must not be negative")

	self:setState({
		currentTime = 0,
	})

	self.isMounted = false
	self.overTime = false

	self.disconnectUpdateConnection = function()
		if self.updateConnection then
			self.updateConnection:Disconnect()
			self.updateConnection = nil
		end
	end
end

function TimeProgressBar:didMount()
	self.isMounted = true

	if self.props.StartTime ~= nil then
		self.startTime = self.props.StartTime
	else
		self.startTime = tick()
	end

	self.updateConnection = RunService.RenderStepped:Connect(function()
		if not self.isMounted then
			self.disconnectUpdateConnection()
			return
		end

		local props = self.props
		local currentTime = tick() - self.startTime
		if currentTime > props.TotalTime then
			if self.props.CanGoOverTime then
				self.overTime = true
			else
				currentTime = props.TotalTime
				self.disconnectUpdateConnection()
			end
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
	local size = getSizeFromPropsAndStyle(props, style)
	local labelSize = UDim2.fromOffset(style.LabelWidth, 0)

	return Roact.createElement(Pane, {
		LayoutOrder = props.LayoutOrder,
		Layout = Enum.FillDirection.Horizontal,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		Size = size,
		Spacing = style.Spacing,
	}, {
		CurrentTime = Roact.createElement(TextLabel, {
			AutomaticSize = Enum.AutomaticSize.Y,
			LayoutOrder = 1,
			Size = labelSize,
			Text = formatSecondsTimeString(self.state.currentTime),
			TextXAlignment = Enum.TextXAlignment.Right,
		}),
		LoadingBar = Roact.createElement(LoadingBar, {
			LayoutOrder = 2,
			Progress = progress,
			OverTime = if props.CanGoOverTime then self.overTime else nil,
			Size = style.LoadingBarSize,
		}),
		TotalTime = Roact.createElement(TextLabel, {
			AutomaticSize = Enum.AutomaticSize.Y,
			LayoutOrder = 3,
			Size = labelSize,
			Text = formatSecondsTimeString(props.TotalTime),
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
	})
end

TimeProgressBar = withContext({
	Stylizer = ContextServices.Stylizer,
})(TimeProgressBar)

return TimeProgressBar
