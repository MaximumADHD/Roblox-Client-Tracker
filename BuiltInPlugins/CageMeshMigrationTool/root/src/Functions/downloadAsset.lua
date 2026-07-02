local Workspace = game:GetService("Workspace")
local CollectionService = game:GetService("CollectionService")
local InsertService = game:GetService("InsertService")

local root = script:FindFirstAncestor("root")

local constants = require(root.src.constants)
local fetchAssetFormat = require(root.src.Util.fetchAssetFormat)

local function downloadAsset(assetId, assetTypeId)
	local folder = Instance.new("Folder", Workspace)
	folder.Name = constants.ASSET_TYPE_ID_MAP_REVERSE[assetTypeId]
	CollectionService:AddTag(folder, constants.TAG)

	if assetTypeId == constants.ASSET_TYPE_ID_MAP.Head then
		local head = fetchAssetFormat(assetId, constants.HEAD_ASSET_FORMAT)
		head.Parent = folder
	elseif constants.ACCESSORY_ASSET_TYPE_ID_SET[assetTypeId] then
		local accessory = fetchAssetFormat(assetId, constants.ACCESSORY_ASSET_FORMAT)
		accessory.Parent = folder
	else
		local asset = InsertService:LoadAsset(assetId)
		for _, obj in ipairs(asset:GetChildren()) do
			obj.Parent = folder
		end
	end

	return folder
end

return downloadAsset
