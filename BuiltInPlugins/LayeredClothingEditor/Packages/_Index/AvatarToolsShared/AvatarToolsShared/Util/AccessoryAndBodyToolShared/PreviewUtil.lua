--[[
	Contains helper functions for creating preview avatars and attaching clothing items to them in batches.
	Provides the ability to attach items either from an existing instance, or an id in which case it will fetch the model.
]]

local HttpService = game:GetService("HttpService")
local Util = script.Parent

local PreviewClothing = require(Util.PreviewClothing)
local PreviewAvatar = require(Util.PreviewAvatar)

local PreviewUtil = {}

local function isUserAddedAsset(id)
	return not ((type(id) == "number") and (math.floor(id) == id))
end

local function getUserAddedAsset(id, userAddedAssets)
	if not userAddedAssets then
		return
	end

	for _, asset in ipairs(userAddedAssets) do
		if asset.uniqueId == id then
			return asset.instance:Clone()
		end
	end
end

local function createPreviewAsset(id, userAddedAssets, parent, previewImpl, assetService)
	if isUserAddedAsset(id) then
		local asset = getUserAddedAsset(id, userAddedAssets)
		if asset then
			return previewImpl.new(asset, parent)
		end
	else
		return previewImpl.initFromId(assetService, id, parent)
	end
end

function PreviewUtil.createUserAddedAsset(asset)
	return {
		instance = asset,
		uniqueId = HttpService:GenerateGUID(),
	}
end

function PreviewUtil.createPreviewAvatars(selectedAvatarIds, userAddedAvatars, parent, assetService)
	local previewAvatars = {}
	for _, id in ipairs(selectedAvatarIds) do
		table.insert(previewAvatars, createPreviewAsset(id, userAddedAvatars, parent, PreviewAvatar, assetService))
	end
	return previewAvatars
end

function PreviewUtil.addPreviewClothingFromIds(previewAvatars, selectedClothingIds, userAddedClothing, assetService)
	for _, avatar in ipairs(previewAvatars) do
		for _, id in ipairs(selectedClothingIds) do
			local clothing = createPreviewAsset(id, userAddedClothing, nil, PreviewClothing, assetService)
			avatar:addLayer(clothing)
		end
	end
end

function PreviewUtil.addPreviewClothingFromInstances(previewAvatars, instances)
	for _, avatar in ipairs(previewAvatars) do
		for _, instance in ipairs(instances) do
			local clothing = PreviewClothing.new(instance, false)
			avatar:addLayer(clothing)
		end
	end
end

return PreviewUtil