--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Constants = require(CorePackages.Workspace.Packages.CoreScriptsCommon).Constants
local RobloxReplicatedStorage = game:GetService('RobloxReplicatedStorage')

-- Get server type
local RemoteFunction_GetServerType = Instance.new("RemoteFunction")
RemoteFunction_GetServerType.Name = "GetServerType"
RemoteFunction_GetServerType.Parent = RobloxReplicatedStorage

local function getServerType()
    if game.PrivateServerId ~= "" then
        if game.PrivateServerOwnerId ~= 0 then
            return Constants.VIP_SERVER
        else
            return Constants.RESERVED_SERVER
        end
    else
        return Constants.STANDARD_SERVER
    end
end

RemoteFunction_GetServerType.OnServerInvoke = getServerType
