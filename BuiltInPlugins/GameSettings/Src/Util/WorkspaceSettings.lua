--[[
	functionality to convert between settings saved in the workspace and the settings from the back-end
]]

local starterPlayerService = game:GetService("StarterPlayer")

local WorkspaceSettings = {}

local avatarTypeConvert = {
	[Enum.GameAvatarType.R6] = "MorphToR6",
	[Enum.GameAvatarType.R15] = "MorphToR15",
	[Enum.GameAvatarType.PlayerChoice] = "PlayerChoice"
}

local animationTypeConvert = {
	[true] = "PlayerChoice",
	[false] = "Standard",
}

local scaleIdentifiers = {
	"height",
	"width",
	"head",
	"bodyType",
	"proportion"
}

local assetTypes = {
	Enum.AssetType.TeeShirt,
	Enum.AssetType.Shirt,
	Enum.AssetType.Pants,
	Enum.AssetType.Head,
	Enum.AssetType.Face,
	Enum.AssetType.Torso,
	Enum.AssetType.RightArm,
	Enum.AssetType.LeftArm,
	Enum.AssetType.LeftLeg,
	Enum.AssetType.RightLeg
}

local function getScalePropName(identifier)
	local identifierWithFirstLetterCapitalized = identifier:gsub("^%l", string.upper)
	return "GameSettingsScale" .. identifierWithFirstLetterCapitalized
end

local function getScalesBackendFormat(getMinScales)
	local result = {}
	for _, identifier in pairs(scaleIdentifiers) do
		local val = starterPlayerService[getScalePropName(identifier)]
		result[identifier] = getMinScales and val.Min or val.Max
	end
	return result
end

local function setScales(minScalesBackendFormat, maxScalesBackendFormat)
	minScalesBackendFormat = minScalesBackendFormat or getScalesBackendFormat(true)
	maxScalesBackendFormat = maxScalesBackendFormat or getScalesBackendFormat(false)

	for _, identifier in pairs(scaleIdentifiers) do
		starterPlayerService[getScalePropName(identifier)] = NumberRange.new(minScalesBackendFormat[identifier], maxScalesBackendFormat[identifier])
	end
end

local function getValuesToKeysTable(tab)
	local newTab={}
	for k,v in pairs(tab) do
		newTab[v]=k
	end
	return newTab
end

local function getBackendFormat(conversionTable, prop)
	return conversionTable[starterPlayerService[prop]]
end

local function setProp(conversionTable, propBackendFormat, prop)
	if nil ~= propBackendFormat then
		starterPlayerService[prop] = getValuesToKeysTable(conversionTable)[propBackendFormat]
	end
end

local function getAvatarTypeBackendFormat()
	return getBackendFormat(avatarTypeConvert, "GameSettingsAvatarType")
end

local function setAvatarType(avatarTypeBackendFormat)
	setProp(avatarTypeConvert, avatarTypeBackendFormat, "GameSettingsAvatarType")
end

local function getAllowCustomAnimationsBackendFormat()
	return getBackendFormat(animationTypeConvert, "AllowCustomAnimations")
end

local function setAllowCustomAnimations(customAnimationsBackendFormat)
	setProp(animationTypeConvert, customAnimationsBackendFormat, "AllowCustomAnimations")
end

local function getCollisionTypeBackendFormat()
	return starterPlayerService["GameSettingsR15CollisionType"].Name
end

local function setCollisionType(collisionTypeBackendFormat)
	if nil ~= collisionTypeBackendFormat then
		starterPlayerService["GameSettingsR15CollisionType"] = collisionTypeBackendFormat
	end
end

local function getMinScalesBackendFormat()
	return getScalesBackendFormat(true)
end

local function getMaxScalesBackendFormat()
	return getScalesBackendFormat(false)
end

local function getAssetOverridesBackendFormat()
	local result = {}
	for _, assetTypeId in ipairs(assetTypes) do
		local assetFromWorkspace = starterPlayerService["GameSettingsAssetID" .. assetTypeId.Name]
		result[#result+1] = {
			assetTypeID=assetTypeId.Value, -- the morpher works with numbers not enum entries, so this needs to be a number passed in
			assetID=assetFromWorkspace,
			isPlayerChoice=(assetFromWorkspace <= 0)
		}
	end
	return result
end

local function setAssetOverrides(assetOverridesBackendFormat)
	if nil ~= assetOverridesBackendFormat then
		for _, assetOverride in pairs(assetOverridesBackendFormat) do
			for _, assetTypeId in ipairs(assetTypes) do
				if assetTypeId.Value == assetOverride.assetTypeID then
					starterPlayerService["GameSettingsAssetID" .. assetTypeId.Name] = assetOverride.isPlayerChoice and 0 or math.max(0, assetOverride.assetID)
				end
			end
		end
	end
end

function WorkspaceSettings.getAvatarSettings()
	return {
		["universeAvatarType"]=getAvatarTypeBackendFormat(),
		["universeAnimationType"]=getAllowCustomAnimationsBackendFormat(),
		["universeCollisionType"]=getCollisionTypeBackendFormat(),
		["universeAvatarMinScales"]=getMinScalesBackendFormat(),
		["universeAvatarMaxScales"]=getMaxScalesBackendFormat(),
		["universeAvatarAssetOverrides"]=getAssetOverridesBackendFormat()
	}
end

function WorkspaceSettings.saveAllAvatarSettings(saveInfo)
	setAvatarType(saveInfo.Configuration.universeAvatarType)
	setAllowCustomAnimations(saveInfo.Configuration.universeAnimationType)
	setCollisionType(saveInfo.Configuration.universeCollisionType)
	setScales(saveInfo.Configuration.universeAvatarMinScales, saveInfo.Configuration.universeAvatarMaxScales)
	setAssetOverrides(saveInfo.Configuration.universeAvatarAssetOverrides)
end

return WorkspaceSettings
