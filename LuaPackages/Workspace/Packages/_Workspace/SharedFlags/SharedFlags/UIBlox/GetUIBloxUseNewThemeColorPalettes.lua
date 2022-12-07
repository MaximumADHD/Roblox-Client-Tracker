local AppStorageService = game:GetService("AppStorageService")
local IXPService = game:GetService("IXPService")
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")

local SharedFlags = script.Parent.Parent
local GetEnableDesignSystemExperiment = require(SharedFlags.GetEnableDesignSystemExperiment)

-- override
game:DefineFastFlag("UIBloxUseNewThemeColorPalettes", false)

-- IXP
game:DefineFastFlag("LuaAppColorSystem1_1TestEnabled1", false)
game:DefineFastFlag("LuaAppColorSystem1_1TestCache1", false)
game:DefineFastString("LuaAppColorSystem1_1TestLayerName", "DesignSystem.DesignToken")
game:DefineFastString("LuaAppColorSystem1_1TestFieldName", "colorVersion")

-- rollout percentage
game:DefineFastInt("UIBloxUseNewThemeColorPalettesRollout", 0)

local VALUE_COLOR_SYSTEM_VER_1_1 = "v1.1"
local VALUE_COLOR_SYSTEM_VER_1 = "v1"

type Table = { [string]: any }

--[[
	`CacheDataFetcher` is to get cached layer variables using a very small code snippet from `ExperimentCacheManager`.

	`ExperimentCacheManager` caches test layer data to solve IXP experiment session consistency issue. But in packages, `ExperimentCacheManager` can not (and should not) be required as it is now in higher dependency level.

	Reference:
	https://roblox.atlassian.net/wiki/spaces/~bliang/pages/1841004878/IXP+Experiment+Session+Consistency
	https://github.com/Roblox/lua-apps/blob/master/src/internal/LuaApp/Modules/LuaApp/Util/ExperimentCacheManager.lua
]]

local CacheDataFetcher = {
	_experimentCacheKey = "ExperimentCache" -- LuaApp.Enum.LocalStorageKey.ExperimentCache
}

function CacheDataFetcher:getCachedLayerVariables(layerName): Table?
	local success, jsonString = pcall(function()
		return AppStorageService:GetItem(self._experimentCacheKey)
	end)

	if success then
		local jsonSuccess, decodedJson = pcall(function()
			return HttpService:JSONDecode(jsonString)
		end)

		if jsonSuccess then
			return decodedJson[layerName] or nil
		end
	end

	return nil
end

local function getTestConfig(testVariant: string?): boolean
	if testVariant then
		if testVariant == VALUE_COLOR_SYSTEM_VER_1_1 then
			return true
		elseif testVariant == VALUE_COLOR_SYSTEM_VER_1 then
			return false
		end

		return false
	end

	return false
end

local function enabledByIXP(): boolean
	local testEnabled = game:GetFastFlag("LuaAppColorSystem1_1TestEnabled1")
	if not testEnabled then
		return false
	end

	local useCache = game:GetFastFlag("LuaAppColorSystem1_1TestCache1")
	local testLayerName = game:GetFastString("LuaAppColorSystem1_1TestLayerName")
	local testFieldName = game:GetFastString("LuaAppColorSystem1_1TestFieldName")

	if useCache then
		local layerData: Table? = CacheDataFetcher:getCachedLayerVariables(testLayerName)
		if layerData then
			local variant = layerData[testFieldName] or nil
			return getTestConfig(variant)
		end
	else
		local layerSuccess, layerData = pcall(function()
			return IXPService:GetUserLayerVariables(testLayerName)
		end)

		if layerSuccess then
			local variant = layerData[testFieldName] or nil
			return getTestConfig(variant)
		end

		-- IXP data was not successfully fetched
		return false
	end

	return false
end

local function inPercentRollout(): boolean
	local localPlayer = Players.LocalPlayer

	if localPlayer then
		local rolloutPercent = game:GetFastInt("UIBloxUseNewThemeColorPalettesRollout")
		local userIdLastTwoDigits = localPlayer.UserId % 100

		return userIdLastTwoDigits < rolloutPercent
	end

	return false
end

return function(): boolean
	local override = game:GetFastFlag("UIBloxUseNewThemeColorPalettes")
	if override then
		return true
	end

	if GetEnableDesignSystemExperiment() then
		return true
	end

	if enabledByIXP() then
		return true
	end

	return inPercentRollout()
end
