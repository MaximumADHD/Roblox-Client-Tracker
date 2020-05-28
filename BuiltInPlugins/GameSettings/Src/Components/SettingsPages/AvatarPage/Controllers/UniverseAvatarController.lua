local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent
local FrameworkUtil = require(Plugin.Framework.Util)
local Math = FrameworkUtil.Math

local UniverseAvatarController = {}
UniverseAvatarController.__index = UniverseAvatarController

--[[
	Floating point issues are a dumpster fire in this area
	- NumberRange introduces floating point errors (e.g. 1.05 to 1.050000000476837)
	- JSONEncode down in the Http stack _further_ introduces floating point errors (e.g. 1.05
		to 1.05000000000000004440892098501)
	- Configuration endpoint screams at you with 400 Bad Request {"code":24,"message":
		"Invalid value, must be in range [0.90 - 1.05]","field":"Height"}

	So, first we round the NumberRange values to get rid of their floating point errors. Then we
	tostring these values so JSONEncode doesn't cause a loss in precision later. Ta da: now our
	extremely flaky avatar scale ranges work.

	TODO (awarwick) 5/15/2020
	We should probably change the endpoint to just clamp instead of throwing an error, but Game Settings
	has always hacked around it like this since avatar scales were introduced (2017ish), so I preserved
	it here for now
--]]
local function formatAvatarRange(numberRange)
	return tostring(Math.round(numberRange.Min, 2)), tostring(Math.round(numberRange.Max, 2))
end

function UniverseAvatarController.new(networking)
	local self = {}

	self.__networking = networking

	return setmetatable(self, UniverseAvatarController)
end

function UniverseAvatarController:avatarRulesV1GET()
	local networking = self.__networking

	return networking:get("avatar", "/v1/avatar-rules")
end

function UniverseAvatarController:configurationV2GET(gameId)
	local networking = self.__networking

	return networking:get("develop", "/v2/universes/"..gameId.."/configuration")
end

function UniverseAvatarController:configurationV2PATCH(gameId, configuration)
	local networking = self.__networking

	return networking:patch("develop", "/v2/universes/"..gameId.."/configuration", {
		Body = configuration
	})
end

-- TODO (awarwick) 5/16/2020 We should eventually convert Game Settings to use the enum directly instead of
-- the web strings
function UniverseAvatarController:getAvatarType(game)
	local starterPlayer = game:GetService("StarterPlayer")
	local gameId = game.GameId

	if gameId == 0 then
		return starterPlayer.GameSettingsAvatar
	else
		local response = self:configurationV2GET(gameId):await()
		local webAvatarType = response.responseBody.universeAvatarType

		if webAvatarType == "MorphToR6" then
			return Enum.GameAvatarType.R6
		elseif webAvatarType == "MorphToR15" then
			return Enum.GameAvatarType.R15
		else
			return Enum.GameAvatarType.PlayerChoice
		end
	end
end

function UniverseAvatarController:setAvatarType(game, avatarType)
	local starterPlayer = game:GetService("StarterPlayer")
	local gameId = game.GameId

	if gameId == 0 then
		starterPlayer.GameSettingsAvatar = avatarType
	else
		local webAvatarType
		if avatarType == Enum.GameAvatarType.R6 then
			webAvatarType = "MorphToR6"
		elseif avatarType == Enum.GameAvatarType.R15 then
			webAvatarType = "MorphToR15"
		else
			webAvatarType = "PlayerChoice"
		end
		self:configurationV2PATCH(gameId, {universeAvatarType = webAvatarType}):await()
	end
end

function UniverseAvatarController:getAnimationType(game)
	local starterPlayer = game:GetService("StarterPlayer")
	local gameId = game.GameId

	if gameId == 0 then
		return starterPlayer.AllowCustomAnimations and "PlayerChoice" or "Standard"
	else
		local response = self:configurationV2GET(gameId):await()
		return response.responseBody.universeAnimationType
	end
end

function UniverseAvatarController:setAnimationType(game, animationType)
	local starterPlayer = game:GetService("StarterPlayer")
	local gameId = game.GameId

	if gameId == 0 then
		starterPlayer.AllowCustomAnimations = animationType == "Standard"
	else
		self:configurationV2PATCH(gameId, {universeAnimationType = animationType}):await()
	end
end

function UniverseAvatarController:getCollisionType(game)
	local starterPlayer = game:GetService("StarterPlayer")
	local gameId = game.GameId

	if gameId == 0 then
		return starterPlayer.GameSettingsR15Collision
	else
		local response = self:configurationV2GET(gameId):await()
		return Enum.R15CollisionType[response.responseBody.universeCollisionType]
	end
end

function UniverseAvatarController:setCollisionType(game, collisionType)
	local starterPlayer = game:GetService("StarterPlayer")
	local gameId = game.GameId

	if gameId == 0 then
		starterPlayer.GameSettingsR15Collision = collisionType
	else
		self:configurationV2PATCH(gameId, {universeCollisionType = collisionType.Name}):await()
	end
