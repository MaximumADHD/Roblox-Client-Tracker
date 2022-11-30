local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local types = require(VirtualEvents.types)

local IMMINENT_EVENT_THRESHOLD = 4 * 60 * 60

local function getEventTimerStatus(virtualEvent: types.VirtualEvent, currentTime: DateTime): types.EventTimerStatus
	local timeToEventStart = virtualEvent.eventTime.startTime.UnixTimestamp - currentTime.UnixTimestamp
	local timeToEventEnd = virtualEvent.eventTime.endTime.UnixTimestamp - currentTime.UnixTimestamp

	if currentTime.UnixTimestamp >= virtualEvent.eventTime.startTime.UnixTimestamp then
		if currentTime.UnixTimestamp < virtualEvent.eventTime.endTime.UnixTimestamp then
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

return getEventTimerStatus
