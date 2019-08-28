local Plugin = script.Parent.Parent.Parent.Parent

local Util = Plugin.Core.Util
local AssetConfigConstants = require(Util.AssetConfigConstants)

local Actions = Plugin.Core.Actions
local NetworkError = require(Actions.NetworkError)
local SetOverrideAssets = require(Actions.SetOverrideAssets)
local SetLoadingPage = require(Actions.SetLoadingPage)
local UpdateOverrideAssetData = require(Actions.UpdateOverrideAssetData)
local SetCurrentPage = require(Actions.SetCurrentPage)

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
return function(networkInterface, creatorType, creatorId, targetPage)
	return function(store)
		local loadingPage = store:getState().loadingPage or 0
		if targetPage > 1 then
			-- If targetPage bigger than 1, then fetchedAll will decide if we should reqeust more.
			if store:getState().fetchedAll then
				return
			end

			-- Make sure we only load target page once.
			if loadingPage >= targetPage then
				return
			end
		end

		store:dispatch(SetLoadingPage(targetPage))

		-- Probbaly need to go into constants
		local category = "MyModelsExceptPackage" -- Default to user's category
		local groupId = nil
		if creatorType == "Group" then
			category = "GroupModels"
			groupId = creatorId
		end

		local numPerPage = AssetConfigConstants.GetOverrideAssetNumbersPerPage

		return networkInterface:getOverrideModels(category, numPerPage, targetPage, "Relevance", groupId):andThen(function(result)
			local response = result.responseBody
			local totalResult = response.TotalResults
			local resultsArray = response.Results
			local filteredResultsArray = filterAssetByCreatorId(resultsArray, creatorId)

			if targetPage == 1 then
				-- TODO: Can remove and update this method after this change
				store:dispatch(SetOverrideAssets(totalResult, resultsArray, filteredResultsArray))
				store:dispatch(SetCurrentPage(1))
			else
				-- We can't check if we have fetched all asset by comparing resultsArray and totalResult.
				-- So, we will be sending more request, until the results returned is smaller than a pre-defined number.
				local fetchedAll = (#resultsArray <= 10)
				store:dispatch(UpdateOverrideAssetData(totalResult, resultsArray, filteredResultsArray, fetchedAll))
				store:dispatch(SetCurrentPage(targetPage))
			end

			SetLoadingPage(0)
		end, function(result)
			store:dispatch(NetworkError(result))
			SetLoadingPage(0)
		end)
	end
end
