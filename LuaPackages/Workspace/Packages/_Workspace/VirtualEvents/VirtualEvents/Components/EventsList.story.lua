local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local withMockProviders = require(VirtualEvents.withMockProviders)
local network = require(VirtualEvents.network)
local VirtualEventModel = network.NetworkingVirtualEvents.VirtualEventModel
local EventsList = require(script.Parent.EventsList)

local mockResolvers = {
	VirtualEvent = {
		rsvpCounters = function()
			return {
				going = 2500,
			}
		end,
		experienceDetails = function()
			return {
				playing = 50000,
			}
		end,
	},
	Query = {
		virtualEventsByUniverseId = function(_root, args)
			local virtualEvents = {}

			for i = 1, 5 do
				local now = DateTime.now()

				local event = VirtualEventModel.mock(tostring(i)) :: any
				event.universeId = args.universeId
				event.eventTime.startUtc = DateTime.fromUnixTimestamp(now.UnixTimestamp + ((i - 1) * 24 * 60 * 60))
					:ToIsoDate()
				event.eventTime.endUtc = DateTime.fromUnixTimestamp(now.UnixTimestamp + (i * 24 * 60 * 60)):ToIsoDate()

				table.insert(virtualEvents, event)
			end

			return {
				cursor = "cursor",
				virtualEvents = virtualEvents,
			}
		end,
	},
}

local controls = {
	universeId = 2183742951,
}

type Props = {
	controls: typeof(controls),
}

local prev

return {
	controls = controls,
	create = function()
		prev = game:SetFastFlagForTesting("VirtualEventsGraphQL", true)
	end,
	destroy = function()
		game:SetFastFlagForTesting("VirtualEventsGraphQL", prev)
	end,
	story = function(props: Props)
		return withMockProviders({
			Wrapper = React.createElement("Frame", {
				Size = UDim2.fromOffset(339, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
			}, {
				EventsList = React.createElement(EventsList, {
					universeId = props.controls.universeId,
				}),
			}),
		}, {
			mockResolvers = mockResolvers,
		})
	end,
}
