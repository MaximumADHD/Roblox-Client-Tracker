local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Rodux)
local Cryo = require(CorePackages.Cryo)
local InspectAndBuyFolder = script.Parent.Parent
local SetFavoriteAsset = require(InspectAndBuyFolder.Actions.SetFavoriteAsset)

return Rodux.createReducer(
	{}
, {
	[SetFavoriteAsset.name] = function(state, action)
		local id = action.id
		local isFavorite = action.isFavorite
		return Cryo.Dictionary.join(state, {[id] = isFavorite})
	end
})