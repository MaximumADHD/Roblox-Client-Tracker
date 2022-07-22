local Modules = game:GetService("CoreGui").RobloxGui.Modules
local InGameMenu = Modules.InGameMenuV3
local SocialDependencies = require(InGameMenu.SocialDependencies)
local Promise = require(InGameMenu.Utility.Promise)
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local SetServerType = require(InGameMenu.Actions.SetServerType)

local NetworkingShareLinks = SocialDependencies.NetworkingShareLinks
local GetFFlagShareInviteLinkContextMenuV3Enabled = require(InGameMenu.Flags.GetFFlagShareInviteLinkContextMenuV3Enabled)

return function(dispatch)
    return {
        fetchShareInviteLink = if GetFFlagShareInviteLinkContextMenuV3Enabled() then
            function(linkType)
                dispatch(NetworkingShareLinks.GenerateLink.API({ linkType = linkType }))
            end
        else nil,

        fetchServerType = if GetFFlagShareInviteLinkContextMenuV3Enabled() then
            function()
                Promise.new(function(resolve, reject)
                    coroutine.wrap(function()
                        local serverTypeRemote = RobloxReplicatedStorage:WaitForChild("GetServerType", math.huge)
                        local serverType = serverTypeRemote:InvokeServer()
                        resolve(serverType)
                    end)()
                end)
                    :andThen(function(serverType)
                        dispatch(SetServerType(serverType))
                    end)
            end
        else nil
    }
end
