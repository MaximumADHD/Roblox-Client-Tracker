local HttpRbxApiService = game:GetService("HttpRbxApiService")
local CoreGui = game:GetService("CoreGui")

local InGameMenu = script.Parent.Parent

local SetGameAndDescriptionInfo = require(InGameMenu.Actions.SetGameAndDescriptionInfo)

local httpImpl = require(InGameMenu.Network.httpRequest)(HttpRbxApiService)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GetGameNameAndDescription = require(RobloxGui.Modules.Common.GetGameNameAndDescription)

local function requestGameNameAndDescription(store)
	if game.GameId == 0 then
		return
	end

	coroutine.wrap(function()
		GetGameNameAndDescription(httpImpl, game.GameId):andThen(function(
			gameNameLocaleMap, gameDescriptionsLocaleMap, sourceLocale)

			return store:dispatch(SetGameAndDescriptionInfo(gameNameLocaleMap, gameDescriptionsLocaleMap, sourceLocale))
		end):catch(function()
			warn("Unable to retrieve game name for in game menu")
		end)
	end)()
end

return requestGameNameAndDescription