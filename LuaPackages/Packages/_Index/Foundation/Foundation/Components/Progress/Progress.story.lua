local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Button = require(Foundation.Components.Button)
local Progress = require(Foundation.Components.Progress)
local ProgressShape = require(Foundation.Enums.ProgressShape)
local ProgressSize = require(Foundation.Enums.ProgressSize)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local function ConfigurableStory(props)
	local controls = props.controls
	local value = if controls.isIndeterminate then nil else controls.value

	return React.createElement(Progress, {
		shape = controls.shape,
		value = value,
		size = controls.size,
	})
end

local function AnimatedProgressStory()
	local progress, setProgress = React.useState(0)
	local isAnimating, setIsAnimating = React.useState(false)

	React.useEffect(function()
		local connection
		if isAnimating then
			local startTime = tick()
			local durationSeconds = 3

			connection = game:GetService("RunService").Heartbeat:Connect(function()
				local elapsed = tick() - startTime
				local newProgress = math.min(elapsed / durationSeconds * 100, 100)
				setProgress(newProgress)

				if newProgress >= 100 then
					connection:Disconnect()
					setIsAnimating(false)
				end
			end)
		end

		return function()
			if connection then
				connection:Disconnect()
			end
		end
	end, { isAnimating })

	local function startAnimation()
		setProgress(0)
		setIsAnimating(true)
	end

	return React.createElement(View, {
		tag = "col gap-medium auto-y size-full-0",
	}, {
		Title = React.createElement(Text, {
			Text = `Progress: {math.floor(progress)}%`,
			tag = "size-0-0 auto-xy text-title-small content-emphasis",
			LayoutOrder = 1,
		}),

		CircleProgress = React.createElement(Progress, {
			shape = ProgressShape.Circle,
			value = progress,
			size = ProgressSize.Large,
			LayoutOrder = 2,
		}),

		BarProgress = React.createElement(Progress, {
			shape = ProgressShape.Bar,
			value = progress,
			size = ProgressSize.Medium,
			LayoutOrder = 3,
		}),

		Button = React.createElement(Button, {
			text = if isAnimating then "Animating..." else "Start Animation",
			onActivated = startAnimation,
			isDisabled = isAnimating,
			LayoutOrder = 4,
		}),
	})
end

local function SizeVariationsStory(props)
	local controls = props.controls

	return React.createElement(
		View,
		{
			tag = "col gap-large auto-y size-full-0",
		},
		Dash.map(ProgressSize, function(size)
			return React.createElement(View, {
				tag = "row gap-medium align-y-center size-full-0 auto-y",
			}, {
				Label = React.createElement(Text, {
					Text = `{size}:`,
					tag = "size-1500-0 text-align-x-right auto-y text-body-small content-default",
					LayoutOrder = 1,
				}),

				CircleProgress = React.createElement(Progress, {
					shape = ProgressShape.Circle,
					value = controls.value,
					size = size,
					LayoutOrder = 2,
				}),

				BarProgress = if size == ProgressSize.Medium
					then React.createElement(Progress, {
						shape = ProgressShape.Bar,
						value = controls.value,
						size = size,
						width = UDim.new(0, 300),
						LayoutOrder = 3,
					})
					else nil,
			})
		end)
	)
end

local function IndeterminateStory()
	return React.createElement(View, {
		tag = "col gap-medium auto-y size-full-0",
	}, {
		CircleIndeterminate = React.createElement(Progress, {
			shape = ProgressShape.Circle,
			size = ProgressSize.Large,
			LayoutOrder = 1,
		}),

		BarIndeterminate = React.createElement(Progress, {
			shape = ProgressShape.Bar,
			size = ProgressSize.Medium,
			LayoutOrder = 2,
		}),
	})
end

return {
	summary = "Progress component with Circle and Bar shapes, supporting both determinate and indeterminate states",
	stories = {
		{ name = "Configurable", story = ConfigurableStory },
		{ name = "Animated Demo", story = AnimatedProgressStory :: any },
		{ name = "Sizes", story = SizeVariationsStory :: any },
		{ name = "Indeterminate", story = IndeterminateStory :: any },
	},
	controls = {
		shape = Dash.values(ProgressShape),
		size = Dash.values(ProgressSize),
		value = 65,
		isIndeterminate = false,
	},
}
