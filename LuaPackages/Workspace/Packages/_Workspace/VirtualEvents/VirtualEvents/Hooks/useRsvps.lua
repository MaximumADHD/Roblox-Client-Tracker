-- FFlagUseGraphqlForAllVirtualEventData cleanup: Delete this file

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local useDispatch = require(VirtualEvents.Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local network = require(VirtualEvents.network)
local types = require(VirtualEvents.types)
local useSelector = require(VirtualEvents.Parent.RoactUtils).Hooks.RoactRodux.useSelector
local RoduxNetworking = network.RoduxNetworking
local NetworkingVirtualEvents = network.NetworkingVirtualEvents
local logger = require(VirtualEvents.logger)

local function useRsvps(virtualEventId: string): ({ [string]: types.RsvpResponse }, string)
	local dispatch = useDispatch()

	local selectRsvps = React.useCallback(function(state: any)
		local rsvps = state.VirtualEvents.rsvps.byVirtualEventId[virtualEventId]
		return if rsvps then rsvps else {}
	end, { virtualEventId })

	local selectFetchingStatus = React.useCallback(function(state: any)
		return NetworkingVirtualEvents.GetVirtualEventRsvps.getStatus(state, { virtualEventId })
	end, { virtualEventId })

	local rsvps = useSelector(selectRsvps)
	local fetchingStatus = useSelector(selectFetchingStatus)

	React.useEffect(function()
		if fetchingStatus == RoduxNetworking.Enum.NetworkStatus.NotStarted then
			dispatch(NetworkingVirtualEvents.GetVirtualEventRsvps.API(virtualEventId)):catch(function(err)
				logger:debug(err)
			end)
		end
	end, { virtualEventId, fetchingStatus })

	return rsvps, fetchingStatus
end

return useRsvps
