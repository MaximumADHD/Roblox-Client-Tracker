local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local withMockProviders = require(VirtualEvents.withMockProviders)
local EventHostedBy = require(script.Parent.EventHostedBy)

local controls = {
	hostId = 1,
	hasVerifiedBadge = true,
}

type Props = {
	controls: typeof(controls),
}

return {
	controls = controls,
	story = function(props: Props)
		return withMockProviders({
			EventHostedBy = React.createElement(EventHostedBy, {
				host = {
					hostType = "user",
					hostName = "Roblox",
					hostId = props.controls.hostId,
					hasVerifiedBadge = props.controls.hasVerifiedBadge,
				},
				size = UDim2.new(1, 0, 0, 56),
			}),
		})
	end,
}
