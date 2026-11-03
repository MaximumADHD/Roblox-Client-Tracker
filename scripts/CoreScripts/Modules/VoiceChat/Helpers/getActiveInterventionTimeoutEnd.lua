type InterventionTimeoutFields = {
	timeoutStartTime: string?,
	timeoutDurationSeconds: number?,
}

--[[
	Returns whether a realtime voice timeout is still active at `now`, plus its end as a unix
	timestamp. A zero duration is an indefinite timeout with no end.
	A missing or unparsable start time is treated as starting now, because the push just arrived.
]]
local function getActiveInterventionTimeoutEnd(
	interventionDetail: InterventionTimeoutFields,
	now: number
): (boolean, number?)
	local durationSeconds = interventionDetail.timeoutDurationSeconds
	if durationSeconds == nil or durationSeconds < 0 then
		return false, nil
	end

	if durationSeconds == 0 then
		return true, nil
	end

	local startTime = interventionDetail.timeoutStartTime
	local startDateTime = if startTime and startTime ~= "" then DateTime.fromIsoDate(startTime) else nil
	local endTimestamp = (if startDateTime then startDateTime.UnixTimestamp else now) + durationSeconds
	if endTimestamp <= now then
		return false, nil
	end

	return true, endTimestamp
end

return getActiveInterventionTimeoutEnd
