local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local GraphQLServer = require(VirtualEvents.Parent.GraphQLServer)
local React = require(VirtualEvents.Parent.React)
local withMockProviders = require(VirtualEvents.withMockProviders)
local network = require(VirtualEvents.network)
local VirtualEventModel = network.NetworkingVirtualEvents.VirtualEventModel
local EventsList = require(script.Parent.EventsList)
local getFFlagFetchEventsFromWrapper = require(VirtualEvents.Parent.SharedFlags).getFFlagFetchEventsFromWrapper
local getFFlagRemoveVirtualEventsExperiment =
	require(VirtualEvents.Parent.SharedFlags).getFFlagRemoveVirtualEventsExperiment

local mockResolvers = if getFFlagFetchEventsFromWrapper()
	then nil
	else {
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
					event.eventTime.endUtc = DateTime.fromUnixTimestamp(now.UnixTimestamp + (i * 24 * 60 * 60))
						:ToIsoDate()

					table.insert(virtualEvents, event)
				end

				-- make sure at least one card has a multiline title and description
				virtualEvents[1].title =
					"A Very long title A Very long title A Very long title A Very long title A Very long title"
				virtualEvents[1].description =
					"A Very long description A Very long description A Very long description A Very long description A Very long description A Very long description"

				return {
					cursor = "cursor",
					virtualEvents = virtualEvents,
				}
			end,
		},
	}

local function createVirtualEvents(universeId: number)
	local virtualEvents = {}
	for i = 1, 5 do
		local now = DateTime.now()
		local event = GraphQLServer.mocks.createMockVirtualEvent(tostring(i))
		event.universeId = tostring(universeId)

		if event.rsvpCounters then
			event.rsvpCounters.going = 2500
		end

		if event.experienceDetails then
			event.experienceDetails.playing = 50000
		end

		if event.eventTime then
			event.eventTime.startUtc = DateTime.fromUnixTimestamp(now.UnixTimestamp + ((i - 1) * 24 * 60 * 60))
				:ToIsoDate()
			event.eventTime.endUtc = DateTime.fromUnixTimestamp(now.UnixTimestamp + (i * 24 * 60 * 60)):ToIsoDate()
		end

		if i == 1 then
			-- Make sure at least one card has a multiline title and description
			event.title = "A Very long title A Very long title A Very long title A Very long title A Very long title"
			event.description = "A Very long description A Very long description A Very long description A Very "
				.. "long description A Very long description A Very long description"
		end

		table.insert(virtualEvents, event)
	end

	return virtualEvents
end

local controls = {
	universeId = 2183742951,
	isDesktopGrid = false,
}

type Props = {
	controls: typeof(controls),
}

return {
	controls = controls,

	story = function(props: Props)
		local virtualEvents = createVirtualEvents(props.controls.universeId)

		return withMockProviders({
			Wrapper = React.createElement("Frame", {
				Size = props.controls.isDesktopGrid and UDim2.fromOffset(700, 0) or UDim2.fromOffset(339, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
			}, {
				EventsList = React.createElement(EventsList, {
					virtualEvents = virtualEvents,
					universeId = props.controls.universeId,
					currentTime = DateTime.now(),
					mockVirtualEventsMVPEnabled = if getFFlagRemoveVirtualEventsExperiment() then nil else true,
					isDesktopGrid = props.controls.isDesktopGrid,
					initialEventsShown = if props.controls.isDesktopGrid then 2 else 1,
				}),
			}),
		}, {
			mockResolvers = mockResolvers,
		})
	end,
}
