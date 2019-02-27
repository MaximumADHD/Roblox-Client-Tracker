local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Cryo)

local Actions = CorePackages.AppTempCommon.LuaApp.Actions
local Requests = CorePackages.AppTempCommon.LuaApp.Http.Requests

local UsersGetThumbnail = require(Requests.UsersGetThumbnail)

local ThumbnailsGetAvatar = require(CorePackages.AppTempCommon.LuaApp.Http.Requests.ThumbnailsGetAvatar)
local ThumbnailsGetAvatarHeadshot = require(CorePackages.AppTempCommon.LuaApp.Http.Requests.ThumbnailsGetAvatarHeadshot)

local AvatarThumbnailTypes = require(CorePackages.AppTempCommon.LuaApp.Enum.AvatarThumbnailTypes)

local SetUserThumbnail = require(Actions.SetUserThumbnail)
local Promise = require(CorePackages.AppTempCommon.LuaApp.Promise)
local PerformFetch = require(CorePackages.AppTempCommon.LuaApp.Thunks.Networking.Util.PerformFetch)
local Result = require(CorePackages.AppTempCommon.LuaApp.Result)

local FFlagLuaAppUseNewAvatarThumbnailsApi = settings():GetFFlag("LuaAppUseNewAvatarThumbnailsApi")

if FFlagLuaAppUseNewAvatarThumbnailsApi then
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

	function ApiFetchUsersThumbnail._fetch(networkImpl, userIds, thumbnailRequest)
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

		return PerformFetch.Batch(userIds, keyMapperForCurrentTypeAndSize, function(store, userIdsToFetch)
			return thumbnailsApiForThumbnailType(networkImpl, userIdsToFetch, thumbnailSizeRequestArg):andThen(
				function(result)
					assert(typeof(result.responseBody.data) == "table", "Malformed response from server, missing 'data' object")

					local results = {}
					for _, entry in pairs(result.responseBody.data) do
						local userId = tostring(entry.targetId)
						local key = keyMapper(userId, thumbnailType, thumbnailSize)
						local success = false

						if entry.state == "Completed" then
							store:dispatch(SetUserThumbnail(tostring(entry.targetId), entry.imageUrl, thumbnailType, thumbnailSize))
							success = true
						end
						results[key] = Result.new(success, entry)
					end

					return Promise.resolve(results)
				end,
				function(err)
					local results = {}
					for _, userId in pairs(userIdsToFetch) do
						local key = keyMapper(userId, thumbnailType, thumbnailSize)
						results[key] = Result.new(false, {})
					end

					return Promise.resolve(results)
				end
			)
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

			return Promise.all(allPromises)
		end
	end

	function ApiFetchUsersThumbnail.GetFetchingStatus(state, userId, thumbnailType, thumbnailSize)
		return PerformFetch.GetStatus(state, keyMapper(userId, thumbnailType, thumbnailSize))
	end

	return ApiFetchUsersThumbnail

else
	local function fetchThumbnailsBatch(networkImpl, userIds, thumbnailRequest)
		local fetchedPromises = {}

		for _, userId in pairs(userIds) do
			table.insert(fetchedPromises,
				UsersGetThumbnail(userId, thumbnailRequest.thumbnailType, thumbnailRequest.thumbnailSize)
			)
		end

		return Promise.all(fetchedPromises)
	end

	return function(networkImpl, userIds, thumbnailRequests)
		return function(store)
			-- We currently cannot batch request user avatar thumbnails,
			-- so each thumbnailRequest has to be processed individually.

			local fetchedPromises = {}
			for _, thumbnailRequest in pairs(thumbnailRequests) do
				table.insert(fetchedPromises,
					fetchThumbnailsBatch(networkImpl, userIds, thumbnailRequest):andThen(function(result)
						for _, data in pairs(result) do
							store:dispatch(SetUserThumbnail(data.id, data.image, data.thumbnailType, data.thumbnailSize))
						end
					end)
				)
			end

			return Promise.all(fetchedPromises)
		end
	end
end
