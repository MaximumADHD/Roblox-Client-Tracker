local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local types = require(VirtualEvents.types)
local formatDate = require(script.Parent.formatDate)
local getSecondsLeftInEvent = require(script.Parent.getSecondsLeftInEvent)
local getEventTimerStatus = require(script.Parent.getEventTimerStatus)

local function getEventTimerMessagePair(virtualEvent: types.VirtualEvent, currentTime: DateTime)
	local status = getEventTimerStatus(virtualEvent, currentTime)
	local startMessage: string?
	local endMessage: string?

	if status == "Upcoming" then
		startMessage = formatDate(virtualEvent.eventTime.startTime)
		endMessage = formatDate(virtualEvent.eventTime.endTime)
	elseif status == "UpcomingImminent" then
		startMessage = ("TODAY AT %s"):format(virtualEvent.eventTime.startTime:FormatLocalTime("LT", "en-us"))
		endMessage = formatDate(virtualEvent.eventTime.endTime)
	elseif status == "Ongoing" then
		startMessage = "HAPPENING NOW"
		endMessage = formatDate(virtualEvent.eventTime.endTime)
	elseif status == "ElapsedImminent" then
		local remainingTime = getSecondsLeftInEvent(virtualEvent, currentTime)
		local hoursLeft = remainingTime / 60 / 60
		local minutesLeft = remainingTime / 60

		if hoursLeft >= 2 then
			startMessage = ("ENDS IN %i HOURS"):format(hoursLeft)
		elseif hoursLeft >= 1 then
			startMessage = ("ENDS IN %i HOUR"):format(hoursLeft)
		else
			startMessage = ("ENDS IN %i MINUTES"):format(minutesLeft)
		end

		endMessage = ("AT %s"):format(virtualEvent.eventTime.endTime:FormatLocalTime("LT", "en-us"))
	else
		startMessage = "EVENT ENDED"
	end

	return {
		startMessage = startMessage,
		endMessage = endMessage,
	}
end

return getEventTimerMessagePair
