local clientReplicator
local function getClientReplicator()
	if clientReplicator == nil then
		local networkClient = game:FindService("NetworkClient")
		if networkClient then
			clientReplicator = networkClient:FindFirstChildOfClass("ClientReplicator")
		end
	end
	return clientReplicator
end

return getClientReplicator