local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local ShareGame = RobloxGui.Modules.Settings.Pages.ShareGame
local dependencies = require(ShareGame.dependencies)

local NetworkingShareLinks = dependencies.NetworkingShareLinks
local RoduxShareLinks = dependencies.RoduxShareLinks

return function(dispatch)
    return {
        fetchShareInviteLink = function()
            dispatch(NetworkingShareLinks.GenerateLink.API({ linkType = RoduxShareLinks.Enums.LinkType.ExperienceInvite.rawValue() }))
        end
    }
end
