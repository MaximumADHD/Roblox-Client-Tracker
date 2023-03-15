local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local GraphQLServer = require(VirtualEvents.Parent.GraphQLServer)
local types = require(VirtualEvents.types)
local getVirtualEventDates = require(VirtualEvents.Common.getVirtualEventDates)
local getFFlagVirtualEventsGraphQL = require(VirtualEvents.Parent.SharedFlags).getFFlagVirtualEventsGraphQL

local IMMINENT_EVENT_THRESHOLD = 4 * 60 * 60

type VirtualEvent = types.VirtualEvent | GraphQLServer.VirtualEvent

local function getEventTimerStatus(virtualEvent: VirtualEvent, currentTime: DateTime): types.EventTimerStatus
	if getFFlagVirtualEventsGraphQL() then
		local dates = getVirtualEventDates(virtualEvent :: GraphQLServer.VirtualEvent)

		local timeToEventStart = dates.startDate.UnixTimestamp - currentTime.UnixTimestamp
		local timeToEventEnd = dates.endDate.UnixTimestamp - currentTime.UnixTimestamp

		if currentTime.UnixTimestamp >= dates.startDate.UnixTimestamp then
			if currentTime.UnixTimestamp < dates.endDate.UnixTimestamp then
				if timeToEventEnd <= IMMINENT_EVENT_THRESHOLD then
					return "ElapsedImminent"
				else
					return "Ongoing"
				end
			else
				return "Elapsed"
			end
		else
			if timeToEventStart > 0 and timeToEventStart <= IMMINENT_EVENT_THRESHOLD then
				return "UpcomingImminent"
			else
				return "Upcoming"
			end
		end
	else
		local timeToEventStart = (virtualEvent :: types.VirtualEvent).eventTime.startTime.UnixTimestamp
			- currentTime.UnixTimestamp
		local timeToEventEnd = (virtualEvent :: types.VirtualEvent).eventTime.endTime.UnixTimestamp
			- currentTime.UnixTimestamp

		if currentTime.UnixTimestamp >= (virtualEvent :: types.VirtualEvent).eventTime.startTime.UnixTimestamp then
			if currentTime.UnixTimestamp < (virtualEvent :: types.VirtualEvent).eventTime.endTime.UnixTimestamp then
				if timeToEventEnd <= IMMINENT_EVENT_THRESHOLD then
					return "ElapsedImminent"
				else
					return "Ongoing"
				end
			else
				return "Elapsed"
			end
		else
			if timeToEventStart > 0 and timeToEventStart <= IMMINENT_EVENT_THRESHOLD then
				return "UpcomingImminent"
			else
				return "Upcoming"
			end
		end
	end
end

return getEventTimerStatus
