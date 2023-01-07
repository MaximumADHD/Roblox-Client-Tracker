local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local withMockProviders = require(VirtualEvents.withMockProviders)
local AttendanceCount = require(script.Parent.AttendanceCount)

local controls = {
	isActive = false,
	attending = 600000,
	interested = 7500000,
}

type Props = {
	controls: typeof(controls),
}

return {
	controls = controls,
	story = function(props: Props)
		return withMockProviders({
			AttendanceCount = React.createElement(AttendanceCount, {
				eventStatus = if props.controls.isActive then "Ongoing" else "Upcoming",
				attending = props.controls.attending,
				interested = props.controls.interested,
			}),
		})
	end,
}
