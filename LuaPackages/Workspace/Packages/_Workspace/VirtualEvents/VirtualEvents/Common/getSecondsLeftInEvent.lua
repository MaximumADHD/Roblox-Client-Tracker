local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local GraphQLServer = require(VirtualEvents.Parent.GraphQLServer)
local getVirtualEventDates = require(VirtualEvents.Common.getVirtualEventDates)
local types = require(VirtualEvents.types)
local getFFlagVirtualEventsGraphQL = require(VirtualEvents.Parent.SharedFlags).getFFlagVirtualEventsGraphQL

local function getSecondsLeftInEvent(virtualEvent: types.VirtualEvent, currentTime: DateTime): number
	if getFFlagVirtualEventsGraphQL() then
		-- Remove type cast when cleaning up FFlagVirtualEventsGraphQL
		local dates = getVirtualEventDates((virtualEvent :: any) :: GraphQLServer.VirtualEvent)

		if currentTime.UnixTimestamp < dates.startDate.UnixTimestamp then
			return math.huge
		elseif currentTime.UnixTimestamp > dates.endDate.UnixTimestamp then
			return 0
		else
			local duration = dates.endDate.UnixTimestamp - dates.startDate.UnixTimestamp
			local timeSinceEventStart = currentTime.UnixTimestamp - dates.startDate.UnixTimestamp

			return duration - timeSinceEventStart
		end
	else
		if currentTime.UnixTimestamp < virtualEvent.eventTime.startTime.UnixTimestamp then
			return math.huge
		elseif currentTime.UnixTimestamp > virtualEvent.eventTime.endTime.UnixTimestamp then
			return 0
		else
			local duration = virtualEvent.eventTime.endTime.UnixTimestamp
				- virtualEvent.eventTime.startTime.UnixTimestamp
			local timeSinceEventStart = currentTime.UnixTimestamp - virtualEvent.eventTime.startTime.UnixTimestamp

			return duration - timeSinceEventStart
		end
	end
end

return getSecondsLeftInEvent
