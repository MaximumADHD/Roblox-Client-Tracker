local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local network = require(VirtualEvents.network)
local VirtualEventModel = network.NetworkingVirtualEvents.VirtualEventModel
local withMockProviders = require(VirtualEvents.withMockProviders)
local Attendance = require(script.Parent.Attendance)

local controls = {
	virtualEventId = "813902335774097414",
	isActive = false,
}

type Props = {
	controls: typeof(controls),
}

return {
	controls = controls,
	story = function(props: Props)
		local mockVirtualEvent = VirtualEventModel.mock(props.controls.virtualEventId)

		return withMockProviders({
			Attendance = React.createElement(Attendance, {
				virtualEvent = mockVirtualEvent,
				eventStatus = if props.controls.isActive then "Ongoing" else "Upcoming",
			}),
		})
	end,
}
