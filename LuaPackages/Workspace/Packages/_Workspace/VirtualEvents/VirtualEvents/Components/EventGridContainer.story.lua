local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local network = require(VirtualEvents.network)
local NetworkingVirtualEvents = network.NetworkingVirtualEvents
local withMockProviders = require(VirtualEvents.withMockProviders)
local EventGridContainer = require(script.Parent.EventGridContainer)

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

		if getFFlagEnableVirtualEvents() then
			local virtualEvents = {}

			for i = 1, props.controls.numEvents do
				local eventId = tostring(i)
				table.insert(virtualEvents, NetworkingVirtualEvents.createMockVirtualEventResponse(eventId))
			end

			NetworkingVirtualEvents.GetActiveVirtualEvents.Mock.clear()
			NetworkingVirtualEvents.GetActiveVirtualEvents.Mock.reply({
				responseBody = {
					data = virtualEvents,
				},
			})
		else
			for i = 1, props.controls.numEvents do
				table.insert(events, {
					name = "Sponsored Event " .. i,
					title = "Sponsored Event " .. i,
					url = "/sponsored/event",
					pagePath = "/sponsored/event",
					imageUrl = "https://images.rbxcdn.com/ecf1f303830daecfb69f2388c72cb6b8",
				})
			end
		end

		return withMockProviders({
			EventGridContainer = React.createElement(EventGridContainer, {
				sponsoredEvents = events,
				onEventTileActivated = function(virtualEvent)
					print("clicked", virtualEvent.title)
				end,
			}),
		})
	end,
}
