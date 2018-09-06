local CorePackages = game:GetService("CorePackages")
local LuaApp = CorePackages.AppTempCommon.LuaApp

local GamesGetThumbnails = require(LuaApp.Http.Requests.GamesGetThumbnails)
local SetGameThumbnails = require(LuaApp.Actions.SetGameThumbnails)

local Functional = require(CorePackages.AppTempCommon.Common.Functional)
local Promise = require(LuaApp.Promise)
local Result = require(LuaApp.Result)

local TableUtilities = require(LuaApp.TableUtilities)

local THUMBNAIL_PAGE_COUNT = 20
local THUMBNAIL_SIZE = 150
local RETRY_MAX_COUNT = math.max(0, settings():GetFVariable("LuaAppNonFinalThumbnailMaxRetries"))
local RETRY_TIME_MULTIPLIER = 2 -- seconds

local function convertToId(value)
	if type(value) ~= "number" and type(value) ~= "string" then
		return Result.error("convertToId expects value passed in to be a number or a string")
	end

	return Result.success(tostring(value))
end

local function subdivideThumbnailTokenArray(thumbnailTokens, tokenLimit)
	local someTokens = {}
	for i = 1, #thumbnailTokens, tokenLimit do
		local subArray = Functional.Take(thumbnailTokens, tokenLimit, i)
		table.insert(someTokens, subArray)
	end

	return someTokens
end

local function fetchThumbnailBatch(networkImpl, store, thumbnailTokens)
	return GamesGetThumbnails(networkImpl, thumbnailTokens, THUMBNAIL_SIZE, THUMBNAIL_SIZE):andThen(function(result)
		local thumbnails = {}
		local unfinalizedThumbnails = {}

		for _,image in pairs(result.responseBody) do
			local convertToIdResult = convertToId(image.universeId)

			convertToIdResult:match(function(universeId)
				if image.final == false then
					unfinalizedThumbnails[universeId] = image.retryToken
				else
					-- index all of the thumbnails by universeId
					thumbnails[universeId] = image
				end
			end, function(convertToIdError)
				warn(convertToIdError)
			end)
		end

		store:dispatch(SetGameThumbnails(thumbnails))
		return Promise.resolve(unfinalizedThumbnails)
	end)
end

local function fetchSubdividedThumbnailsArray(networkImpl, store, thumbnailTokens)
	return fetchThumbnailBatch(networkImpl, store, thumbnailTokens):andThen(function(unfinalizedThumbnails)
		local remainingUnfinalizedThumbnails = unfinalizedThumbnails

		for retryCount = 1, RETRY_MAX_COUNT do
			if TableUtilities.FieldCount(remainingUnfinalizedThumbnails) == 0 then
				return -- Bail out, we're done!
			end

			wait(RETRY_TIME_MULTIPLIER * math.pow(2, retryCount - 1))
			remainingUnfinalizedThumbnails = fetchThumbnailBatch(networkImpl, store, remainingUnfinalizedThumbnails):await()
		end
	end)
end

local function fetchThumbnails(networkImpl, thumbnailTokens)
	return function(store)
		-- NOTE : because the size of each thumbnail token, me must limit the number we can fetch at a time.
		-- So break apart the array of tokens we get into smaller, more manageable pieces.
		local fetchPromises = {}
		local someTokens = subdivideThumbnailTokenArray(thumbnailTokens, THUMBNAIL_PAGE_COUNT)
		for _, thumbsArr in ipairs(someTokens) do
			local promise = fetchSubdividedThumbnailsArray(networkImpl, store, thumbsArr)
			table.insert(fetchPromises, promise)
		end

		return Promise.all(fetchPromises)
	end
end

return fetchThumbnails
