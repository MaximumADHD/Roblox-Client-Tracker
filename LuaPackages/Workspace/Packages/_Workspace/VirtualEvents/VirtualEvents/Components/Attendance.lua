local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local Players = game:GetService("Players")

local GraphQLServer = require(VirtualEvents.Parent.GraphQLServer)
local React = require(VirtualEvents.Parent.React)
local useExperienceDetails = require(VirtualEvents.Hooks.useExperienceDetails)
local useRsvpCounters = require(VirtualEvents.Hooks.useRsvpCounters)
local useInterestedUserIds = require(VirtualEvents.Hooks.useInterestedUserIds)
local AttendanceCount = require(VirtualEvents.Components.AttendanceCount)
local FacePile = require(VirtualEvents.Components.FacePile)
local types = require(VirtualEvents.types)
local getFFlagVirtualEventsGraphQL = require(VirtualEvents.Parent.SharedFlags).getFFlagVirtualEventsGraphQL

export type Props = {
	virtualEvent: types.VirtualEvent | GraphQLServer.VirtualEvent,
	eventStatus: types.EventTimerStatus,
}

local function Attendance(props: Props): React.ReactElement<any, string>?
	local experienceDetails = if getFFlagVirtualEventsGraphQL()
		then (props.virtualEvent :: GraphQLServer.VirtualEvent).experienceDetails
		else useExperienceDetails(props.virtualEvent.universeId :: number)

	local rsvpCounters = if getFFlagVirtualEventsGraphQL()
		then (props.virtualEvent :: GraphQLServer.VirtualEvent).rsvpCounters
		else useRsvpCounters(props.virtualEvent.id)

	local interestedUserIds = if getFFlagVirtualEventsGraphQL()
		then React.useMemo(function()
			local userIds = {}
			local virtualEvent = props.virtualEvent :: GraphQLServer.VirtualEvent
			if virtualEvent.rsvps then
				for _, rsvp in virtualEvent.rsvps do
					if rsvp.rsvpStatus == "going" then
						table.insert(userIds, tostring(rsvp.userId))
					end
				end
			end
			return userIds
		end, { props.virtualEvent })
		else useInterestedUserIds(props.virtualEvent.id)

	-- In the cases where an event is either ongoing with no players, or
	-- upcoming with no RSVPs, we want to render nothing so that users never see
	-- "0 Interested" or "0 Attending" since that reflects poorly on the event
	if getFFlagVirtualEventsGraphQL() then
		if
			(props.eventStatus == "Ongoing" and experienceDetails and experienceDetails.playing == 0)
			or (props.eventStatus ~= "Ongoing" and rsvpCounters and rsvpCounters.going == 0)
		then
			return nil
		end
	else
		if
			(props.eventStatus == "Ongoing" and experienceDetails ~= nil and experienceDetails.playing == 0)
			or (props.eventStatus ~= "Ongoing" and (rsvpCounters :: any).going == 0)
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
			interested = (if getFFlagVirtualEventsGraphQL()
				then if rsvpCounters and rsvpCounters.going then rsvpCounters.going else 0
				else if rsvpCounters then rsvpCounters.going else 0) :: number,
			attending = (if getFFlagVirtualEventsGraphQL()
				then if experienceDetails and experienceDetails.playing then experienceDetails.playing else 0
				else if experienceDetails then experienceDetails.playing else 0) :: number,
		}),

		FacePile = React.createElement(FacePile, {
			layoutOrder = 2,
			userIds = interestedUserIds,
			desiredFirstUserId = if Players.LocalPlayer then tostring(Players.LocalPlayer.UserId) else nil,
		}),
	})
end

return Attendance
