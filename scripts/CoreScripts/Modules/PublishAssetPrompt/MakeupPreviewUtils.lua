--[[
	Utility functions for makeup asset previewing in the publish prompt.
	Supports Decals (face/lip/eye makeup) and Accessories (eyebrow/eyelash).
]]
local AssetService = game:GetService("AssetService")
local Players = game:GetService("Players")

local root = script.Parent
local Constants = require(root.Constants)

local MAKEUP_THUMBNAIL_HEAD_ASSET_ID = 103273511207307
local MAKEUP_THUMBNAIL_HEAD_BRICKCOLOR = BrickColor.new(194)

local MakeupPreviewUtils = {}

function MakeupPreviewUtils.isMakeupAssetType(assetType: Enum.AvatarAssetType): boolean
	return Constants.MakeupAssetTypes[assetType] == true
end

local ASSET_TYPE_TO_MAKEUP_TYPE = {
	[Enum.AvatarAssetType.FaceMakeup] = Enum.MakeupType.Face,
	[Enum.AvatarAssetType.LipMakeup] = Enum.MakeupType.Lip,
	[Enum.AvatarAssetType.EyeMakeup] = Enum.MakeupType.Eye,
}

local ASSET_TYPE_TO_ACCESSORY_TYPE = {
	[Enum.AvatarAssetType.EyebrowAccessory] = Enum.AccessoryType.Eyebrow,
	[Enum.AvatarAssetType.EyelashAccessory] = Enum.AccessoryType.Eyelash,
}

-- Accessory types anchored to the head. These are kept in the head-only preview;
-- everything else (clothing and other body-anchored accessories) is removed.
local HEAD_ACCESSORY_TYPES = {
	[Enum.AccessoryType.Hat] = true,
	[Enum.AccessoryType.Hair] = true,
	[Enum.AccessoryType.Face] = true,
	[Enum.AccessoryType.Eyebrow] = true,
	[Enum.AccessoryType.Eyelash] = true,
}

-- Adds the asset to a HumanoidDescription based on its type (Decal → MakeupDescription, Accessory → AccessoryDescription)
local function addAssetToDescription(desc: HumanoidDescription, asset: Instance, assetType: Enum.AvatarAssetType?)
	local makeupType = assetType and ASSET_TYPE_TO_MAKEUP_TYPE[assetType]
	local accessoryType = assetType and ASSET_TYPE_TO_ACCESSORY_TYPE[assetType]

	if makeupType then
		-- Remove existing makeup
		for _, child in ipairs(desc:GetChildren()) do
			if child:IsA("MakeupDescription") then
				child:Destroy()
			end
		end
		local makeupDesc = Instance.new("MakeupDescription")
		makeupDesc.MakeupType = makeupType
		makeupDesc.Instance = asset
		makeupDesc.Parent = desc
	elseif accessoryType then
		local accDesc = Instance.new("AccessoryDescription")
		accDesc.AccessoryType = accessoryType
		accDesc.Instance = asset
		accDesc.IsLayered = true
		accDesc.Parent = desc
	end
end

--[[
	Reduces a full character Model to just the head and head-anchored accessories
	(hair, hats, face, eyebrows, eyelashes) for camera framing.
	Non-head body parts are removed. Body-anchored accessories (clothing, layered
	clothing, etc.) are also removed
]]
function MakeupPreviewUtils.stripToHead(character: Model)
	local head = character:FindFirstChild("Head")
	if not head then
		return
	end

	for _, child in ipairs(character:GetChildren()) do
		if child:IsA("BasePart") then
			if child ~= head then
				child:Destroy()
			end
		elseif child:IsA("Accessory") then
			if not HEAD_ACCESSORY_TYPES[child.AccessoryType] then
				child:Destroy()
			end
		end
	end
end

-- Shared helper: creates a character from a description with an asset applied,
-- reduces it to a head-only preview, and returns the character Model.
local function createHeadWithAsset(desc: HumanoidDescription, asset: Instance, assetType: Enum.AvatarAssetType?): Model?
	addAssetToDescription(desc, asset, assetType)

	local character
	local ok = pcall(function()
		character = Players:CreateHumanoidModelFromDescriptionAsync(desc, Enum.HumanoidRigType.R15)
	end)

	if not ok or not character then
		return nil
	end

	MakeupPreviewUtils.stripToHead(character)

	return character
end

