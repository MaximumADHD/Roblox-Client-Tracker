local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")

local clientReplicator
local function getClientReplicator()
	if clientReplicator == nil then
		local networkClient = game:FindService("NetworkClient")
		if networkClient then
			clientReplicator = networkClient:FindFirstChildOfClass("ClientReplicator")
		end
	end
	
	return if clientReplicator and clientReplicator:IsDescendantOf(game) then clientReplicator else nil
end

return getClientReplicator