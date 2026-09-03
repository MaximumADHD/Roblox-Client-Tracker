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
local MAKEUP_THUMBNAIL_FIELD_OF_VIEW = 5
local FRONT_CAMERA_LOOK_VECTOR = Vector3.zAxis
local ANGLED_CAMERA_LOOK_VECTOR = Vector3.new(-0.54678017, -0.019651636, 0.83704555)

local function makeCameraCFrame(position: Vector3, lookVector: Vector3): CFrame
	return CFrame.lookAt(position, position + lookVector)
end

local DEFAULT_MAKEUP_THUMBNAIL_CAMERA_CFRAME =
	makeCameraCFrame(Vector3.new(0, 0.0936213, -15.755899), FRONT_CAMERA_LOOK_VECTOR)

-- Matches the authored cameras in MakeupEnvironment.rbxl.
local MAKEUP_THUMBNAIL_CAMERA_CFRAMES = {
	[Enum.AvatarAssetType.FaceMakeup] = DEFAULT_MAKEUP_THUMBNAIL_CAMERA_CFRAME,
	[Enum.AvatarAssetType.LipMakeup] = makeCameraCFrame(
		Vector3.new(0, -0.2991416, -6.4134803),
		FRONT_CAMERA_LOOK_VECTOR
	),
	[Enum.AvatarAssetType.EyeMakeup] = makeCameraCFrame(
		Vector3.new(0, 0.10852961, -9.357428),
		FRONT_CAMERA_LOOK_VECTOR
	),
	[Enum.AvatarAssetType.EyebrowAccessory] = makeCameraCFrame(
		Vector3.new(4.5928926, 0.37917417, -7.374273),
		ANGLED_CAMERA_LOOK_VECTOR
	),
	[Enum.AvatarAssetType.EyelashAccessory] = makeCameraCFrame(
		Vector3.new(4.593966, 0.2791934, -7.375918),
		ANGLED_CAMERA_LOOK_VECTOR
	),
}

local MakeupPreviewUtils = {}

-- Returns camera framing data for head-only preview models.
function MakeupPreviewUtils.getHeadPreviewCameraData(model: Model): (CFrame?, Vector3?)
	local head = model:FindFirstChild("Head")
	if head and head:IsA("MeshPart") and not model:FindFirstChild("HumanoidRootPart") then
		return head.CFrame, head.Size
	end

	return nil, nil
end

-- Applies the marketplace camera for a makeup thumbnail.
function MakeupPreviewUtils.setupMakeupThumbnailCamera(
	model: Model,
	camera: Camera,
	assetType: Enum.AvatarAssetType?
): boolean
	local head = model:FindFirstChild("Head")
	if not head or not head:IsA("MeshPart") then
		return false
	end

	local cameraCFrame: CFrame = DEFAULT_MAKEUP_THUMBNAIL_CAMERA_CFRAME
	if assetType then
		cameraCFrame = MAKEUP_THUMBNAIL_CAMERA_CFRAMES[assetType] or cameraCFrame
	end
	camera.CFrame = head.CFrame * cameraCFrame
	camera.Focus = head.CFrame
	camera.FieldOfView = MAKEUP_THUMBNAIL_FIELD_OF_VIEW
	return true
end

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

local function removeMatchingChildren(desc: HumanoidDescription, predicate: (Instance) -> boolean)
	for _, child in ipairs(desc:GetChildren()) do
		if predicate(child) then
			child:Destroy()
		end
	end
end

-- Adds the asset to a HumanoidDescription based on its type (Decal → MakeupDescription, Accessory → AccessoryDescription)
local function addAssetToDescription(desc: HumanoidDescription, asset: Instance, assetType: Enum.AvatarAssetType?)
	local makeupType = assetType and ASSET_TYPE_TO_MAKEUP_TYPE[assetType]
	local accessoryType = assetType and ASSET_TYPE_TO_ACCESSORY_TYPE[assetType]

	if makeupType then
		removeMatchingChildren(desc, function(child)
			return child:IsA("MakeupDescription")
		end)
		local makeupDesc = Instance.new("MakeupDescription")
		makeupDesc.MakeupType = makeupType
		makeupDesc.Instance = asset
		makeupDesc.Parent = desc
	elseif accessoryType then
		removeMatchingChildren(desc, function(child)
			return child:IsA("AccessoryDescription") and child.AccessoryType == accessoryType
		end)
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

export type AccessoryEntry = { asset: Instance, assetType: Enum.AvatarAssetType? }

function MakeupPreviewUtils.anchorRigidPreviewParts(character: Model)
	for _, child in ipairs(character:GetDescendants()) do
		if child:IsA("BasePart") then
			local accessory = child:FindFirstAncestorWhichIsA("Accessory")
			local isLayeredAccessoryPart = accessory and accessory:FindFirstChildWhichIsA("WrapLayer", true) ~= nil

			if not isLayeredAccessoryPart then
				child.Anchored = true
			end
		end
	end
end

--[[
	Collects the Accessory children of a makeup-look folder (eyebrows, eyelashes)
	paired with their AvatarAssetType. The asset type comes from makeupEntries,
	which is indexed to match the folder's children (see MakeupPartGrid).
]]
function MakeupPreviewUtils.getFolderAccessories(folder: Folder, makeupEntries: { any }?): { AccessoryEntry }
	local accessories: { AccessoryEntry } = {}
	for i, child in ipairs(folder:GetChildren()) do
		if child:IsA("Accessory") then
			local assetType = if makeupEntries and makeupEntries[i] then makeupEntries[i].assetType else nil
			table.insert(accessories, { asset = child :: Instance, assetType = assetType })
		end
	end
	return accessories
end

-- Shared helper: creates a character from a description with an asset (and any
-- additional accessories) applied, reduces it to a head-only preview, and
-- returns the character Model.
local function createHeadWithAsset(
	desc: HumanoidDescription,
	asset: Instance?,
	assetType: Enum.AvatarAssetType?,
	accessories: { AccessoryEntry }?
): Model?
	if asset then
		addAssetToDescription(desc, asset, assetType)
	end

	if accessories then
		for _, entry in ipairs(accessories) do
			addAssetToDescription(desc, entry.asset, entry.assetType)
		end
	end

	local character
	local ok = pcall(function()
		character = Players:CreateHumanoidModelFromDescriptionAsync(desc, Enum.HumanoidRigType.R15)
	end)

	if not ok or not character then
		return nil
	end

	-- Resolve avatar transforms before stripping and anchoring the model.
	character.Parent = workspace
	character:GetBoundingBox()
	character.Parent = nil

	MakeupPreviewUtils.stripToHead(character)

	-- Preserve baked rigid-accessory positions without preventing layered accessories
	-- from resolving their wrap deformation in the viewport's WorldModel.
	MakeupPreviewUtils.anchorRigidPreviewParts(character)

	return character
end

--[[
	Creates a head Model with the given asset applied using the LocalPlayer's appearance.
	Used for the main preview viewport in the publish prompt.

	For a makeup look, `asset` is the composited makeup Decal (may be nil when the
	look contains no decals) and `accessories` carries the eyebrow/eyelash
	accessories so they render on the head alongside the makeup.
]]
function MakeupPreviewUtils.createMakeupHeadPreview(
	asset: Instance?,
	assetType: Enum.AvatarAssetType?,
	accessories: { AccessoryEntry }?
): Model?
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

	return createHeadWithAsset(desc, asset, assetType, accessories)
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
