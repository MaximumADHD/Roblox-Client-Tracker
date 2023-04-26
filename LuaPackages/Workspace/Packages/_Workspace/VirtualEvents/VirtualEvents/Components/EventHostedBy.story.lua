local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local withMockProviders = require(VirtualEvents.withMockProviders)
local types = require(VirtualEvents.types)
local EventHostedBy = require(script.Parent.EventHostedBy)

local controls = {
	hostId = 1,
	hostName = "Roblox",
	hostType = { "user", "group" },
	hasVerifiedBadge = true,
}

type Props = {
	controls: {
		hostId: number,
		hostName: string,
		hostType: "user" | "group",
		hasVerifiedBadge: boolean,
	},
}

return {
	controls = controls,
	story = function(props: Props)
		local host = {
			hostType = props.controls.hostType,
			hostName = props.controls.hostName,
			hostId = props.controls.hostId,
			hasVerifiedBadge = props.controls.hasVerifiedBadge,
		} :: types.Host

		return withMockProviders({
			EventHostedBy = React.createElement(EventHostedBy, {
				host = host,
				size = UDim2.new(1, 0, 0, 56),
			}),
		})
	end,
}
