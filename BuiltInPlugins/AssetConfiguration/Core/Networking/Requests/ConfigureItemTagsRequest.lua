local Plugin = script.Parent.Parent.Parent.Parent

local NetworkError = require(Plugin.Core.Actions.NetworkError)
local UploadResult = require(Plugin.Core.Actions.UploadResult)
local DebugFlags = require(Plugin.Core.Util.DebugFlags)

local Promise = require(Plugin.Libs.Framework.Util.Promise)

return function(networkInterface, assetId, fromItemTags, toTags)
	return function(store)
		local handlerFunc = function()
			store:dispatch(UploadResult(true))
		end

		local errorFunc = function(response)
			if DebugFlags.shouldDebugWarnings() then
				warn(("Lua toolbox: Could not configure tags"))
			end
			store:dispatch(NetworkError("Could not configure tags"))
			store:dispatch(UploadResult(false))
		end

		local fromItemTagsIdSet = {}
		for _, itemTag in pairs(fromItemTags) do
			fromItemTagsIdSet[itemTag.tag.tagId] = true
		end

		local toTagsIdSet = {}
		local addTagIds = {}
		if toTags then
			for _, tag in pairs(toTags) do
				toTagsIdSet[tag.tagId] = true
				if not fromItemTagsIdSet[tag.tagId] then
					table.insert(addTagIds, tag.tagId)
				end
			end
		end

		local deleteItemTagIds = {}
		for _, itemTag in pairs(fromItemTags) do
			if not toTagsIdSet[itemTag.tag.tagId] then
				table.insert(deleteItemTagIds, itemTag.id)
			end
		end

		local deletePromises = { Promise.resolve() }
		for _, itemTagId in pairs(deleteItemTagIds) do
			table.insert(deletePromises, networkInterface:deleteAssetItemTag(itemTagId))
		end

		-- make sure we delete all tags first, then add
		-- otherwise we might go over max temporarily which will cause requests to fail
		Promise.all(unpack(deletePromises)):andThen(function()
			local addPromises = { Promise.resolve() }
			for _, tagId in pairs(addTagIds) do
				table.insert(addPromises, networkInterface:addAssetTag(assetId, tagId))
			end
			Promise.all(unpack(addPromises)):andThen(handlerFunc, errorFunc)
		end, errorFunc)
	end
end