end

function UniverseAvatarController:getHeightRules()
	local response = self:avatarRulesV1GET():await()
	local rules = response.responseBody.scales.height
	return NumberRange.new(rules.min, rules.max), rules.increment
end

function UniverseAvatarController:getHeightRange(game)
	local starterPlayer = game:GetService("StarterPlayer")
	local gameId = game.GameId

	local rangeMin, rangeMax
	if gameId == 0 then
		rangeMin = starterPlayer.GameSettingsScaleRangeHeight.Min
		rangeMax = starterPlayer.GameSettingsScaleRangeHeight.Max
	else
		local response = self:configurationV2GET(gameId):await()
		rangeMin = response.responseBody.universeAvatarMinScales.height
		rangeMax = response.responseBody.universeAvatarMaxScales.height
	end

	return NumberRange.new(rangeMin, rangeMax)
end

function UniverseAvatarController:setHeightRange(game, range)
	local starterPlayer = game:GetService("StarterPlayer")
	local gameId = game.GameId

	if gameId == 0 then
		starterPlayer.GameSettingsScaleRangeHeight = range
	else
		local min, max = formatAvatarRange(range)
		self:configurationV2PATCH(gameId, {
			universeAvatarMinScales = {
				height = min,
			},
			universeAvatarMaxScales = {
				height = max,
			},
		}):await()
	end
end

function UniverseAvatarController:getWidthRules()
	local response = self:avatarRulesV1GET():await()
	local rules = response.responseBody.scales.width
	return NumberRange.new(rules.min, rules.max), rules.increment
end

function UniverseAvatarController:getWidthRange(game)
	local starterPlayer = game:GetService("StarterPlayer")
	local gameId = game.GameId

	local rangeMin, rangeMax
	if gameId == 0 then
		rangeMin = starterPlayer.GameSettingsScaleRangeWidth.Min
		rangeMax = starterPlayer.GameSettingsScaleRangeWidth.Max
	else
		local response = self:configurationV2GET(gameId):await()
		rangeMin = response.responseBody.universeAvatarMinScales.width
		rangeMax = response.responseBody.universeAvatarMaxScales.width
	end

	return NumberRange.new(rangeMin, rangeMax)
end

function UniverseAvatarController:setWidthRange(game, range)
	local starterPlayer = game:GetService("StarterPlayer")
	local gameId = game.GameId

	if gameId == 0 then
		starterPlayer.GameSettingsScaleRangeWidth = range
	else
		local min, max = formatAvatarRange(range)
		self:configurationV2PATCH(gameId, {
			universeAvatarMinScales = {
				width = min,
				depth = 0,
			},
			universeAvatarMaxScales = {
				width = max,
				depth = 0,
			},
		}):await()
	end
end

function UniverseAvatarController:getHeadScaleRules()
	local response = self:avatarRulesV1GET():await()
	local rules = response.responseBody.scales.head
	return NumberRange.new(rules.min, rules.max), rules.increment
end

function UniverseAvatarController:getHeadScaleRange(game)
	local starterPlayer = game:GetService("StarterPlayer")
	local gameId = game.GameId

	local rangeMin, rangeMax
	if gameId == 0 then
		rangeMin = starterPlayer.GameSettingsScaleRangeHead.Min
		rangeMax = starterPlayer.GameSettingsScaleRangeHead.Max
	else
		local response = self:configurationV2GET(gameId):await()
		rangeMin = response.responseBody.universeAvatarMinScales.head
		rangeMax = response.responseBody.universeAvatarMaxScales.head
	end

	return NumberRange.new(rangeMin, rangeMax)
end

function UniverseAvatarController:setHeadScaleRange(game, range)
	local starterPlayer = game:GetService("StarterPlayer")
	local gameId = game.GameId

	if gameId == 0 then
		starterPlayer.GameSettingsScaleRangeHead = range
	else
		local min, max = formatAvatarRange(range)
		self:configurationV2PATCH(gameId, {
			universeAvatarMinScales = {
				head = min,
			},
			universeAvatarMaxScales = {
				head = max,
			},
		}):await()
	end
end

function UniverseAvatarController:getBodyTypeRules()
	local response = self:avatarRulesV1GET():await()
	local rules = response.responseBody.scales.bodyType
	return NumberRange.new(rules.min, rules.max), rules.increment
end

function UniverseAvatarController:getBodyTypeRange(game)
	local starterPlayer = game:GetService("StarterPlayer")
	local gameId = game.GameId

	local rangeMin, rangeMax
	if gameId == 0 then
		rangeMin = starterPlayer.GameSettingsScaleRangeBodyType.Min
		rangeMax = starterPlayer.GameSettingsScaleRangeBodyType.Max
	else
		local response = self:configurationV2GET(gameId):await()
		rangeMin = response.responseBody.universeAvatarMinScales.bodyType
		rangeMax = response.responseBody.universeAvatarMaxScales.bodyType
	end

	return NumberRange.new(rangeMin, rangeMax)
