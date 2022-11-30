local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local useDispatch = require(VirtualEvents.Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local network = require(VirtualEvents.network)
local types = require(VirtualEvents.types)
local useSelector = require(VirtualEvents.Parent.RoactUtils).Hooks.RoactRodux.useSelector
local RoduxNetworking = network.RoduxNetworking
local NetworkingVirtualEvents = network.NetworkingVirtualEvents
local logger = require(VirtualEvents.logger)

local function useVirtualEvent(virtualEventId: string): (types.VirtualEvent, string)
	local dispatch = useDispatch()

	local selectVirtualEvent = React.useCallback(function(state: any)
		return state.VirtualEvents.events[virtualEventId]
	end, { virtualEventId })

	local selectFetchingStatus = React.useCallback(function(state: any)
		return NetworkingVirtualEvents.GetVirtualEvent.getStatus(state, { virtualEventId })
	end, { virtualEventId })

	local virtualEvent = useSelector(selectVirtualEvent)
	local fetchingStatus = useSelector(selectFetchingStatus)

	if virtualEvent then
		fetchingStatus = RoduxNetworking.Enum.NetworkStatus.Done
	end

	React.useEffect(function()
		if fetchingStatus == RoduxNetworking.Enum.NetworkStatus.NotStarted then
			dispatch(NetworkingVirtualEvents.GetVirtualEvent.API(virtualEventId)):catch(function(err)
				logger:debug(err)
			end)
		end
	end, { virtualEventId, fetchingStatus })

	return virtualEvent, fetchingStatus
end

return useVirtualEvent
