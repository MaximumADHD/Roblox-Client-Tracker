local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local Rodux = require(VirtualEvents.Parent.Rodux)
local installReducer = require(VirtualEvents.installReducer)
local NetworkingSponsoredEvents = require(VirtualEvents.NetworkingSponsoredEvents)
local network = require(VirtualEvents.network)
local NetworkingVirtualEvents = network.NetworkingVirtualEvents
local withMockProviders = require(VirtualEvents.withMockProviders)
local EventsPage = require(script.Parent.EventsPage)

local getFFlagEnableVirtualEvents = require(VirtualEvents.Parent.SharedFlags).getFFlagEnableVirtualEvents

local controls = {
	numEvents = 3,
}

type Props = {
	controls: typeof(controls),
}

return {
	controls = controls,
	story = function(props: Props)
		local events = {}
		local virtualEvents = {}

		for i = 1, props.controls.numEvents do
			if getFFlagEnableVirtualEvents() then
				local eventId = tostring(i)
				table.insert(virtualEvents, NetworkingVirtualEvents.createMockVirtualEventResponse(eventId))
			end

			table.insert(events, NetworkingSponsoredEvents.createMockSponsoredEventResponse("Event " .. i))
		end

		local store
		if getFFlagEnableVirtualEvents() then
			local reducer = Rodux.combineReducers({
				VirtualEvents = installReducer(),
			})

			store = Rodux.Store.new(reducer, nil, {
				Rodux.thunkMiddleware,
			})

			NetworkingVirtualEvents.GetActiveVirtualEvents.Mock.clear()
			NetworkingVirtualEvents.GetActiveVirtualEvents.Mock.reply({
				responseBody = {
					data = virtualEvents,
				},
			})
		else
			network.NetworkingSponsoredEvents.GetSponsoredEvents.Mock.clear()
			network.NetworkingSponsoredEvents.GetSponsoredEvents.Mock.reply({
				responseBody = {
					data = events,
				},
			})
		end

		return withMockProviders({
			EventsPage = React.createElement(EventsPage, {
				onEventTileActivated = function(virtualEvent)
					print("clicked", virtualEvent.title)
				end,
			}),
		}, {
			store = store,
		})
	end,
}
