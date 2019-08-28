local CorePackages = game:GetService("CorePackages")
local LuaApp = CorePackages.AppTempCommon.LuaApp
local ArgCheck = require(CorePackages.ArgCheck)

local Thumbnail = require(LuaApp.Models.Thumbnail)

local PerformFetch = require(LuaApp.Thunks.Networking.Util.PerformFetch)
local Promise = require(LuaApp.Promise)
local Result = require(LuaApp.Result)

local TableUtilities = require(LuaApp.TableUtilities)

local RETRY_MAX_COUNT = math.max(0, settings():GetFVariable("LuaAppNonFinalThumbnailMaxRetries"))
local RETRY_TIME_MULTIPLIER = math.max(0, settings():GetFVariable("LuaAppThumbnailsApiRetryTimeMultiplier")) -- seconds

local FetchSubdividedThumbnails = {}

function FetchSubdividedThumbnails._fetchIcons(store, networkImpl, targetIds, iconSize, keyMapper, requestName, fetchFunction, storeDispatch)
	local function keyMapperForCurrentRequestNameAndSize(targetId)
		return keyMapper({
			targetId = targetId,
			requestName = requestName,
			iconSize = iconSize
		})
	end

	local function getTableOfFailedResults(failedTargetIds)
		local results = {}
		for _, targetId in pairs(failedTargetIds) do
			local key = keyMapperForCurrentRequestNameAndSize(targetId)
			results[key] = Result.new(false, {
				targetId = targetId,
			})
		end
		return results
	end

	return fetchFunction(networkImpl, targetIds, iconSize):andThen(
		function(result)
			local results = getTableOfFailedResults(targetIds)
			local validIcons = {}

			local data = result and result.responseBody and result.responseBody.data
			if typeof(data) == "table" then
				for _, iconInfo in pairs(data) do
					if Thumbnail.isCompleteThumbnailData(iconInfo) then
						local targetId = tostring(iconInfo.targetId)
						local success = false
						if Thumbnail.checkStateIsFinal(iconInfo.state) then
							validIcons[targetId] = Thumbnail.fromThumbnailData(iconInfo, iconSize)
							success = true
						end
						results[keyMapperForCurrentRequestNameAndSize(targetId)] = Result.new(success, iconInfo)
					end
				end
			end
			store:dispatch(storeDispatch(validIcons))
			return Promise.resolve(results)
		end,
		function(err)
			local results = getTableOfFailedResults(targetIds)
			return Promise.resolve(results)
		end
	)
end

function FetchSubdividedThumbnails._fetch(store, networkImpl, targetIds, size, keyMapper, requestName, fetchFunction, storeDispatch)
	return FetchSubdividedThumbnails._fetchIcons(store, networkImpl, targetIds, size, keyMapper, requestName, fetchFunction, storeDispatch)
	:andThen(function(results)
		local completedIcons = {}
		local iconResults = results

		if _G.__TESTEZ_RUNNING_TEST__ then
			RETRY_MAX_COUNT = 1
			RETRY_TIME_MULTIPLIER = 0.001
		end

		local function retry(retryCount)
			local remainingUnfinalizedIcons = {}

			for k, result in pairs(iconResults) do
				local isSuccessful, iconInfo = result:unwrap()
				-- Retry icon request for targetId that failed.
				if isSuccessful and Thumbnail.checkStateIsFinal(iconInfo.state) then
					completedIcons[k] = result
				else
					table.insert(remainingUnfinalizedIcons, iconInfo)
				end
			end

			if TableUtilities.FieldCount(remainingUnfinalizedIcons) == 0 then
				--All requests are successful
				return Promise.resolve(completedIcons)
			end

			local delayPromise = Promise.new(function(resolve, reject)
				coroutine.wrap(function()
					wait(RETRY_TIME_MULTIPLIER * math.pow(2, retryCount - 1))
					resolve()
				end)()
			end)

			return delayPromise:andThen(function()
				return FetchSubdividedThumbnails._fetchIcons(store, networkImpl,
					targetIds, size, keyMapper, requestName, fetchFunction, storeDispatch)
			end):andThen(function(newResults)
				iconResults = newResults
				if retryCount > 1 then
					return retry(retryCount - 1)
				else
					return Promise.resolve(completedIcons)
				end
			end)
		end

		return retry(RETRY_MAX_COUNT)
	end)
end

function FetchSubdividedThumbnails.Fetch(networkImpl, requests, keyMapper, requestName, fetchFunction, storeDispatch)
	ArgCheck.isType(requests, "table", "requests")
	ArgCheck.isType(requestName, "string", "requestName")
	ArgCheck.isNonNegativeNumber(#requests, "requests count")

	FetchSubdividedThumbnails.KeyMapper = keyMapper
	return PerformFetch.Batch(requests, keyMapper, function(store, filteredrequests)
		local targetIdsNeeded = {}
		local size
		-- Filter out the icons that are already in the store.
		for _, request in ipairs(filteredrequests) do
			local targetId = request.targetId
			size = request.iconSize
			table.insert(targetIdsNeeded, targetId)
		end
		return FetchSubdividedThumbnails._fetch(store, networkImpl, targetIdsNeeded, size, keyMapper, requestName, fetchFunction, storeDispatch)
	end)
end

return FetchSubdividedThumbnails