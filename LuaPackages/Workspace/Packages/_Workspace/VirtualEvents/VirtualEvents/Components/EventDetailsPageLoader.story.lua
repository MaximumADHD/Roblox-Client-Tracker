local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local Rodux = require(VirtualEvents.Parent.Rodux)
local installReducer = require(VirtualEvents.installReducer)
local withMockProviders = require(VirtualEvents.withMockProviders)
local network = require(VirtualEvents.network)
local VirtualEventModel = network.NetworkingVirtualEvents.VirtualEventModel
local EventDetailsPageLoader = require(script.Parent.EventDetailsPageLoader)

local controls = {
	universeId = 3211189518,
	hostId = 957765952,
	showErrorPage = false,
}

type Props = {
	controls: typeof(controls),
}

local EVENT_ID = "123456789"

return {
	controls = controls,
	story = function(props: Props)
		local reducer = Rodux.combineReducers({
			VirtualEvents = installReducer(),
		})

		local now = DateTime.now()
		local future = DateTime.fromUnixTimestamp(now.UnixTimestamp + 24 * 60 * 60)

		local virtualEvent = VirtualEventModel.mock(EVENT_ID)
		virtualEvent.host.hostId = props.controls.hostId
		virtualEvent.universeId = props.controls.universeId
		virtualEvent.eventTime.startTime = now
		virtualEvent.eventTime.endTime = future

		local store = Rodux.Store.new(reducer, {
			VirtualEvents = {
				events = {
					[EVENT_ID] = virtualEvent,
				},
			},
		}, {
			Rodux.thunkMiddleware,
		})

		return withMockProviders({
			EventDetailsPageLoader = React.createElement(EventDetailsPageLoader, {
				virtualEventId = EVENT_ID,
				currentTime = now,
				mockNetworkStatus = if props.controls.showErrorPage
					then network.RoduxNetworking.Enum.NetworkStatus.Failed
					else nil,
			}),
		}, {
			store = store,
		})
	end,
}
