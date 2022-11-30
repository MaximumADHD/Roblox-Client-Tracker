local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local Rodux = require(VirtualEvents.Parent.Rodux)
local installReducer = require(VirtualEvents.installReducer)
local network = require(VirtualEvents.network)
local VirtualEventModel = network.NetworkingVirtualEvents.VirtualEventModel
local withMockProviders = require(VirtualEvents.withMockProviders)
local EventDetailsPage = require(script.Parent.EventDetailsPage)

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
	universeId = 2158344278,
	hostId = 1,
	hoursToEventStart = 2,
	eventDurationHours = 24,
}

type Props = {
	controls: typeof(controls),
}

return {
	controls = controls,
	story = function(props: Props)
		local reducer = Rodux.combineReducers({
			VirtualEvents = installReducer(),
		})

		local store = Rodux.Store.new(reducer, nil, {
			Rodux.thunkMiddleware,
		})

		local now = DateTime.now()
		local startTime = getTimeOffsetByHour(now, props.controls.hoursToEventStart)
		local endTime = getTimeOffsetByHour(now, props.controls.hoursToEventStart + props.controls.eventDurationHours)

		local mockVirtualEvent = VirtualEventModel.mock("1")
		mockVirtualEvent.host.hostId = props.controls.hostId
		mockVirtualEvent.universeId = props.controls.universeId
		mockVirtualEvent.eventTime.startTime = startTime
		mockVirtualEvent.eventTime.endTime = endTime

		return withMockProviders({
			EventDetailsPage = React.createElement(EventDetailsPage, {
				virtualEvent = mockVirtualEvent,
				currentTime = now,
			}),
		}, {
			store = store,
		})
	end,
}
