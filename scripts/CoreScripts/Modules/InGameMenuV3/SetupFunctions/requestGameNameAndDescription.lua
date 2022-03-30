local HttpRbxApiService = game:GetService("HttpRbxApiService")
local CoreGui = game:GetService("CoreGui")

local InGameMenu = script.Parent.Parent

local SetGameNameAndDescription = require(InGameMenu.Actions.SetGameNameAndDescription)

local httpImpl = require(InGameMenu.Network.httpRequest)(HttpRbxApiService)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GetGameNameAndDescription = require(RobloxGui.Modules.Common.GetGameNameAndDescription)
local ApiFetchGameIsFavorite = require(InGameMenu.Thunks.ApiFetchGameIsFavorite)
local ApiFetchGameFollowingStatus = require(InGameMenu.Thunks.ApiFetchGameFollowingStatus)

local function requestGameNameAndDescription(store)
	local gameId = game.GameId;
	if gameId == 0 then
		return
	end

	GetGameNameAndDescription(httpImpl, gameId):andThen(function(result)
		store:dispatch(SetGameNameAndDescription(result.Name, result.Description, result.Creator))
	end):catch(function()
		warn("Unable to retrieve game name for in game menu")
	end)

	store:dispatch(ApiFetchGameIsFavorite(httpImpl, tostring(gameId)))
	store:dispatch(ApiFetchGameFollowingStatus(httpImpl, tostring(gameId)))
end

return requestGameNameAndDescription
