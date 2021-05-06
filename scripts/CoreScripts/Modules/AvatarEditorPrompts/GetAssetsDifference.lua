local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Cryo)
local Promise = require(CorePackages.Promise)

local GetCurrentHumanoidDescription = require(script.Parent.GetCurrentHumanoidDescription)
local GetAssetIdsFromDescription = require(script.Parent.GetAssetIdsFromDescription)
local GetAssetNamesForIds = require(script.Parent.GetAssetNamesForIds)

return function(humanoidDescription)
	local function getAddedAndRemovedIds(currentAssetIds, newAssetIds)
		local currentAssetsSet = Cryo.List.toSet(currentAssetIds)
		local newAssetsSet = Cryo.List.toSet(newAssetIds)

		local addedAssetIds = Cryo.List.filter(newAssetIds, function(assetId)
			return currentAssetsSet[assetId] == nil
		end)

		local removedAssetIds = Cryo.List.filter(currentAssetIds, function(assetId)
			return newAssetsSet[assetId] == nil
		end)

		return addedAssetIds, removedAssetIds
	end

	return GetCurrentHumanoidDescription():andThen(function(currentDescription)
		local currentAssetIds = GetAssetIdsFromDescription(currentDescription)
		local newAssetIds = GetAssetIdsFromDescription(humanoidDescription)

		local addedAssetIds, removedAssetIds = getAddedAndRemovedIds(currentAssetIds, newAssetIds)

		return Promise.all({
			GetAssetNamesForIds(addedAssetIds),
			GetAssetNamesForIds(removedAssetIds),
		}):andThen(function(results)
			local addedNames = results[1]
			local removedNames = results[2]

			return {
				addedNames = addedNames,
				removedNames = removedNames,
				addedAssetIds = addedAssetIds,
				removedAssetIds = removedAssetIds
			}
		end)
	end)
end