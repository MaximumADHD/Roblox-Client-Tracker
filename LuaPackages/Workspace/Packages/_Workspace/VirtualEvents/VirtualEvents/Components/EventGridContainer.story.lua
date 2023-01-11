local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local withMockProviders = require(VirtualEvents.withMockProviders)
local EventGridContainer = require(script.Parent.EventGridContainer)

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
			table.insert(events, {
				name = "Sponsored Event " .. i,
				title = "Sponsored Event " .. i,
				url = "/sponsored/event",
				pagePath = "/sponsored/event",
				imageUrl = "https://images.rbxcdn.com/ecf1f303830daecfb69f2388c72cb6b8",
			})
		end

		return withMockProviders({
			EventGridContainer = React.createElement(EventGridContainer, {
				sponsoredEvents = events,
			}),
		})
	end,
}
