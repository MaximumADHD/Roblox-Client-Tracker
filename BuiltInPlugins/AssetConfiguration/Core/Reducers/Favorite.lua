local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Rodux = require(Libs.Rodux)
local Cryo = require(Libs.Cryo)

local Actions = Plugin.Core.Actions
local GetFavoriteCounts = require(Actions.GetFavoriteCounts)
local GetFavorited = require(Actions.GetFavorited)
local CreateFavorite = require(Actions.CreateFavorite)
local DeleteFavorite = require(Actions.DeleteFavorite)

local Favorite = Rodux.createReducer({
	assetIdToCountsMap = {},
	assetIdToFavoritedMap = {},
}, {
	[GetFavoriteCounts.name] = function(state, action)
		local newIdMap = Cryo.Dictionary.join(state.assetIdToCountsMap, {
			[action.assetId] = action.favoriteCounts
		})

		return Cryo.Dictionary.join(state, {
			assetIdToCountsMap = newIdMap
		})
	end,

	[GetFavorited.name] = function(state, action)
		local newFavoritedMap = Cryo.Dictionary.join(state.assetIdToFavoritedMap, {
			[action.assetId] = action.favorited
		})

		return Cryo.Dictionary.join(state, {
			assetIdToFavoritedMap = newFavoritedMap
		})
	end,

	[CreateFavorite.name] = function(state, action)
		local assetId = action.assetId

		local newIdMap = Cryo.Dictionary.join(state.assetIdToCountsMap, {
			[action.assetId] = (state.assetIdToCountsMap[assetId] or 0) + 1
		})

		local newFavoritedMap = Cryo.Dictionary.join(state.assetIdToFavoritedMap, {
			[action.assetId] = true
		})

		return Cryo.Dictionary.join(state, {
			assetIdToCountsMap = newIdMap,
			assetIdToFavoritedMap = newFavoritedMap,
		})
	end,

	[DeleteFavorite.name] = function(state, action)
		local assetId = action.assetId

		local newIdMap = Cryo.Dictionary.join(state.assetIdToCountsMap, {
			[action.assetId] = (state.assetIdToCountsMap[assetId] or 0) - 1
		})

		local newFavoritedMap = Cryo.Dictionary.join(state.assetIdToFavoritedMap, {
			[action.assetId] = false
		})

		return Cryo.Dictionary.join(state, {
			assetIdToCountsMap = newIdMap,
			assetIdToFavoritedMap = newFavoritedMap,
		})
	end
})

return Favorite