local Modules = game:GetService("CoreGui").RobloxGui.Modules
local InGameMenu = Modules.InGameMenuV3
local SocialDependencies = require(InGameMenu.SocialDependencies)

local NetworkingShareLinks = SocialDependencies.NetworkingShareLinks

return function(dispatch)
    return {
        fetchShareInviteLink = function()
            -- TODO (timothyhsu): Set linkType once enum is available
            dispatch(NetworkingShareLinks.GenerateLink.API({ linkType = "" }))
        end
    }
end
