--!strict
local CoreGui = game:GetService("CoreGui")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Constants = require(RobloxGui.Modules.Common.Constants)

return function(instanceId: string, isCurrentPrivateServer: boolean)
	local getServerTypeRemoteFunction =
		RobloxReplicatedStorage:WaitForChild("GetServerType", math.huge) :: RemoteFunction
	local serverType = getServerTypeRemoteFunction:InvokeServer()
	if serverType == Constants.STANDARD_SERVER and instanceId == game.JobId then
		return true
	elseif serverType == Constants.RESERVED_SERVER or serverType == Constants.VIP_SERVER then
		-- TODO: Reserve servers require us to fetch a private server id to
		-- compare. Until RCC is live, use what is passed in.
		return isCurrentPrivateServer
	end

	return false
end
