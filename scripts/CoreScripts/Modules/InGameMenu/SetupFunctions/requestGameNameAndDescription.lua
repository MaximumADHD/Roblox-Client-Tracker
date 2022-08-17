--!nonstrict
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local CoreGui = game:GetService("CoreGui")

local InGameMenu = script.Parent.Parent

local SetGameNameAndDescription = require(InGameMenu.Actions.SetGameNameAndDescription)

local httpImpl = require(InGameMenu.Network.httpRequest)(HttpRbxApiService)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GetGameNameAndDescription = require(RobloxGui.Modules.Common.GetGameNameAndDescription)

local function requestGameNameAndDescription(store)
	if game.GameId == 0 then
		return
	end

	GetGameNameAndDescription(httpImpl, game.GameId):andThen(function(result)
		store:dispatch(SetGameNameAndDescription(result.Name, result.Description))
	end):catch(function()
		warn("Unable to retrieve game name for in game menu")
	end)
end

return requestGameNameAndDescription
