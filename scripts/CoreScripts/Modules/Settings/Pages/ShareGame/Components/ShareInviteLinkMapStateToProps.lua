local Modules = game:GetService("CoreGui").RobloxGui.Modules
local ShareGame = Modules.Settings.Pages.ShareGame
local dependencies = require(ShareGame.dependencies)
local NetworkingShareLinks = dependencies.NetworkingShareLinks
local RoduxShareLinks = dependencies.RoduxShareLinks

return function(state)
	return {
		shareInviteLink = state.ShareLinks.Invites.ShareInviteLink,
		fetchShareInviteLinkNetworkStatus = NetworkingShareLinks.GenerateLink.getStatus(state, RoduxShareLinks.Enums.LinkType.ExperienceInvite.rawValue())
	}
end
