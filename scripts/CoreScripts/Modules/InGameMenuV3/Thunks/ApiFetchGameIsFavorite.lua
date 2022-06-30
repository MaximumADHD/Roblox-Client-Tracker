local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local InGameMenu = script.Parent.Parent
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local log = require(RobloxGui.Modules.Logger):new(script.Name)
local Promise = require(CorePackages.AppTempCommon.LuaApp.Promise)
local GameGetIsFavorite = require(InGameMenu.Network.Requests.Games.GetIsFavorite)
local SetGameFavorite = require(InGameMenu.Actions.SetGameFavorite)

return function(networkImpl, universeId)
	if type(universeId) ~= "string" then
		error("ApiFetchGameIsFavorite thunk expects universeId to be a string")
	end

	return function(store)
		return GameGetIsFavorite(networkImpl, universeId):andThen(function(result)
			local data = result.responseBody

			if data ~= nil and data.isFavorited ~= nil then
				store:dispatch(SetGameFavorite(universeId, data.isFavorited))
				return result
			else
				log:warn("Response from GameGetIsFavorite is malformed!")
				return Promise.reject({ HttpError = Enum.HttpError.OK })
			end
		end)
	end
end
