-- FFlagUseGraphqlForAllVirtualEventData cleanup: Delete this file

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local Cryo = require(VirtualEvents.Parent.Cryo)
local React = require(VirtualEvents.Parent.React)
local useDispatch = require(VirtualEvents.Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local network = require(VirtualEvents.network)
local types = require(VirtualEvents.types)
local useSelector = require(VirtualEvents.Parent.RoactUtils).Hooks.RoactRodux.useSelector
local RoduxNetworking = network.RoduxNetworking
local NetworkingVirtualEvents = network.NetworkingVirtualEvents
local logger = require(VirtualEvents.logger)

local function selectVirtualEvents(state)
	local virtualEvents = Cryo.Dictionary.values(state.VirtualEvents.events)

	local sortedVirtualEvents = Cryo.List.sort(virtualEvents, function(a: types.VirtualEvent, z: types.VirtualEvent)
		return a.eventTime.startTime.UnixTimestamp < z.eventTime.startTime.UnixTimestamp
	end)

	return sortedVirtualEvents
end

local function selectFetcingStatus(state)
	return NetworkingVirtualEvents.GetActiveVirtualEvents.getStatus(state)
end

local function useActiveVirtualEvents()
	local dispatch = useDispatch()
	local virtualEvents = useSelector(selectVirtualEvents)
	local fetchingStatus = useSelector(selectFetcingStatus)

	React.useEffect(function()
		if fetchingStatus == RoduxNetworking.Enum.NetworkStatus.NotStarted then
			dispatch(NetworkingVirtualEvents.GetActiveVirtualEvents.API()):catch(function(err)
				logger:debug(err)
			end)
		end
	end, { fetchingStatus })

	return virtualEvents, fetchingStatus
end

return useActiveVirtualEvents