--[[
	Creates a head Model with the given asset applied using the LocalPlayer's appearance.
	Used for the main preview viewport in the publish prompt.
]]
function MakeupPreviewUtils.createMakeupHeadPreview(asset: Instance, assetType: Enum.AvatarAssetType?): Model?
	local desc
	local localPlayer = Players.LocalPlayer
	if localPlayer then
		local fetchOk, fetched = pcall(function()
			return Players:GetHumanoidDescriptionFromUserIdAsync(localPlayer.UserId)
		end)
		if fetchOk and fetched then
			desc = fetched
		end
	end
	if not desc then
		desc = Instance.new("HumanoidDescription")
	end

	return createHeadWithAsset(desc, asset, assetType)
end

--[[
	Creates a head Model with the given asset applied using the standard thumbnailing head.
	Used for individual grid item previews (matches marketplace thumbnails).
]]
function MakeupPreviewUtils.createMakeupThumbnailPreview(asset: Instance, assetType: Enum.AvatarAssetType?): Model?
	local desc = Instance.new("HumanoidDescription")
	desc.Head = MAKEUP_THUMBNAIL_HEAD_ASSET_ID

	local character = createHeadWithAsset(desc, asset, assetType)
	if not character then
		return nil
	end

	-- Set head color to match the thumbnail standard
	local bodyColors = character:FindFirstChildOfClass("BodyColors")
	if bodyColors then
		bodyColors.HeadColor = MAKEUP_THUMBNAIL_HEAD_BRICKCOLOR
	end
	local head: BasePart? = character:FindFirstChild("Head") :: any
	if head then
		head.Color = MAKEUP_THUMBNAIL_HEAD_BRICKCOLOR.Color
	end

	return character
end

--[[
	Composites multiple Decals in a Folder into a single Decal for preview.
	Each Decal is expected to have an EditableImage in TextureContent and a WrapTextureTransfer child.
	Layers are drawn in ascending sortOrder (lower = base, higher = on top).
	Returns a single Decal with all textures blended together, suitable for MakeupDescription.Instance.
]]
function MakeupPreviewUtils.compositeMakeupFolder(folder: Folder, sortOrders: { [string]: number }?): Decal?
	local decals = {}
	for _, child in ipairs(folder:GetChildren()) do
		if child:IsA("Decal") then
			table.insert(decals, child)
		end
	end

	if #decals == 0 then
		return nil
	end

	local firstImage = decals[1].TextureContent and decals[1].TextureContent.Object
	if not firstImage then
		return nil
	end

	if sortOrders then
		table.sort(decals, function(a, b)
			local orderA = sortOrders[a.Name] or 0
			local orderB = sortOrders[b.Name] or 0
			return orderA < orderB
		end)
	end

	local targetSize = firstImage.Size
	local canvasSize = Vector2.new(targetSize.X, targetSize.Y)

	-- Composite each texture channel independently. PBR channels may be EditableImages
	local CHANNEL_PROPERTIES = { "TextureContent", "RoughnessMapContent", "MetalnessMapContent", "NormalMapContent" }

	local resultDecal = Instance.new("Decal")

	for _, channelName in ipairs(CHANNEL_PROPERTIES) do
		-- Skip channels where no decal has content
		local hasAnyLayer = false
		for _, decal in ipairs(decals) do
			local content = (decal :: any)[channelName]
			if content and (content.Object or content.Uri) then
				hasAnyLayer = true
				break
			end
		end

		if hasAnyLayer then
			local compositedImage = AssetService:CreateEditableImage({ Size = canvasSize })
			local drawnFirst = false

			for _, decal in ipairs(decals) do
				local content = (decal :: any)[channelName]
				if not content then
					continue
				end

				-- Content may be an in-memory EditableImage or an asset URI that needs loading
				local layerImage = content.Object
				if not layerImage and content.Uri and content.Uri ~= "" then
					local ok, result = pcall(function()
						return AssetService:CreateEditableImageAsync(content)
					end)
					if ok then
						layerImage = result
					end
				end

				if layerImage then
					local combineType = if not drawnFirst
						then Enum.ImageCombineType.Overwrite
						else Enum.ImageCombineType.AlphaBlend
					compositedImage:DrawImage(Vector2.new(0, 0), layerImage, combineType)
					drawnFirst = true
				end
			end

			(resultDecal :: any)[channelName] = Content.fromObject(compositedImage)
		end
	end

	local firstWTT = decals[1]:FindFirstChildWhichIsA("WrapTextureTransfer")
	if firstWTT then
		firstWTT:Clone().Parent = resultDecal
	end

	return resultDecal
end

return MakeupPreviewUtils
