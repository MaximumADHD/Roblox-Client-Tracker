local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local useDispatch = require(VirtualEvents.Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useSelector = require(VirtualEvents.Parent.RoactUtils).Hooks.RoactRodux.useSelector
local network = require(VirtualEvents.network)
local RoduxNetworking = network.RoduxNetworking
local NetworkingGames = network.NetworkingGames
local types = require(VirtualEvents.types)
local logger = require(VirtualEvents.logger)

local function useVirtualEventMedia(virtualEvent: types.VirtualEvent)
	local dispatch = useDispatch()
	local universeId = tostring(virtualEvent.universeId)

	local selectMedia = React.useCallback(function(state: any)
		return state.VirtualEvents.media[universeId]
	end, { universeId })

	local selectFetchingStatus = React.useCallback(function(state: any)
		return NetworkingGames.GetExperienceMedia.getStatus(state, { universeId })
	end, { universeId })

	local media = useSelector(selectMedia)
	local fetchingStatus = useSelector(selectFetchingStatus)

	-- For the time being we are using NetworkingGames to retrieve media for
	-- VirtualEvents. In the future VirtualEvents will use a different backend
	-- for media so users can upload unique content for their events
	React.useEffect(function()
		if fetchingStatus == RoduxNetworking.Enum.NetworkStatus.NotStarted then
			dispatch(NetworkingGames.GetExperienceMedia.API(universeId)):catch(function(err)
				logger:debug(err)
			end)
		end
	end, { universeId, fetchingStatus })

	return media, fetchingStatus
end

return useVirtualEventMedia
