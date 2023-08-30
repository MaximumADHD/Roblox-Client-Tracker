local CorePackages = game:GetService("CorePackages")
local dependencies = require(CorePackages.Workspace.Packages.NotificationsCommon).ReducerDependencies
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
