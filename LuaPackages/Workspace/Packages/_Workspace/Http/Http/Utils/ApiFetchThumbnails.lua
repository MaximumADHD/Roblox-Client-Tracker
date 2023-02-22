--!nonstrict
local Http = script:FindFirstAncestor("Http")
local Packages = Http.Parent

local Cryo = require(Packages.Cryo)
local ArgCheck = require(Packages.ArgCheck)
local PromiseUtilities = require(Packages.AppCommonLib).Utils.PromiseUtilities
local FetchSubdividedThumbnails = require(script.Parent.FetchSubdividedThumbnails)

local PerformFetch = require(Http.PerformFetch)

local GetFFlagApiFetchThumbnailsKeyMapper = require(Packages.SharedFlags).GetFFlagApiFetchThumbnailsKeyMapper

local ICON_PAGE_COUNT = 100
local ICON_SIZE = "150x150"

local function convertToId(value)
	return tostring(value)
end

local ApiFetchThumbnails = {}

local keyMapper = function(request)
	local targetId = request.targetId
	local size = request.iconSize and "." .. request.iconSize or ""
	local requestName = request.requestName and "." .. request.requestName or ""
	return "luaapp.thumbnails." .. convertToId(targetId) .. size .. requestName
end

ApiFetchThumbnails.KeyMapper = keyMapper

local function subdivideIdsArray(requests, limit)
	local someTokens = {}
	for i = 1, #requests, limit do
		local subArray = Cryo.List.getRange(requests, i, i + limit - 1)
		table.insert(someTokens, subArray)
	end
	return someTokens
end

function ApiFetchThumbnails.Fetch(networkImpl, targetIds, imageSize, requestName, fetchFunction, storeDispatch, store)
	local size = imageSize or ICON_SIZE
	ArgCheck.isType(targetIds, "table", "targetIds")
	ArgCheck.isType(requestName, "string", "requestName")
	ArgCheck.isNonNegativeNumber(#targetIds, "targetIds count")

	local requests = {}
	local promises = {}
	-- Filter out the icons that are already in the store.
	for _, targetId in pairs(targetIds) do
		if GetFFlagApiFetchThumbnailsKeyMapper() then
			table.insert(requests, {
				targetId = targetId,
				iconSize = size,
				requestName = requestName,
			})
		else
			table.insert(requests, {
				targetId = targetId,
				iconSize = size,
			})
		end
	end
	local subdividedRequestsArray = subdivideIdsArray(requests, ICON_PAGE_COUNT)
	for _, subdividedRequests in ipairs(subdividedRequestsArray) do
		table.insert(
			promises,
			store:dispatch(
				FetchSubdividedThumbnails.Fetch(
					networkImpl,
					subdividedRequests,
					keyMapper,
					requestName,
					fetchFunction,
					storeDispatch
				)
			)
		)
	end

	return PromiseUtilities.Batch(promises)
end

function ApiFetchThumbnails.GetFetchingStatus(state, targetId, iconSize, requestName)
	return PerformFetch.GetStatus(
		state,
		keyMapper({ targetId = targetId, requestName = requestName, iconSize = iconSize })
	)
end

return ApiFetchThumbnails
