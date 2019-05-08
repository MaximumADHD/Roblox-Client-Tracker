local InspectAndBuyFolder = script.Parent.Parent
local IsDetailsItemPartOfBundle = require(InspectAndBuyFolder.Selectors.IsDetailsItemPartOfBundle)
local UtilityFunctions = require(InspectAndBuyFolder.UtilityFunctions)

--[[
	Gets whether an item is favorited or not.
]]
return function(state)
	local assetId = state.detailsInformation.assetId
	if not assetId then
		return false
	end
	local isBundle = IsDetailsItemPartOfBundle(state)
	if isBundle == nil then
		return false
	end
	local assetInfo = state.assets[assetId]
	if not assetInfo then
		return false
	end

	if isBundle then
		local bundleId = UtilityFunctions.getBundleId(assetInfo)
		return state.favorites.bundles[bundleId]
	else
		return state.favorites.assets[assetId]
	end
end