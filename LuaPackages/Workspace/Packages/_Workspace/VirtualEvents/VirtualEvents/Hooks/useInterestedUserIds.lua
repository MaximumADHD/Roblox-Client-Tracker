-- FFlagUseGraphqlForAllVirtualEventData cleanup: Delete this file

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local Cryo = require(VirtualEvents.Parent.Cryo)
local React = require(VirtualEvents.Parent.React)
local useRsvps = require(VirtualEvents.Hooks.useRsvps)
local types = require(VirtualEvents.types)

local function useInterestedUserIds(virtualEventId: string): ({ string }, string)
	local rsvps, fetchingStatus = useRsvps(virtualEventId)

	local userIds = React.useMemo(function()
		local rsvpsArray = Cryo.Dictionary.values(rsvps)
		local onlyInterested = Cryo.List.filter(rsvpsArray, function(rsvp: types.RsvpResponse)
			return rsvp.rsvpStatus == "going"
		end)
		return Cryo.List.map(onlyInterested, function(rsvp: types.RsvpResponse)
			return tostring(rsvp.userId)
		end)
	end, { rsvps })

	return userIds, fetchingStatus
end

return useInterestedUserIds
