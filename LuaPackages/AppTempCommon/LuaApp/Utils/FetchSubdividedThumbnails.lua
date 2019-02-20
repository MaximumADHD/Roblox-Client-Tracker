local Modules = game:GetService("CoreGui").RobloxGui.Modules
local CorePackages = game:GetService("CorePackages")
local LuaApp = CorePackages.AppTempCommon.LuaApp
local ArgCheck = require(Modules.LuaApp.ArgCheck)

local Thumbnail = require(LuaApp.Models.Thumbnail)

local PerformFetch = require(Modules.LuaApp.Thunks.Networking.Util.PerformFetch)
local Promise = require(LuaApp.Promise)
local Result = require(LuaApp.Result)

local TableUtilities = require(LuaApp.TableUtilities)

local RETRY_MAX_COUNT = math.max(0, settings():GetFVariable("LuaAppNonFinalThumbnailMaxRetries"))
local RETRY_TIME_MULTIPLIER = 2 -- seconds

local function convertToId(value)
	return tostring(value)
end

local FetchSubdividedThumbnails = {}
function FetchSubdividedThumbnails._fetchIcons(store, networkImpl, targetIds, iconSize, keyMapper, requestName, fetchFunction, storeDispatch)
	return fetchFunction(networkImpl, targetIds, iconSize):andThen(
		function(result)
			local results = {}
			for _, targetId in ipairs(targetIds) do
				results[keyMapper({targetId = targetId, requestName = requestName, iconSize = iconSize})] = Result.new(false, {})
			end

			local validIcons = {}
			local data = result and result.responseBody and result.responseBody.data
			if data ~= nil then
				for _, iconInfo in pairs(data) do
					local success = false
					-- The request is only successful if the icon is in a completed state.
					if iconInfo.state == "Completed" then
						validIcons[convertToId(iconInfo.targetId)] = Thumbnail.fromThumbnailData(iconInfo, iconSize)
						success = true
					end
					results[keyMapper({targetId = iconInfo.targetId, requestName = requestName, iconSize = iconSize})] = Result.new(success, iconInfo)
				end
			end
			store:dispatch(storeDispatch(validIcons))
			return Promise.resolve(results)
		end,
		function(err)
			local results = {}
			for _, targetId in ipairs(targetIds) do
				results[keyMapper({targetId = targetId, requestName = requestName, iconSize = iconSize})] = Result.new(false, {})
			end
			return Promise.resolve(results)
		end)
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
				local _, iconInfo = result:unwrap()
				-- Retry icon request for targetId that failed.
				if iconInfo.state == "Completed" then
					completedIcons[k] = result
				else
					table.insert(remainingUnfinalizedIcons, iconInfo)
				end
			end

			if TableUtilities.FieldCount(remainingUnfinalizedIcons) == 0 then
				--All requests are successful
				return Promise.resolve(completedIcons)
			end

			-- exp retry for remining icons
			delay(RETRY_TIME_MULTIPLIER * math.pow(2, retryCount - 1), function()
				iconResults = FetchSubdividedThumbnails._fetchIcons(store, networkImpl,
					targetIds, size, keyMapper, requestName, fetchFunction, storeDispatch):await()

				if retryCount > 1 then
					retry(retryCount - 1)
				else
					return Promise.resolve(completedIcons)
				end
			end)
		end

		retry(RETRY_MAX_COUNT)
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