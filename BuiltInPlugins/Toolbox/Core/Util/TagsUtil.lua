local Plugin = script.Parent.Parent.Parent

local Cryo = require(Plugin.Libs.Cryo)

local TagsUtil = {}

function TagsUtil.getTagsFromItemTags(itemTags)
	local result = {}
	for i = 1, #itemTags do
		result[i] = itemTags[i].tag
	end
	return result
end

function TagsUtil.areSetsDifferent(listA, listB)
	local tagIdSet = {}

	-- listA may contain ItemTags, so we need to check for that
	for _, tag in pairs(listA) do
		tagIdSet[tag.id and tag.tag.tagId or tag.tagId] = true
	end

	for _, tag in pairs(listB) do
		if not tagIdSet[tag.tagId] then
			return false
		end
		tagIdSet[tag.tagId] = nil
	end

	-- if set isn't empty, listA had more tags than listB
	if next(tagIdSet) then
		return false
	end

	return true
end

function TagsUtil.areTagsEnabled(isItemTagsFeatureEnabled, enabledAssetTypesForItemTags, assetTypeEnum)
	return isItemTagsFeatureEnabled and Cryo.List.find(enabledAssetTypesForItemTags, assetTypeEnum.Name) ~= nil
end

function TagsUtil.hasTag(tags, tagId)
	for _, tag in pairs(tags) do
		if tag.tagId == tagId then
			return true
		end
	end
	return false
end

return TagsUtil