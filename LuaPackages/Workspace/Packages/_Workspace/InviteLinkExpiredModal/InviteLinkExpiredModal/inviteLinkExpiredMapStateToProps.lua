local InviteLinkExpiredModal = script:FindFirstAncestor("InviteLinkExpiredModal")
local dependencies = require(InviteLinkExpiredModal.dependencies)

local NetworkingGames = dependencies.NetworkingGames
local RoduxNetworking = dependencies.RoduxNetworking
local SocialLibraries = dependencies.SocialLibraries

local NetworkStatus = RoduxNetworking.Enum.NetworkStatus
local getDeepValue = SocialLibraries.Dictionary.getDeepValue
local mapStateToProps = function(state, props)
	local universeId: string = props.universeId
	local experienceName: string =
		getDeepValue(state, string.format("InviteLinkExpiredModal.Games.byGameId.%s.name", universeId))

	local isLoading: boolean = #universeId > 0
		and NetworkingGames.GetExperiencesDetails.getStatus(state, universeId) == NetworkStatus.Fetching
	return {
		experienceName = experienceName,
		isLoading = isLoading,
		screenSize = state.ScreenSize :: Vector2,
	}
end

export type Props = typeof(mapStateToProps(...))

return mapStateToProps
