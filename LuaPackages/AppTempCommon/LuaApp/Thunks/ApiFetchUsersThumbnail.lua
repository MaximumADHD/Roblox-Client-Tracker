local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Cryo)

local Actions = CorePackages.AppTempCommon.LuaApp.Actions
local TableUtilities = require(CorePackages.AppTempCommon.LuaApp.TableUtilities)
local PromiseUtilities = require(CorePackages.AppTempCommon.LuaApp.PromiseUtilities)

local ThumbnailsGetAvatar = require(CorePackages.AppTempCommon.LuaApp.Http.Requests.ThumbnailsGetAvatar)
local ThumbnailsGetAvatarHeadshot = require(CorePackages.AppTempCommon.LuaApp.Http.Requests.ThumbnailsGetAvatarHeadshot)

local AvatarThumbnailTypes = require(CorePackages.AppTempCommon.LuaApp.Enum.AvatarThumbnailTypes)

local SetUserThumbnail = require(Actions.SetUserThumbnail)
local Promise = require(CorePackages.AppTempCommon.LuaApp.Promise)
local PerformFetch = require(CorePackages.AppTempCommon.LuaApp.Thunks.Networking.Util.PerformFetch)
local Result = require(CorePackages.AppTempCommon.LuaApp.Result)

local RETRY_MAX_COUNT = math.max(0, settings():GetFVariable("LuaAppNonFinalThumbnailMaxRetries"))
local RETRY_TIME_MULTIPLIER = math.max(0, settings():GetFVariable("LuaAppThumbnailsApiRetryTimeMultiplier"))

local MAX_REQUEST_COUNT = 100

local ThumbnailsTypeToApiMap = {
	[AvatarThumbnailTypes.AvatarThumbnail] = ThumbnailsGetAvatar,
	[AvatarThumbnailTypes.HeadShot] = ThumbnailsGetAvatarHeadshot,
}

local function subdivideEntries(entries, limit)
	local subArrays = {}
	for i = 1, #entries, limit do
		local subArray = Cryo.List.getRange(entries, i, i + limit - 1)
		table.insert(subArrays, subArray)
	end
	return subArrays
end

local function keyMapper(userId, thumbnailType, thumbnailSize)
	return "luaapp.usersthumbnailsapi." .. userId .. "." .. thumbnailType .. "." .. thumbnailSize
end

local function isCompleteThumbnailData(entry)
	return type(entry) == "table"
		and type(entry.targetId) == "number"
		and type(entry.state) == "string"
		and type(entry.imageUrl) == "string"
end

local ApiFetchUsersThumbnail = {}

function ApiFetchUsersThumbnail.getThumbnailsSizeArgForSize(thumbnailSize)
	assert(typeof(thumbnailSize) == "string",
		string.format("ApiFetchUsersThumbnail expects a string for thumbnailSize. Type: %s", typeof(thumbnailSize))
	)

	assert(string.match(thumbnailSize, 'Size.+x'),
		string.format(
			"ApiFetchUsersThumbnail expects thumbnailSize to follow format \"Size..x..\" Current thumbnailSize: ",
			thumbnailSize
		)
	)
	return string.gsub(thumbnailSize, "Size", "")
end

