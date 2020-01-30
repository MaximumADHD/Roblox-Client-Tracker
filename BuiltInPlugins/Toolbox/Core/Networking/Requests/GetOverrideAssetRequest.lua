local Plugin = script.Parent.Parent.Parent.Parent

local Util = Plugin.Core.Util
local AssetConfigConstants = require(Util.AssetConfigConstants)
local PagedRequestCursor = require(Util.PagedRequestCursor)

local Actions = Plugin.Core.Actions
local NetworkError = require(Actions.NetworkError)
local SetOverrideAssets = require(Actions.SetOverrideAssets)
local SetLoadingPage = require(Actions.SetLoadingPage)
local UpdateOverrideAssetData = require(Actions.UpdateOverrideAssetData)
local SetCurrentPage = require(Actions.SetCurrentPage)
local SetOverrideCursor = require(Actions.SetOverrideCursor)

local FFlagUseCreationToFetchMyOverrideData2 = game:GetFastFlag("UseCreationToFetchMyOverrideData2")
local FFlagEnableOverrideAssetCursorFix = game:GetFastFlag("EnableOverrideAssetCursorFix")

local FFlagEnablePurchasePluginFromLua2 = settings():GetFFlag("EnablePurchasePluginFromLua2")

local function filterAssetByCreatorId(resultsArray, creatorId)
	local results = {}
	for index, asset in pairs(resultsArray) do
		if asset.Creator.Id == creatorId then
			table.insert(results, asset)
		end
	end
	return results
end

local function convertCreationsDetailsToResultsFormat(creationData)
	local result = {}
	if creationData then
		for index, value in pairs(creationData) do
			local assetResultTable =  {
				Asset = {
					Id = value.assetId,
					Name = value.name,
				},
			}
			result[#result + 1] = assetResultTable
		end
	end
	return result
end

-- creatoryType can be "User" or "Group"
-- If creatorType is Group, creatorId is groupId
return function(networkInterface, assetTypeEnum, creatorType, creatorId, targetPage)
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

		local handleOverrideResult = function(result)
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
		end

		local handleOverrideFailed = function(result)
			store:dispatch(NetworkError(result))
			SetLoadingPage(0)
		end

		local handleGetCreationOverrideSuccss = function(response)
			local result = response.responseBody
			-- Mark it so we know we are not using it.
			local totalResult = -1

			-- In this case, resultsArray and filteredResultsArray are the same.
			local resultsArray = convertCreationsDetailsToResultsFormat(result.data)
			local filteredResultsArray = resultsArray
			if targetPage == 1 then
				-- TODO: Can remove and update this method after this change
				store:dispatch(SetOverrideAssets(totalResult, resultsArray, filteredResultsArray))

				-- If we swtich to page 1, we will be using an new cursor
				local defaultCursor = FFlagEnableOverrideAssetCursorFix and {} or PagedRequestCursor.createDefaultCursor()
				store:dispatch(SetOverrideCursor(defaultCursor))
				store:dispatch(SetCurrentPage(1))
			else
				if FFlagEnableOverrideAssetCursorFix then
					local currentCursor = store:getState().overrideCursor
					local isNextPageAvailable = result.nextPageCursor ~= nil
					local fetchedAll = not isNextPageAvailable
					if isNextPageAvailable then
						currentCursor = {
							nextPageCursor = result.nextPageCursor
						}
					end

					store:dispatch(UpdateOverrideAssetData(totalResult, resultsArray, filteredResultsArray, fetchedAll))
					store:dispatch(SetOverrideCursor(currentCursor))
					store:dispatch(SetCurrentPage(targetPage))
				else
					-- For creation, we can check if we have next cursor to see if we have reached the end.
					local fetchedAll = result.nextPageCursor and true or false
					local nextCursor = PagedRequestCursor.createCursor(result.responseBody)

					store:dispatch(UpdateOverrideAssetData(totalResult, resultsArray, filteredResultsArray, fetchedAll))
					store:dispatch(SetOverrideCursor(nextCursor))
					store:dispatch(SetCurrentPage(targetPage))
				end
			end

			SetLoadingPage(0)
		end

		if FFlagEnablePurchasePluginFromLua2 then
			if FFlagUseCreationToFetchMyOverrideData2 then
				local category = "Model"
				local groupId = nil
				if creatorType == "Group" then
					groupId = creatorId
					category = assetTypeEnum == Enum.AssetType.Model and "GroupModels" or "GroupPlugins"
				else
					if assetTypeEnum == Enum.AssetType.Plugin then
						category = "Plugin"
					end
				end

				if creatorType == "Group" then
					local numPerPage = AssetConfigConstants.GetOverrideAssetNumbersPerPage
					return networkInterface:getOverrideModels(category, numPerPage, targetPage, "Relevance", groupId):andThen(
						handleOverrideResult,
						handleOverrideFailed
					)
				else
					if FFlagEnableOverrideAssetCursorFix then
						local currentCursor = store:getState().overrideCursor
						local targetCursor = ""
						if currentCursor.nextPageCursor then
							targetCursor = currentCursor.nextPageCursor
						end

						return networkInterface:getAssetCreations(nil, targetCursor, category):andThen(
							handleGetCreationOverrideSuccss,
							handleOverrideFailed
						)
					else
						local currentCursor = store:getState().overrideCursor
						currentCursor = currentCursor or PagedRequestCursor.createDefaultCursor()
						if PagedRequestCursor.isNextPageAvailable(currentCursor) then
							if PagedRequestCursor.isNextPageAvailable(currentCursor) then
								return networkInterface:getAssetCreations(nil, PagedRequestCursor.getNextPageCursor(currentCursor), category):andThen(
									handleGetCreationOverrideSuccss,
									handleOverrideFailed
								)
							end
						end
					end
				end
			else
				-- We will be using creation endpoint to fetch models to override.
				local category = "Model"
				local groupId = nil
				if creatorType == "Group" then
					category = "GroupModels"
					groupId = creatorId
				end

				local numPerPage = AssetConfigConstants.GetOverrideAssetNumbersPerPage

				-- For model we will be using cursor while targetPage for groups
				-- We will still using loadingPage and currentPage to check if we want to load next page.
				-- And we will be using current cursor to index next page.
				if category == "Model" then
					local currentCursor = store:getState().overrideCursor or PagedRequestCursor.createDefaultCursor()
					if PagedRequestCursor.isNextPageAvailable(currentCursor) then
						return networkInterface:getAssetCreations(nil, PagedRequestCursor.getNextPageCursor(currentCursor), "Model"):andThen(
							handleGetCreationOverrideSuccss,
							handleOverrideFailed)
					end
				else
					return networkInterface:getOverrideModels(category, numPerPage, targetPage, "Relevance", groupId):andThen(
						handleOverrideResult,
						handleOverrideFailed
					)
				end
			end
		else
			local category = "MyModelsExceptPackage" -- Default to user's category
			local groupId = nil
			if creatorType == "Group" then
				category = "GroupModels"
				groupId = creatorId
			end

			local numPerPage = AssetConfigConstants.GetOverrideAssetNumbersPerPage

			return networkInterface:getOverrideModels(category, numPerPage, targetPage, "Relevance", groupId):andThen(
				handleOverrideResult,
				handleOverrideFailed
			)
		end
	end
end
