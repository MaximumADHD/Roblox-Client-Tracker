local CorePackages = game:GetService("CorePackages")
local Reducers = script.Parent
local Rodux = require(CorePackages.Packages.Rodux)
local FavoriteAssets = require(Reducers.FavoriteAssets)
local FavoriteBundles = require(Reducers.FavoriteBundles)

return Rodux.combineReducers({
	assets = FavoriteAssets,
	bundles = FavoriteBundles,
})
