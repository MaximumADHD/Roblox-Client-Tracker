local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local GraphQLServer = require(VirtualEvents.Parent.GraphQLServer)
local React = require(VirtualEvents.Parent.React)
local withMockProviders = require(VirtualEvents.withMockProviders)
local network = require(VirtualEvents.network)
local VirtualEventModel = network.NetworkingVirtualEvents.VirtualEventModel
local types = require(VirtualEvents.types)
local EventRow = require(script.Parent.EventRow)

local controls = {
	useConstrainedSize = true,
	useTextTruncation = true,
	userRsvpStatus = {
		"going",
		"notGoing",
	},
	eventName = "A really long event name that shows off truncation",
	eventStatus = {
		"Upcoming",
		"Ongoing",
	},
}

type Props = {
	controls: {
		useTextTruncation: boolean,
		useConstrainedSize: boolean,
		userRsvpStatus: GraphQLServer.RsvpStatus,
		eventName: string,
		eventStatus: "Upcoming" | "Ongoing",
	},
}

local function createMockVirtualEvent(
	eventName: string,
	eventStatus: types.EventTimerStatus
): GraphQLServer.VirtualEvent
	local virtualEvent = VirtualEventModel.mock("1") :: any

	local now = DateTime.now():ToLocalTime()
	local upcoming = {
		DateTime.fromLocalTime(now.Year, now.Month, now.Day + 1, 12, 0, 0, 0),
		DateTime.fromLocalTime(now.Year, now.Month, now.Day + 2, 12, 0, 0, 0),
	}
	local ongoing = {
		DateTime.fromLocalTime(now.Year, now.Month, now.Day, 0, 0, 0, 0),
		DateTime.fromLocalTime(now.Year, now.Month, now.Day + 1, 12, 0, 0, 0),
	}

	if eventStatus == "Upcoming" then
		virtualEvent.eventTime.startUtc = upcoming[1]:ToIsoDate()
		virtualEvent.eventTime.endUtc = upcoming[2]:ToIsoDate()
	elseif eventStatus == "Ongoing" then
		virtualEvent.eventTime.startUtc = ongoing[1]:ToIsoDate()
		virtualEvent.eventTime.endUtc = ongoing[2]:ToIsoDate()
	end

	virtualEvent.title = eventName
	virtualEvent.description =
		"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Vitae congue eu consequat ac felis donec et."

	virtualEvent.rsvpCounters = {
		going = 2500,
	}

	virtualEvent.experienceDetails = {
		playing = 50000,
	}

	return virtualEvent
end

return {
	controls = controls,
	story = function(props: Props)
		local virtualEvent = createMockVirtualEvent(props.controls.eventName, props.controls.eventStatus)
		virtualEvent.userRsvpStatus = props.controls.userRsvpStatus

		print(virtualEvent.userRsvpStatus)

		return withMockProviders({
			Wrapper = React.createElement("Frame", {
				Size = if props.controls.useConstrainedSize then UDim2.fromOffset(339, 0) else UDim2.fromScale(1, 1),
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
			}, {
				EventRow = React.createElement(EventRow, {
					virtualEvent = virtualEvent,
					shouldTruncateText = props.controls.useTextTruncation,
					onTileActivated = function()
						print("Tile clicked")
					end,
					onRsvpChanged = function()
						print("Notify Me clicked")
					end,
					onJoinEvent = function()
						print("Join Event clicked")
					end,
				}),
			}),
		})
	end,
}
