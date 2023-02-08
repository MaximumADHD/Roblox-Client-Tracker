local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local ApolloClient = require(VirtualEvents.Parent.ApolloClient)
local React = require(VirtualEvents.Parent.React)
local useDispatch = require(VirtualEvents.Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local getRetrievalStatusFromApolloQuery = require(VirtualEvents.Common.getRetrievalStatusFromApolloQuery)
local network = require(VirtualEvents.network)
local types = require(VirtualEvents.types)
local useSelector = require(VirtualEvents.Parent.RoactUtils).Hooks.RoactRodux.useSelector
local RoduxNetworking = network.RoduxNetworking
local NetworkingVirtualEvents = network.NetworkingVirtualEvents
local logger = require(VirtualEvents.logger)
local getFFlagVirtualEventsGraphQL = require(VirtualEvents.Parent.SharedFlags).getFFlagVirtualEventsGraphQL

local gql = ApolloClient.gql
local useQuery = ApolloClient.useQuery

local GET_VIRTUAL_EVENT = gql([[
	query virtualEvent($virtualEventId: ID!) {
		virtualEvent(id: $virtualEventId) {
			id
			title
			description
			host {
				hostType
				hostId
				hostName
				hasVerifiedBadge
			}
			universeId
			eventStatus
			eventTime {
				startUtc
				endUtc
			}
			userRsvpStatus
			rsvps {
				userId
				rsvpStatus
			}
			rsvpCounters {
				none
				going
				maybeGoing
				notGoing
			}
			experienceDetails {
				id
				name
			}
			media {
				assetType
			}
		}
	}
]])

local function useVirtualEvent(virtualEventId: string): (types.VirtualEvent, string)
	if getFFlagVirtualEventsGraphQL() then
		local result = useQuery(GET_VIRTUAL_EVENT, {
			variables = {
				virtualEventId = virtualEventId,
			},
		})

		local fetchingStatus = React.useMemo(function()
			return getRetrievalStatusFromApolloQuery(result)
		end, { result })

		local virtualEvent = if result.data then result.data.virtualEvent else nil

		return virtualEvent, fetchingStatus
	else
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
end

return useVirtualEvent
