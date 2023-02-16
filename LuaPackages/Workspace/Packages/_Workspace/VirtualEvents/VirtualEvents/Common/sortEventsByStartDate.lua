local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local GraphQLServer = require(VirtualEvents.Parent.GraphQLServer)

type VirtualEvent = GraphQLServer.VirtualEvent

local function sortEventsByStartDate(virtualEvents: { VirtualEvent }): { VirtualEvent }
	local sortedVirtualEvents = table.clone(virtualEvents)
	table.sort(sortedVirtualEvents, function(a, z)
		if a.eventTime and a.eventTime.startUtc and z.eventTime and z.eventTime.startUtc then
			local aStart = DateTime.fromIsoDate(a.eventTime.startUtc) or DateTime.now()
			local zStart = DateTime.fromIsoDate(z.eventTime.startUtc) or DateTime.now()

			return aStart.UnixTimestamp < zStart.UnixTimestamp
		end
		return true
	end)
	return sortedVirtualEvents
end

return sortEventsByStartDate
