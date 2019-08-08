local Plugin = script.Parent.Parent.Parent.Parent

local Util = Plugin.Core.Util
local AssetConfigConstants = require(Util.AssetConfigConstants)

local Actions = Plugin.Core.Actions
local NetworkError = require(Actions.NetworkError)
local SetOverrideAssets = require(Actions.SetOverrideAssets)

local function filterAssetByCreatorId(resultsArray, creatorId)
	local results = {}
	for index, asset in pairs(resultsArray) do
		if asset.Creator.Id == creatorId then
			table.insert(results, asset)
		end
	end
	return results
end

-- creatoryType can be "User" or "Group"
-- If creatorType is Group, creatorId is groupId
return function(networkInterface, creatorType, creatorId)
	return function(store)
		-- Probbaly need to go into constants
		local category = "MyModelsExceptPackage" -- Default to user's category
		local groupId = nil
		if creatorType == "Group" then
			category = "GroupModels"
			groupId = creatorId
		end

		local numPerPage = AssetConfigConstants.GetOverrideAssetNumbersPerPage

		return networkInterface:getOverrideModels(category, numPerPage, 1, "Relevance", groupId):andThen(function(result)
			local response = result.responseBody
			local totalResult = response.TotalResults
			local resultsArray = response.Results
			local filteredResultsArray = filterAssetByCreatorId(resultsArray, creatorId)

			store:dispatch(SetOverrideAssets(totalResult, resultsArray, filteredResultsArray))
		end, function(result)
			store:dispatch(NetworkError(result))
		end)
	end
end
