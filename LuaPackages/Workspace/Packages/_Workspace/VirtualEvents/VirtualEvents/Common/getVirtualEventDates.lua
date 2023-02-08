local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local GraphQLServer = require(VirtualEvents.Parent.GraphQLServer)

export type VirtualEventDates = {
	startDate: DateTime,
	endDate: DateTime,
}

local function getVirtualEventDates(virtualEvent: GraphQLServer.VirtualEvent): VirtualEventDates
	local startDate = if virtualEvent.eventTime and virtualEvent.eventTime.startUtc
		then DateTime.fromIsoDate(virtualEvent.eventTime.startUtc)
		else nil

	local endDate = if virtualEvent.eventTime and virtualEvent.eventTime.endUtc
		then DateTime.fromIsoDate(virtualEvent.eventTime.endUtc)
		else nil

	return {
		-- The DateTime.now() defaults are included for the case where
		-- fromIsoDate doesn't work for the date strings. Which shouldn't ever
		-- happen unless the backend starts returning malformed date strings. So
		-- this is to appease the typechecker and also just to cover us in case
		-- something goes wrong with the response
		startDate = startDate or DateTime.now(),
		endDate = endDate or DateTime.now(),
	}
end

return getVirtualEventDates
