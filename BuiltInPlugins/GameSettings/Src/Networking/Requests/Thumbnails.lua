--[[
	Get and set requests for game thumbnails (screenshots and video).
]]

local FFlagGameSettingsAnalyticsEnabled = settings():GetFFlag("GameSettingsAnalyticsEnabled")

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent
local Cryo = require(Plugin.Cryo)
local Promise = require(Plugin.Promise)
local Http = require(Plugin.Src.Networking.Http)
local Analytics = require(Plugin.Src.Util.Analytics)
local LocalAssetUtils = require(Plugin.Src.Util.LocalAssetUtils)

local THUMBNAILS_GET_URL = "v1/games/%d/media"
local THUMBNAILS_GET_REQUEST_TYPE = "games"

local THUMBNAIL_ORDER_URL = "v1/universes/%d/thumbnails/order"
local THUMBNAIL_ORDER_REQUEST_TYPE = "develop"

local THUMBNAIL_DELETE_URL = "v1/universes/%d/thumbnails/%d"
local THUMBNAIL_DELETE_REQUEST_TYPE = "develop"

local THUMBNAIL_ADD_URL = "v1/games/%d/thumbnail/image"
local THUMBNAIL_ADD_REQUEST_TYPE = "publish"

local Thumbnails = {}

function Thumbnails.AcceptsValue(key)
	return key == "thumbnails" or key == "thumbnailOrder"
end

function Thumbnails.Get(universeId)
	local requestInfo = {
		Url = Http.BuildRobloxUrl(THUMBNAILS_GET_REQUEST_TYPE, THUMBNAILS_GET_URL, universeId),
		Method = "GET",
	}

	return Http.Request(requestInfo):andThen(function(jsonResult)
		local thumbnails = HttpService:JSONDecode(jsonResult).data
		local formatted = {}
		local order = {}

		for _, thumbnail in pairs(thumbnails) do
			local stringId = tostring(thumbnail.id)
			formatted[stringId] = thumbnail
			table.insert(order, stringId)
		end

		return {
			thumbnails = formatted,
			thumbnailOrder = order,
		}
	end)
	:catch(function()
		warn("Game Settings: Could not load thumbnails.")
		if FFlagGameSettingsAnalyticsEnabled then
			Analytics.onLoadError("Thumbnails")
			return Promise.reject()
		else
			return Promise.resolve({})
		end
	end)
end

