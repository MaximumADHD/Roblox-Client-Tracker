local CorePackages = game:GetService("CorePackages")
local dependencies = require(CorePackages.Workspace.Packages.NotificationsCommon).ReducerDependencies

local ShareLinksNetworking = dependencies.ShareLinksNetworking
local ShareLinksRodux = dependencies.ShareLinksRodux


local mapStateToProps = function(state)
	return {
		shareInviteLink = state.ShareLinks.Invites.ShareInviteLink :: {
			shortUrl: string?,
			linkId: string?,
		},
		fetchShareInviteLinkNetworkStatus = 
			ShareLinksNetworking.GenerateLink.getStatus(state, { linkType = ShareLinksRodux.Enums.LinkType.ExperienceInvite.rawValue() }) :: string
	}
end

export type Props = typeof(mapStateToProps(...))

return mapStateToProps
