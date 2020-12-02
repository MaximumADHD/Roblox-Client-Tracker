local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Cryo)
local Promise = require(CorePackages.Promise)

local GetCurrentHumanoidDescription = require(script.Parent.GetCurrentHumanoidDescription)
local GetAssetIdsFromDescription = require(script.Parent.GetAssetIdsFromDescription)
local GetAssetNamesForIds = require(script.Parent.GetAssetNamesForIds)

local FFlagMakeGetAssetsDifferenceFaster = require(script.Parent.Flags.FFlagMakeGetAssetsDifferenceFaster)

if FFlagMakeGetAssetsDifferenceFaster then
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
else
	return function(humanoidDescription)
		local newAssetIds = GetAssetIdsFromDescription(humanoidDescription)
		local currentAssetIds = nil
		local removedAssetIds = {}

		local getRemovedAssetNames = GetCurrentHumanoidDescription():andThen(function(currentDescription)
			currentAssetIds = GetAssetIdsFromDescription(currentDescription)

			local newAssetMap = {}
			for _, id in ipairs(newAssetIds) do
				newAssetMap[id] = true
			end

			for _, id in ipairs(currentAssetIds) do
				if not newAssetMap[id] then
					table.insert(removedAssetIds, id)
				end
			end

			return GetAssetNamesForIds(removedAssetIds):andThen(function(assetIdNameMap)
				local nameList = {}

				for _, name in pairs(assetIdNameMap) do
					table.insert(nameList, name)
				end
				return nameList
			end)
		end)

		return Promise.all({
			GetAssetNamesForIds(newAssetIds),
			getRemovedAssetNames,
		}):andThen(function(results)
			local newIdNameMap = results[1]
			local removedNames = results[2]

			local currentAssetMap = {}
			for _, id in ipairs(currentAssetIds) do
				currentAssetMap[id] = true
			end

			local addedNames = {}
			local addedAssetIds = {}
			for id, name in pairs(newIdNameMap) do
				if not currentAssetMap[id] then
					table.insert(addedAssetIds, id)
					table.insert(addedNames, name)
				end
			end

			return {
				addedNames = addedNames,
				removedNames = removedNames,
				addedAssetIds = addedAssetIds,
				removedAssetIds = removedAssetIds
			}
		end)
	end
end