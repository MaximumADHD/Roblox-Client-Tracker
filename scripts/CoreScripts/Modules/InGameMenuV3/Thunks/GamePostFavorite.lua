local CorePackages = game:GetService("CorePackages")
local InGameMenu = script.Parent.Parent
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Promise = InGameMenuDependencies.Promise

local GamePostFavoriteRequest = require(InGameMenu.Network.Requests.Games.PostFavorite)
local SetGameFavorite = require(InGameMenu.Actions.SetGameFavorite)

local PerformFetch = require(CorePackages.Workspace.Packages.Http).PerformFetch

local function GamePostFavorite(networkImpl, universeId, isFavorited)
	if type(universeId) ~= "string" then
		error("GamePostFavorite thunk expects universeId to be a string")
	end

	if type(isFavorited) ~= "boolean" then
		error("GamePostFavorite thunk expects isFavorited to be a boolean")
	end

	return PerformFetch.Single("GamePostFavorite" .. universeId, function(store)
		return GamePostFavoriteRequest(networkImpl, universeId, isFavorited):andThen(function(result)
			local currentIsFavorite = store:getState().gameInfo.isFavorited
			if currentIsFavorite ~= isFavorited then
				return GamePostFavorite(networkImpl, universeId, currentIsFavorite)
			else
				return Promise.resolve(result)
			end
		end, function(err)
			store:dispatch(SetGameFavorite(universeId, not isFavorited))
			return Promise.reject(err)
		end)
	end)
end

return GamePostFavorite