end

function UniverseAvatarController:setBodyTypeRange(game, range)
	local starterPlayer = game:GetService("StarterPlayer")
	local gameId = game.GameId

	if gameId == 0 then
		starterPlayer.GameSettingsScaleRangeBodyType = range
	else
		local min, max = formatAvatarRange(range)
		self:configurationV2PATCH(gameId, {
			universeAvatarMinScales = {
				bodyType = min,
			},
			universeAvatarMaxScales = {
				bodyType = max,
			},
		}):await()
	end
end

function UniverseAvatarController:getProportionsRules()
	local response = self:avatarRulesV1GET():await()
	local rules = response.responseBody.scales.proportion
	return NumberRange.new(rules.min, rules.max), rules.increment
end

function UniverseAvatarController:getProportionsRange(game)
	local starterPlayer = game:GetService("StarterPlayer")
	local gameId = game.GameId

	local rangeMin, rangeMax
	if gameId == 0 then
		rangeMin = starterPlayer.GameSettingsScaleRangeProportion.Min
		rangeMax = starterPlayer.GameSettingsScaleRangeProportion.Max
	else
		local response = self:configurationV2GET(gameId):await()
		rangeMin = response.responseBody.universeAvatarMinScales.proportion
		rangeMax = response.responseBody.universeAvatarMaxScales.proportion
	end

	return NumberRange.new(rangeMin, rangeMax)
end

function UniverseAvatarController:setProportionsRange(game, range)
	local starterPlayer = game:GetService("StarterPlayer")
	local gameId = game.GameId

	if gameId == 0 then
		starterPlayer.GameSettingsScaleRangeProportion = range
	else
		local min, max = formatAvatarRange(range)
		self:configurationV2PATCH(gameId, {
			universeAvatarMinScales = {
				proportion = min,
			},
			universeAvatarMaxScales = {
				proportion = max,
			},
		}):await()
	end
end

local ASSETTYPE_PROPERTIES_MAPPING = {
	[Enum.AssetType.Face] = "GameSettingsAssetIDFace",
	[Enum.AssetType.Head] = "GameSettingsAssetIDHead",
	[Enum.AssetType.Torso] = "GameSettingsAssetIDTorso",
	[Enum.AssetType.LeftArm] = "GameSettingsAssetIDLeftArm",
	[Enum.AssetType.RightArm] = "GameSettingsAssetIDRightArm",
	[Enum.AssetType.LeftLeg] = "GameSettingsAssetIDLeftLeg",
	[Enum.AssetType.RightLeg] = "GameSettingsAssetIDRightLeg",

	[Enum.AssetType.Shirt] = "GameSettingsAssetIDShirt",
	[Enum.AssetType.Pants] = "GameSettingsAssetIDPants",
	[Enum.AssetType.TeeShirt] = "GameSettingsAssetIDTeeShirt",
}

local ASSET_TYPE_IDS = {}
for _, assetType in pairs(Enum.AssetType:GetEnumItems()) do
	ASSET_TYPE_IDS[assetType.Value] = assetType
end

-- TODO (awarwick) 5/16/2020 The data structure we get from the endpoint is generally a mess, and this gets
-- even more convoluted with the special case for unpublished games. Should probably revisit in the future
function UniverseAvatarController:getAssetOverrides(game)
	local starterPlayer = game:GetService("StarterPlayer")
	local gameId = game.GameId

	local assetOverrides
	if gameId == 0 then
		assetOverrides = {}
		for assetType, propertyName in pairs(ASSETTYPE_PROPERTIES_MAPPING) do
			local assetId = starterPlayer[propertyName]
			assetOverrides[assetType] = {
				assetTypeID = assetType.Value,
				assetID = assetId,
				isPlayerChoice = assetId == 0,
			}
		end
	else
		local response = self:configurationV2GET(gameId):await()
		assetOverrides = response.responseBody.universeAvatarAssetOverrides
	end
	return assetOverrides
end

function UniverseAvatarController:setAssetOverrides(game, assetOverrides)
	local starterPlayer = game:GetService("StarterPlayer")
	local gameId = game.GameId

	if gameId == 0 then
		for _,override in ipairs(assetOverrides) do
			local assetType = ASSET_TYPE_IDS[override.assetTypeID]
			local assetId = override.assetID
			local playerChoice = override.isPlayerChoice

			starterPlayer[ASSETTYPE_PROPERTIES_MAPPING[assetType]] = playerChoice and 0 or assetId
		end
	else
		self:configurationV2PATCH(gameId, {universeAvatarAssetOverrides = assetOverrides}):await()
	end
end

return UniverseAvatarController