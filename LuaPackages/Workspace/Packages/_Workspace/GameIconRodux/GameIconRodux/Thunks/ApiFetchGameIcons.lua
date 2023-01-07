local GameIconRodux = script:FindFirstAncestor("GameIconRodux")
local Packages = GameIconRodux.Parent

local Promise = require(Packages.Promise)
local ApiFetchThumbnails = require(Packages.Http).Utils.ApiFetchThumbnails
local GamesGetIcons = require(Packages.Http).Requests.GamesGetIcons
local SetGameIcons = require(GameIconRodux.Actions).SetGameIcons

local DEFAULT_ICON_SIZE = "150x150"

return function(networkImpl, universeIds, imageSize: string?)
	return function(store)
		local state = store:getState()
		local stateToCheckForDuplicates = state.GameIcons

		-- Filter out the icons that are already in the store.
		local idsToGet = {}
		for _, targetId in pairs(universeIds) do
			if stateToCheckForDuplicates[targetId] == nil then
				table.insert(idsToGet, targetId)
			end
		end

		if #idsToGet == 0 then
			return Promise.resolve()
		else
			return ApiFetchThumbnails.Fetch(
				networkImpl,
				idsToGet,
				imageSize or DEFAULT_ICON_SIZE,
				"Game",
				GamesGetIcons,
				SetGameIcons,
				store
			)
		end
	end
end
