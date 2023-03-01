local Modules = game:GetService("CoreGui").RobloxGui.Modules
local ShareGame = Modules.Settings.Pages.ShareGame
local dependencies = require(ShareGame.dependencies)
local NetworkingShareLinks = dependencies.NetworkingShareLinks
local RoduxShareLinks = dependencies.RoduxShareLinks

local mapStateToProps = function(state)
	return {
		shareInviteLink = state.ShareLinks.Invites.ShareInviteLink :: {
			shortUrl: string?,
			linkId: string?,
		},
		fetchShareInviteLinkNetworkStatus = NetworkingShareLinks.GenerateLink.getStatus(state, RoduxShareLinks.Enums.LinkType.ExperienceInvite.rawValue()) :: string,
	}
end

export type Props = typeof(mapStateToProps(...))

return mapStateToProps