function ApiFetchUsersThumbnail._fetch(networkImpl, listOfUserIds, thumbnailRequest)
	local thumbnailSize = thumbnailRequest.thumbnailSize
	local thumbnailType = thumbnailRequest.thumbnailType

	local thumbnailSizeRequestArg = ApiFetchUsersThumbnail.getThumbnailsSizeArgForSize(thumbnailSize)
	local thumbnailsApiForThumbnailType = ThumbnailsTypeToApiMap[thumbnailType]

	assert(typeof(thumbnailType) == "string",
		"ApiFetchUsersThumbnail expects thumbnailType to be a string")
	assert(typeof(thumbnailsApiForThumbnailType) == "function",
		"ApiFetchUsersThumbnail failed to find api for given type: ", thumbnailType)

	local function keyMapperForCurrentTypeAndSize(userId)
		return keyMapper(userId, thumbnailType, thumbnailSize)
	end

	local function getTableOfFailedResults(userIds)
		local results = {}
		for _, userId in pairs(userIds) do
			local key = keyMapperForCurrentTypeAndSize(userId)
			results[key] = Result.new(false, {
				targetId = userId,
			})
		end
		return results
	end

	return PerformFetch.Batch(listOfUserIds, keyMapperForCurrentTypeAndSize, function(store, userIdsToFetch)
		local function fetchThumbnails(userIdsProvided)
			return thumbnailsApiForThumbnailType(networkImpl, userIdsProvided, thumbnailSizeRequestArg):andThen(
				function(result)
					local results = getTableOfFailedResults(userIdsProvided)
					local data = result and result.responseBody and result.responseBody.data
					if typeof(data) == "table" then
						for _, entry in pairs(data) do
							if isCompleteThumbnailData(entry) then
								local userId = tostring(entry.targetId)
								local key = keyMapperForCurrentTypeAndSize(userId)
								local success = false
								if entry.state == "Completed" then
									store:dispatch(SetUserThumbnail(tostring(entry.targetId), entry.imageUrl, thumbnailType, thumbnailSize))
									success = true
								end
								results[key] = Result.new(success, entry)
							end
						end
					end

					return Promise.resolve(results)
				end,
				function(err)
					local results = getTableOfFailedResults(userIdsProvided)
					return Promise.resolve(results)
				end
			)
		end

		return fetchThumbnails(userIdsToFetch):andThen(function(results)
			local completedThumbnails = {}
			local thumbnailResults = results

			if _G.__TESTEZ_RUNNING_TEST__ then
				RETRY_MAX_COUNT = 1
				RETRY_TIME_MULTIPLIER = 0.001
			end

			local function retry(retryCount)
				local remainingUserIdsToFetch = {}

				for key, result in pairs(thumbnailResults) do
					local isSuccessful, thumbnailInfo = result:unwrap()

					if isSuccessful and thumbnailInfo.state == "Completed" then
						completedThumbnails[key] = result
					elseif isSuccessful and thumbnailInfo.state == "Pending" then
						table.insert(remainingUserIdsToFetch, thumbnailInfo.targetId)
					end
				end

				if TableUtilities.FieldCount(remainingUserIdsToFetch) == 0 then
					return Promise.resolve(completedThumbnails)
				end

				local delayPromise = Promise.new(function(resolve, reject)
					coroutine.wrap(function()
						wait(RETRY_TIME_MULTIPLIER * math.pow(2, retryCount - 1))
						resolve()
					end)()
				end)

				return delayPromise:andThen(function()
					return fetchThumbnails(remainingUserIdsToFetch)
				end):andThen(function(newResults)
					thumbnailResults = newResults
					if retryCount > 1 then
						return retry(retryCount - 1)
					else
						return Promise.resolve(completedThumbnails)
					end
				end)
			end

			return retry(RETRY_MAX_COUNT)
		end)
	end)
end

function ApiFetchUsersThumbnail.Fetch(networkImpl, userIds, thumbnailRequests)
	return function(store)
		local allPromises = {}
		local subArraysOfUserIds = subdivideEntries(userIds, MAX_REQUEST_COUNT)

		for _, thumbnailRequest in pairs(thumbnailRequests) do
			for _, limitedListOfUserIds in pairs(subArraysOfUserIds) do
				local promise = store:dispatch(ApiFetchUsersThumbnail._fetch(networkImpl, limitedListOfUserIds, thumbnailRequest))
				table.insert(allPromises, promise)
			end
		end

		return PromiseUtilities.Batch(allPromises)
	end
end

function ApiFetchUsersThumbnail.GetFetchingStatus(state, userId, thumbnailType, thumbnailSize)
	return PerformFetch.GetStatus(state, keyMapper(userId, thumbnailType, thumbnailSize))
end

return ApiFetchUsersThumbnail