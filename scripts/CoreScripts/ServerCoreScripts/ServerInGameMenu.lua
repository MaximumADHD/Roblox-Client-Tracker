local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui", math.huge)
local Constants = require(RobloxGui.Modules.Common.Constants)
local RobloxReplicatedStorage = game:GetService('RobloxReplicatedStorage')

local RemoteFunction_GetPrivateServerId = Instance.new("RemoteFunction")
RemoteFunction_GetPrivateServerId.Name = "GetPrivateServerId"
RemoteFunction_GetPrivateServerId.Parent = RobloxReplicatedStorage

local function getPrivateServerId()
    return game.PrivateServerId
end

RemoteFunction_GetPrivateServerId.OnServerInvoke = getPrivateServerId

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
