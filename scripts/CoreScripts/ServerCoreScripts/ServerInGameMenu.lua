--!nonstrict
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui", math.huge)
local Constants = require(RobloxGui.Modules.Common.Constants)
local RobloxReplicatedStorage = game:GetService('RobloxReplicatedStorage')
local FFlagGetJoinDataRemoteFunctionEnabled = game:DefineFastFlag("GetJoinDataRemoteFunctionEnabled", false)

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

-- Get join data
if FFlagGetJoinDataRemoteFunctionEnabled then
    local RemoteFunction_GetJoinData = Instance.new("RemoteFunction")
    RemoteFunction_GetJoinData.Name = "GetJoinData"
    RemoteFunction_GetJoinData.Parent = RobloxReplicatedStorage
    
    local function getJoinData(player)
        return player:GetJoinData()
    end
    
    RemoteFunction_GetJoinData.OnServerInvoke = getJoinData
end
