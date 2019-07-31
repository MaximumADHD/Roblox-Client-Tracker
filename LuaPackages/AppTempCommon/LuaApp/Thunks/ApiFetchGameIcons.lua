local CorePackages = game:GetService("CorePackages")
local AppTempCommon = CorePackages.AppTempCommon
local Promise = require(AppTempCommon.LuaApp.Promise)
local ApiFetchThumbnails = require(AppTempCommon.LuaApp.Utils.ApiFetchThumbnails)
local GamesGetIcons = require(AppTempCommon.LuaApp.Http.Requests.GamesGetIcons)
local SetGameIcons = require(AppTempCommon.LuaApp.Actions.SetGameIcons)

local DEFAULT_ICON_SIZE = "150x150"

return function (networkImpl, universeIds, imageSize)
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
			return ApiFetchThumbnails.Fetch(networkImpl,
				idsToGet, imageSize or DEFAULT_ICON_SIZE, "Game", GamesGetIcons, SetGameIcons, store)
		end
	end
end