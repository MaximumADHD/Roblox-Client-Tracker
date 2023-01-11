local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local withMockProviders = require(VirtualEvents.withMockProviders)
local EventTile = require(script.Parent.EventTile)

return {
	story = function()
		return withMockProviders({
			EventTile = React.createElement(EventTile, {
				imageUrl = "rbxassetid://1269231654",
				context = {
					name = "Event",
					title = "Event",
					pagePath = "/sponsored/event",
					url = "/sponsored/event",
				},
			}),
		})
	end,
}
