--[[
	For a given set of user ids, we expect we will want to use some set of thumbnails (this type/size).
	We want to pre-load these thumbnails (so when we go render they are already fetched from backend).
	Then write them into store.
	Later, parties-who-care can read thumbnails out and use them.
	FIXME(dbanks)
	2023/06/21
	The writing into store and reading out is a nod to how this used to work (we'd fetch
	cdn-style urls for thumbs, write into store).  Back then you have to read out of store because
	given userID/size/thumbnailType you have no way of knowing what the cdn is.  But now we're using
	rbxthumb uris which could just be constructed on the fly.
	In the interest of minimal/incremental change we are leaving in the write/read machinery: we should come
	back later and just remove all that.
]]

local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Cryo)

local PromiseUtilities = require(CorePackages.Workspace.Packages.AppCommonLib).Utils.PromiseUtilities
local ThumbnailRequest = require(CorePackages.AppTempCommon.LuaApp.Models.ThumbnailRequest)

local SetUserThumbnail = require(CorePackages.Workspace.Packages.UserLib).Actions.SetUserThumbnail
local Promise = require(CorePackages.AppTempCommon.LuaApp.Promise)
local UserLib = require(CorePackages.Workspace.Packages.UserLib)
local UserLibConstants = UserLib.Utils.Constants
local getRbxthumbWithTypeSizeAndOptions = require(CorePackages.Workspace.Packages.UserLib).Utils.getRbxthumbWithTypeSizeAndOptions

local MAX_REQUEST_COUNT = 100

local function subdivideEntries(entries, limit)
	local subArrays = {}
	for i = 1, #entries, limit do
		local subArray = Cryo.List.getRange(entries, i, i + limit - 1)
		table.insert(subArrays, subArray)
	end
	return subArrays
end

local function makePreloadAsyncPromise(store: any, userIds: {string}, thumbnailRequests: {ThumbnailRequest.ThumbnailRequestType}): any
	local promise = Promise.new(function(resolve, reject)
		local rbxthumbUris = {}
		local sortedRbxThumbs = {}
		for _, userId in userIds do
			sortedRbxThumbs[userId] = {}
			for _, thumbnailRequest in thumbnailRequests do
				sortedRbxThumbs[userId][thumbnailRequest.thumbnailType] = sortedRbxThumbs[userId][thumbnailRequest.thumbnailType] or {}
				local size = UserLibConstants.RbxThumbnailSizeToNumberSize[thumbnailRequest.thumbnailSize]
				local rbxthumbType: UserLib.RbxthumbType = UserLibConstants.RbxAvatarThumbnailTypeFromEnumToRbxthumbType[thumbnailRequest.thumbnailType]
				local rbxthumbUri = getRbxthumbWithTypeSizeAndOptions(userId, rbxthumbType, size)
				sortedRbxThumbs[userId][thumbnailRequest.thumbnailType][thumbnailRequest.thumbnailSize] = rbxthumbUri
				table.insert(rbxthumbUris, rbxthumbUri)
			end
		end

		local contentProvider = game:GetService("ContentProvider")
		-- Note, this step is yielding.
		-- FIXME(dbanks)
		-- What do we do about stuff that is "pending"?  The only point here is to "warm up"
		-- the rbxthumbs so as many as possible are ready when we need them.
		-- If some of them are "pending", do we wait until everything is smooth before proceeding?
		-- Or do we just let that one resolve later?

		contentProvider:PreloadAsync(rbxthumbUris)

		-- Now write them all into store.
		for userId, byType in sortedRbxThumbs do
			for thumbnailType, bySize in byType do
				for thumbnailSize, rbxthumb in bySize do
					store:dispatch(SetUserThumbnail(userId, rbxthumb, thumbnailType, thumbnailSize))
				end
			end
		end

		resolve()
	end)

	return promise
end

return function(userIds: {string}, thumbnailRequests: {ThumbnailRequest.ThumbnailRequestType})
	return function(store)
		local allPromises = {}
		-- As far as I can tell, PreloadAsync doesn't have any limit on the number of ids it can handle
		-- at once.
		-- Still, it seems wise to split these up just in case some giant request comes in: we could refactor later
		-- to try to space out requests or something.
		local subArraysOfUserIds = subdivideEntries(userIds, MAX_REQUEST_COUNT)

		for _, limitedListOfUserIds in pairs(subArraysOfUserIds) do
			local promise = makePreloadAsyncPromise(store, limitedListOfUserIds, thumbnailRequests)
			table.insert(allPromises, promise)
		end
		return PromiseUtilities.Batch(allPromises)
	end
end
