--[[
	Call the corressponding functions to make the network request
]]
return function()
	return function(store, contextItems)
		local state = store:getState()
		local gameId = state.Metadata.gameId
		local gameOptionsController = contextItems.gameOptionsController
		gameOptionsController:shutdownAllServers(gameId)
	end
end
