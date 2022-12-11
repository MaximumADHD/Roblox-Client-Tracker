local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local types = require(VirtualEvents.types)
local withMockProviders = require(VirtualEvents.withMockProviders)
local EventTimer = require(script.Parent.EventTimer)

local function getTimeOffsetByHour(currentTime: DateTime, hourOffset: number)
	local currentLocalTime = currentTime:ToLocalTime()
	return DateTime.fromLocalTime(
		currentLocalTime.Year,
		currentLocalTime.Month,
		currentLocalTime.Day,
		currentLocalTime.Hour + hourOffset,
		0,
		0
	)
end

local controls = {
	status = {
		"Upcoming",
		"UpcomingImminent",
		"Ongoing",
		"ElapsedImminent",
		"Elapsed",
	},
}

type Props = {
	controls: {
		status: string, -- types.EventTimerStatus,
	},
}

return {
	controls = controls,
	story = function(props: Props)
		local currentTime = DateTime.now()
		local startTime: DateTime
		local endTime: DateTime
		if props.controls.status == "Upcoming" then
			startTime = getTimeOffsetByHour(currentTime, 24)
			endTime = getTimeOffsetByHour(currentTime, 48)
		elseif props.controls.status == "UpcomingImminent" then
			startTime = getTimeOffsetByHour(currentTime, 2)
			endTime = getTimeOffsetByHour(currentTime, 10)
		elseif props.controls.status == "Ongoing" then
			startTime = getTimeOffsetByHour(currentTime, -1)
			endTime = getTimeOffsetByHour(currentTime, 8)
		elseif props.controls.status == "ElapsedImminent" then
			startTime = getTimeOffsetByHour(currentTime, -4)
			endTime = getTimeOffsetByHour(currentTime, 2)
		elseif props.controls.status == "Elapsed" then
			startTime = getTimeOffsetByHour(currentTime, -10)
			endTime = getTimeOffsetByHour(currentTime, -1)
		end

		return withMockProviders({
			EventTimer = React.createElement(EventTimer, {
				status = props.controls.status,
				currentTime = currentTime,
				virtualEvent = {
					eventTime = {
						startTime = startTime,
						endTime = endTime,
					},
				} :: types.VirtualEvent,
			}),
		})
	end,
}
