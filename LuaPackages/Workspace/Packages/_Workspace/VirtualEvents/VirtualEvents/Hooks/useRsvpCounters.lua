local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local useDispatch = require(VirtualEvents.Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useSelector = require(VirtualEvents.Parent.RoactUtils).Hooks.RoactRodux.useSelector
local network = require(VirtualEvents.network)
local RoduxNetworking = network.RoduxNetworking
local NetworkingVirtualEvents = network.NetworkingVirtualEvents
local logger = require(VirtualEvents.logger)
local types = require(VirtualEvents.types)

local defaultCounters: types.RsvpCounters = {
	none = 0,
	going = 0,
	maybeGoing = 0,
	notGoing = 0,
}

local function useRsvpCounters(virtualEventId: string): (types.RsvpCounters, string)
	local dispatch = useDispatch()

	local selectRsvpCounts = React.useCallback(function(state: any)
		local counters = state.VirtualEvents.rsvps.counters[virtualEventId]
		return if counters then counters else defaultCounters
	end, { virtualEventId })

	local selectFetchingStatus = React.useCallback(function(state: any)
		return NetworkingVirtualEvents.GetVirtualEventRsvpCounts.getStatus(state, { virtualEventId })
	end, { virtualEventId })

	local counters = useSelector(selectRsvpCounts)
	local fetchingStatus = useSelector(selectFetchingStatus)

	React.useEffect(function()
		if fetchingStatus == RoduxNetworking.Enum.NetworkStatus.NotStarted then
			dispatch(NetworkingVirtualEvents.GetVirtualEventRsvpCounts.API(virtualEventId)):catch(function(err)
				logger:debug(err)
			end)
		end
	end, { virtualEventId, fetchingStatus })

	return counters, fetchingStatus
end

return useRsvpCounters
