local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Image = require(Foundation.Components.Image)
local View = require(Foundation.Components.View)
local usePulseBinding = require(script.Parent)

local function DefaultStory(props)
	local controls = props.controls

	local pulse = usePulseBinding(controls.cycleTime, NumberRange.new(controls.rangeMin, controls.rangeMax))

	return React.createElement(View, {
		Size = UDim2.fromOffset(controls.rangeMax * 50, controls.rangeMax * 50),
	}, {
		Icon = React.createElement(Image, {
			Image = "reactions/heart",
			Size = pulse:map(function(size: number)
				return UDim2.fromOffset(size * 50, size * 50)
			end),
			tag = "anchor-center-center position-center-center",
		}),
	})
end

return {
	summary = "Creates a binding used for various pulsating effects",
	stories = {
		{ name = "Example", story = DefaultStory :: any },
	},
	controls = {
		cycleTime = 1,
		rangeMin = 0.5,
		rangeMax = 0.75,
	},
}
