local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local NetworkingSponsoredEvents = require(VirtualEvents.NetworkingSponsoredEvents)
local network = require(VirtualEvents.network)
local withMockProviders = require(VirtualEvents.withMockProviders)
local EventsPage = require(script.Parent.EventsPage)

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

		for i = 1, props.controls.numEvents do
			table.insert(events, NetworkingSponsoredEvents.createMockSponsoredEventResponse("Event " .. i))
		end

		network.NetworkingSponsoredEvents.GetSponsoredEvents.Mock.clear()
		network.NetworkingSponsoredEvents.GetSponsoredEvents.Mock.reply({
			responseBody = {
				data = events,
			},
		})

		return withMockProviders({
			EventsPage = React.createElement(EventsPage),
		})
	end,
}
