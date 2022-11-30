local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local types = require(VirtualEvents.types)

local function getSecondsLeftInEvent(virtualEvent: types.VirtualEvent, currentTime: DateTime): number
	if currentTime.UnixTimestamp < virtualEvent.eventTime.startTime.UnixTimestamp then
		return math.huge
	elseif currentTime.UnixTimestamp > virtualEvent.eventTime.endTime.UnixTimestamp then
		return 0
	else
		local duration = virtualEvent.eventTime.endTime.UnixTimestamp - virtualEvent.eventTime.startTime.UnixTimestamp
		local timeSinceEventStart = currentTime.UnixTimestamp - virtualEvent.eventTime.startTime.UnixTimestamp

		return duration - timeSinceEventStart
	end
end

return getSecondsLeftInEvent
