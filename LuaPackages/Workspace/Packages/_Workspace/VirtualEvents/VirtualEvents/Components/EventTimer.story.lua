local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local withMockProviders = require(VirtualEvents.withMockProviders)
local network = require(VirtualEvents.network)
local VirtualEventModel = network.NetworkingVirtualEvents.VirtualEventModel
local EventTimer = require(script.Parent.EventTimer)

local function getTimeOffsetByHour(currentTime: DateTime, hourOffset: number)
	local currentLocalTime = currentTime:ToLocalTime()
	return DateTime.fromLocalTime(
		currentLocalTime.Year,
		currentLocalTime.Month,
		currentLocalTime.Day,
		currentLocalTime.Hour + hourOffset,
		0,
		0
	)
end

local controls = {
	isEventCancelled = false,
	startOffsetHours = 0,
	endOffsetHours = 24,
}

type Props = {
	controls: typeof(controls),
}

return {
	controls = controls,
	story = function(props: Props)
		local now = DateTime.now()

		local virtualEvent = VirtualEventModel.mock("1")
		virtualEvent.eventTime.startTime = getTimeOffsetByHour(now, props.controls.startOffsetHours)
		virtualEvent.eventTime.endTime = getTimeOffsetByHour(now, props.controls.endOffsetHours)

		if props.controls.isEventCancelled then
			virtualEvent.eventStatus = "cancelled"
		end

		return withMockProviders({
			EventTimer = React.createElement(EventTimer, {
				virtualEvent = virtualEvent,
			}),
		})
	end,
}
