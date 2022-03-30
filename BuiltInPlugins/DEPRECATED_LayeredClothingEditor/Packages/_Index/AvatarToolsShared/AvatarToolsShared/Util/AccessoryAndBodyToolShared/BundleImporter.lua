--[[
	Helper function to import a bundle avatar from a given bundle id.
]]

local InsertService = game:GetService("InsertService")

local Util = script.Parent
local Constants = require(Util.Constants)

local BundleImporter = {}

BundleImporter.LoadedModels = {}
BundleImporter.PartHeadTemplate = nil

local function getAssetIdsFromBundleItems(items)
	if not items then
		return {}
	end

	local assetIds = {}
	for _,itemData in pairs(items) do
		if itemData.Type == "Asset" and itemData.Id then
			table.insert(assetIds, itemData.Id)
		end
	end
	return assetIds
end

local function loadAssetsIntoFolder(assetIds, folder)
	for _, assetId in pairs(assetIds) do
		local assetModel = InsertService:LoadAsset(assetId)
		if assetModel:IsA('Model') then
			assetModel.Name = tostring(assetId)
		end
		assetModel.Parent = folder
	end
end

local function importBundle(assetService, bundleId)
	local folder = Instance.new("Folder")
	local assetIds = nil

	local bundleDetails = assetService:GetBundleDetailsAsync(bundleId)
	if bundleDetails and bundleDetails.Items then
		folder.Name = tostring(bundleId) ..' - ' .. (bundleDetails.Name or '')
		assetIds = getAssetIdsFromBundleItems(bundleDetails.Items)
	end

	loadAssetsIntoFolder(assetIds, folder)
	return folder
end

local function applyBundle(character, bundleFolder, rigTypeName)
	local humanoid = character.Humanoid

	for _,asset in pairs(bundleFolder:clone():GetChildren()) do
		for _,child in pairs(asset:GetChildren()) do
			if child:IsA("Folder") and child.Name == rigTypeName then
				for _, bodyPart in pairs(child:GetChildren()) do
					local old = character:FindFirstChild(bodyPart.Name)
					if old then
						old:Destroy()
					end
					bodyPart.Parent = character
					humanoid:BuildRigFromAttachments()
				end
			elseif child:IsA("Accessory") or child:IsA("CharacterAppearance") or child:IsA("Tool") then
				child.Parent = character
			elseif child:IsA("Decal") and (child.Name == 'face' or child.Name == 'Face') then
				local head = character:FindFirstChild('Head')
				if head then
					for _,headChild in pairs(head:GetChildren()) do
						if headChild and (headChild.Name == 'face' or headChild.Name == 'Face') then
							headChild:Destroy()
						end
					end
					child.Parent = head
				end
			elseif child:IsA('SpecialMesh') then
				local head = character:FindFirstChild('Head')
				if head then
					if head:IsA('MeshPart') then
						-- Replace meshPart with a head part
						local newHead = BundleImporter.PartHeadTemplate:clone()
						newHead.Name = 'Head'
						newHead.Color = head.Color
						for _,v in pairs(head:GetChildren()) do
							if v:IsA('Decal') then
								v.Parent = newHead
							end
						end

						head:Destroy()
						newHead.Parent = character
						humanoid:BuildRigFromAttachments()
						head = newHead
					end
					for _,headChild in pairs(head:GetChildren()) do
						if headChild and headChild:IsA('SpecialMesh') then
							headChild:Destroy()
						end
					end
					child.Parent = head
				end
			end
		end
	end

	humanoid:BuildRigFromAttachments()
end

function BundleImporter.getAvatarFromBundleId(assetService, bundleId)
    if not BundleImporter.PartHeadTemplate then
        BundleImporter.PartHeadTemplate = InsertService:LoadLocalAsset(Constants.HEAD_TEMPLATE_PATH)
        if not BundleImporter.PartHeadTemplate then
            error("Could not retrieve Head Template model.")
            return
        end
    end

    local baseAvatar
    if BundleImporter.LoadedModels[bundleId] then
        baseAvatar = BundleImporter.LoadedModels[bundleId]
    else
		baseAvatar = InsertService:LoadLocalAsset(Constants.MANNEQUIN_PATH)
		if not baseAvatar then
			error("Could not retrieve Mannequin model.")
			return
		end

		local bundleFolder = importBundle(assetService, bundleId)
		applyBundle(baseAvatar, bundleFolder, "R15ArtistIntent")

		BundleImporter.LoadedModels[bundleId] = baseAvatar
    end

    return baseAvatar:clone()
end

return BundleImporter