--[[
	Utility functions for makeup asset previewing in the publish prompt.
]]
local Players = game:GetService("Players")

local root = script.Parent
local Constants = require(root.Constants)

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
	Creates a head Model with the given makeup asset applied, ready for viewport display.
	Supports both Decals (face/lip/eye makeup) and Accessories (eyebrow/eyelash).
	Uses the LocalPlayer's appearance (fallback to empty description).
	Returns a Model with non-head body parts removed.
]]
function MakeupPreviewUtils.createMakeupHeadPreview(asset: Instance, assetType: Enum.AvatarAssetType?): Model?
	local character
	local ok = pcall(function()
		local localPlayer = Players.LocalPlayer
		local desc
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

		addAssetToDescription(desc, asset, assetType)

		character = Players:CreateHumanoidModelFromDescriptionAsync(desc, Enum.HumanoidRigType.R15)
	end)

	if not ok or not character then
		return nil
	end

	-- Remove non-head body parts so only the head remains for camera framing.
	-- Keep non-BasePart children (Humanoid, BodyColors, etc.) for appearance.
	local head = character:FindFirstChild("Head")
	if head then
		for _, child in ipairs(character:GetChildren()) do
			if child:IsA("BasePart") and child ~= head then
				child:Destroy()
			end
		end
	end

	return character
end

return MakeupPreviewUtils
