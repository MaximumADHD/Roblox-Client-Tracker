--!nonstrict
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local CorePackages = game:GetService("CorePackages")

local InGameMenu = script.Parent.Parent

local SetGameNameAndDescription = require(InGameMenu.Actions.SetGameNameAndDescription)

local httpImpl = require(InGameMenu.Network.httpRequest)(HttpRbxApiService)

local GetGameNameAndDescription = require(CorePackages.Workspace.Packages.GameDetailRodux).GetGameNameAndDescription

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
