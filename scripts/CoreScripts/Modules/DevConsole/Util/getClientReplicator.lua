local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")

local GetFFlagClientReplicatorCheck = require(RobloxGui.Modules.Flags.GetFFlagGetClientReplicatorCheck)

local clientReplicator
local function getClientReplicator()
	if clientReplicator == nil then
		local networkClient = game:FindService("NetworkClient")
		if networkClient then
			clientReplicator = networkClient:FindFirstChildOfClass("ClientReplicator")
		end
	end
	
	if GetFFlagClientReplicatorCheck() then
		return if clientReplicator and clientReplicator:IsDescendantOf(game) then clientReplicator else nil
	end
	
	return clientReplicator
end

return getClientReplicator