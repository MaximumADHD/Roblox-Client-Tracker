local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local Players = game:GetService("Players")

local React = require(VirtualEvents.Parent.React)
local useExperienceDetails = require(VirtualEvents.Hooks.useExperienceDetails)
local useRsvpCounters = require(VirtualEvents.Hooks.useRsvpCounters)
local useInterestedUserIds = require(VirtualEvents.Hooks.useInterestedUserIds)
local AttendanceCount = require(VirtualEvents.Components.AttendanceCount)
local FacePile = require(VirtualEvents.Components.FacePile)
local types = require(VirtualEvents.types)
local getFFlagHideAttendanceCountsForBoringEvents =
	require(VirtualEvents.Parent.SharedFlags).getFFlagHideAttendanceCountsForBoringEvents

export type Props = {
	virtualEvent: types.VirtualEvent,
	eventStatus: types.EventTimerStatus,
}

local function Attendance(props: Props): React.ReactElement<any, string>?
	local experienceDetails = useExperienceDetails(props.virtualEvent.universeId)
	local rsvpCounters = useRsvpCounters(props.virtualEvent.id)
	local interestedUserIds = useInterestedUserIds(props.virtualEvent.id)

	if getFFlagHideAttendanceCountsForBoringEvents() then
		-- In the cases where an event is either ongoing with no players, or
		-- upcoming with no RSVPs, we want to render nothing so that users never see
		-- "0 Interested" or "0 Attending" since that reflects poorly on the event
		if
			(props.eventStatus == "Ongoing" and experienceDetails ~= nil and experienceDetails.playing == 0)
			or (props.eventStatus ~= "Ongoing" and rsvpCounters.going == 0)
		then
			return nil
		end
	end

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
			desiredFirstUserId = if Players.LocalPlayer then tostring(Players.LocalPlayer.UserId) else nil,
		}),
	})
end

return Attendance
