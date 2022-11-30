local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local useDispatch = require(VirtualEvents.Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useSelector = require(VirtualEvents.Parent.RoactUtils).Hooks.RoactRodux.useSelector
local network = require(VirtualEvents.network)
local RoduxNetworking = network.RoduxNetworking
local NetworkingGames = network.NetworkingGames
local logger = require(VirtualEvents.logger)
local ExperienceDetailsModel = require(VirtualEvents.Models.ExperienceDetailsModel)

local function useExperienceDetails(universeId: number): (ExperienceDetailsModel.Response, string)
	local dispatch = useDispatch()
	local universeIdString = tostring(universeId)

	local selectDetails = React.useCallback(function(state: any)
		return state.VirtualEvents.experienceDetails[universeIdString]
	end, { universeIdString })

	local selectFetchingStatus = React.useCallback(function(state: any)
		return NetworkingGames.GetExperiencesDetails.getStatus(state, { universeIdString })
	end, { universeIdString })

	local details = useSelector(selectDetails)
	local fetchingStatus = useSelector(selectFetchingStatus)

	React.useEffect(function()
		if fetchingStatus == RoduxNetworking.Enum.NetworkStatus.NotStarted then
			dispatch(NetworkingGames.GetExperiencesDetails.API({ universeIdString })):catch(function(err)
				logger:debug(err)
			end)
		end
	end, { universeIdString, fetchingStatus })

	return details, fetchingStatus
end

return useExperienceDetails
