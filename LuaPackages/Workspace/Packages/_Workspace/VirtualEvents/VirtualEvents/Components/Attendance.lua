local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local useExperienceDetails = require(VirtualEvents.Hooks.useExperienceDetails)
local useRsvpCounters = require(VirtualEvents.Hooks.useRsvpCounters)
local useInterestedUserIds = require(VirtualEvents.Hooks.useInterestedUserIds)
local AttendanceCount = require(VirtualEvents.Components.AttendanceCount)
local FacePile = require(VirtualEvents.Components.FacePile)
local types = require(VirtualEvents.types)

export type Props = {
	virtualEvent: types.VirtualEvent,
	eventStatus: types.EventTimerStatus,
}

local function Attendance(props: Props)
	local experienceDetails = useExperienceDetails(props.virtualEvent.universeId)
	local rsvpCounters = useRsvpCounters(props.virtualEvent.id)
	local interestedUserIds = useInterestedUserIds(props.virtualEvent.id)

	return React.createElement("Folder", nil, {
		Layout = React.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, 8),
		}),

		AttendanceCount = React.createElement(AttendanceCount, {
			layoutOrder = 1,
			eventStatus = props.eventStatus,
			interested = rsvpCounters.going,
			attending = if experienceDetails then experienceDetails.playing else 0,
		}),

		FacePile = React.createElement(FacePile, {
			layoutOrder = 2,
			userIds = interestedUserIds,
		}),
	})
end

return Attendance