function Thumbnails.Set(universeId, thumbnails, thumbnailOrder)
	if thumbnails == nil and thumbnailOrder == nil then
		return Promise.resolve()
	end

	-- Leave early if there are no new thumbnails to add or old thumbnails to delete.
	-- In this case, we're just reorganizing thumbnails.
	if thumbnails == nil then
		return Thumbnails.SetOrder(universeId, thumbnailOrder)
	end

	local oldThumbs = thumbnails.Current
	local newThumbs = thumbnails.Changed
	local deletePromise, addPromise

	-- Delete thumbnails not present in newThumbs that exist in oldThumbs.
	local deleteRequests = {}
	for thumbnailId in pairs(oldThumbs) do
		if newThumbs[thumbnailId] == nil then
			local requestInfo = {
				Url = Http.BuildRobloxUrl(THUMBNAIL_DELETE_REQUEST_TYPE, THUMBNAIL_DELETE_URL, universeId, thumbnailId),
				Method = "DELETE",
			}
			table.insert(deleteRequests, Http.Request(requestInfo))
		end
	end
	if #deleteRequests > 0 then
		deletePromise = Promise.all(deleteRequests)
		:catch(function()
			warn("Game Settings: Could not delete thumbnails.")
			if FFlagGameSettingsAnalyticsEnabled then
				Analytics.onSaveError("Thumbnails")
				return Promise.reject()
			else
				return Promise.resolve()
			end
		end)
	else
		deletePromise = Promise.resolve()
	end

	-- Add new thumbnails that exist in newThumbs but not in oldThumbs.
	local addRequests = {}
	for id, data in pairs(newThumbs) do
		if oldThumbs[id] == nil then
			local url = Http.BuildRobloxUrl(THUMBNAIL_ADD_REQUEST_TYPE, THUMBNAIL_ADD_URL, universeId)
			local requestInfo = LocalAssetUtils.GetAssetPublishRequestInfo(data.asset, url)
			table.insert(addRequests, Http.RequestInternal(requestInfo):andThen(function(jsonResult)
				local result = HttpService:JSONDecode(jsonResult)
				local oldIndex = Cryo.List.find(thumbnailOrder, id)
				local newThumbnailOrder = Cryo.List.join(thumbnailOrder, {})
				newThumbnailOrder[oldIndex] = tostring(result.targetId)
				thumbnailOrder = newThumbnailOrder
			end))
		end
	end
	if #addRequests > 0 then
		addPromise = Promise.all(addRequests)
		:catch(function(err)
			if err == "HTTP error: 429" then
				return Promise.reject({thumbnails = "UploadingTooQuickly"})
			elseif err == "HTTP error: 400" then
				return Promise.reject({thumbnails = "ImageNotRecognized"})
			end
			if FFlagGameSettingsAnalyticsEnabled then
				Analytics.onSaveError("Thumbnails")
				return Promise.reject()
			else
				return Promise.resolve()
			end
		end)
	else
		addPromise = Promise.resolve()
	end

	return Promise.all({deletePromise, addPromise}):andThen(function()
		if thumbnailOrder and #thumbnailOrder > 0 then
			return Thumbnails.SetOrder(universeId, thumbnailOrder)
		end
	end)
end

-- Deprecated, remove when removing FFlagGameSettingsImageUploadingEnabled
function Thumbnails.DEPRECATED_Set(universeId, thumbnails)
	if thumbnails == nil then
		return Promise.resolve()
	end

	local oldThumbs = thumbnails.Current
	local newThumbs = thumbnails.Changed

	-- Delete thumbnails not present in newThumbs that exist in oldThumbs.
	local thumbsToDelete = {}
	local deleteRequests = {}
	for thumbnailId in pairs(oldThumbs) do
		if newThumbs[thumbnailId] == nil then
			table.insert(thumbsToDelete, thumbnailId)
		end
	end

	for _, thumbnailId in ipairs(thumbsToDelete) do
		local requestInfo = {
			Url = Http.BuildRobloxUrl(THUMBNAIL_DELETE_REQUEST_TYPE, THUMBNAIL_DELETE_URL, universeId, thumbnailId),
			Method = "DELETE",
		}

		table.insert(deleteRequests, Http.Request(requestInfo))
	end

	return Promise.all(deleteRequests)
	:catch(function()
		warn("Game Settings: Could not delete thumbnails.")
		if FFlagGameSettingsAnalyticsEnabled then
			Analytics.onSaveError("Thumbnails")
			return Promise.reject()
		else
			return Promise.resolve()
		end
	end)
end

function Thumbnails.SetOrder(universeId, thumbnailOrder)
	if thumbnailOrder == nil then
		return Promise.resolve()
	end

	local body = HttpService:JSONEncode({
		thumbnailIds = thumbnailOrder,
	})

	local requestInfo = {
		Url = Http.BuildRobloxUrl(THUMBNAIL_ORDER_REQUEST_TYPE, THUMBNAIL_ORDER_URL, universeId),
		Method = "POST",
		Body = body,
	}

	return Http.Request(requestInfo)
	:catch(function()
		warn("Game Settings: Could not change thumbnail order.")
		if FFlagGameSettingsAnalyticsEnabled then
			Analytics.onSaveError("ThumbnailOrder")
			return Promise.reject()
		else
			return Promise.resolve()
		end
	end)
end

return Thumbnails