local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local ShareGame = RobloxGui.Modules.Settings.Pages.ShareGame
local dependencies = require(ShareGame.dependencies)

local NetworkingShareLinks = dependencies.NetworkingShareLinks

return function(dispatch)
    return {
        fetchShareInviteLink = function()
            -- TODO (timothyhsu): Set linkType once enum is available
            dispatch(NetworkingShareLinks.GenerateLink.API({ linkType = "" }))
        end
    }
end
