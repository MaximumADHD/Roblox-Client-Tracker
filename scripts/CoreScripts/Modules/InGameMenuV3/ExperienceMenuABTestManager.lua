--!nonstrict
--[[
	Handles A/B testing of experience menu with IXP service
	on the Experience.Menu layer
	eg. v1 = old menu, v2 = deprecated menu, v3 = new menu
]]

local AppStorageService = game:GetService("AppStorageService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local InGameMenu = script.Parent
local Constants = require(InGameMenu.Resources.Constants)
local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local IsMenuCsatEnabled = require(InGameMenu.Flags.IsMenuCsatEnabled)

local IXPServiceWrapper = require(RobloxGui.Modules.Common.IXPServiceWrapper)
local IsExperienceMenuABTestEnabled = require(script.Parent.IsExperienceMenuABTestEnabled)

local GetFStringLuaAppExperienceMenuLayer = require(script.Parent.Parent.Flags.GetFStringLuaAppExperienceMenuLayer)

local LOCAL_STORAGE_KEY_EXPERIENCE_MENU_VERSION = "ExperienceMenuVersion"
local LOCAL_STORAGE_KEY_EXPERIENCE_MENU_CSAT_QUALIFICATION = "ExperienceMenuCSATQualification"
local ACTION_TRIGGER_THRESHOLD = game:DefineFastInt("CSATV3MenuActionThreshold", 7)
local ACTION_TRIGGER_LATCHED = 10000

local TEST_VERSION = "t3" -- bump on new A/B campaigns

local DEFAULT_MENU_VERSION = "v1"..TEST_VERSION
local MENU_VERSION_V2 = "v2"..TEST_VERSION
local MENU_VERSION_V3 = "v3"..TEST_VERSION

local validVersion = {
	[DEFAULT_MENU_VERSION] = true,
	[MENU_VERSION_V2] = true,
	[MENU_VERSION_V3] = true,
}

local ExperienceMenuABTestManager = {}
ExperienceMenuABTestManager.__index = ExperienceMenuABTestManager

function ExperienceMenuABTestManager.getCachedVersion()
	-- check cache first for menu version otherwise, use default
	local cacheFetchSuccess, cachedVersion = pcall(function()
		return AppStorageService:GetItem(LOCAL_STORAGE_KEY_EXPERIENCE_MENU_VERSION)
	end)


	-- fallback to default if there was an issue with local storage
	if cacheFetchSuccess and cachedVersion ~= "" and validVersion[cachedVersion] then
		return cachedVersion
	end

	return nil
end

function ExperienceMenuABTestManager.getCSATQualificationThreshold()
	return ACTION_TRIGGER_THRESHOLD
end

function ExperienceMenuABTestManager.v1VersionId()
	return DEFAULT_MENU_VERSION
end

function ExperienceMenuABTestManager.v2VersionId()
	return MENU_VERSION_V2
end

function ExperienceMenuABTestManager.v3VersionId()
	return MENU_VERSION_V3
end

function parseCountData(data)
	if not data or typeof(data) ~= "string" then
		return nil, nil
	end
	local splitStr = data:split(":")
	return splitStr[1], splitStr[2]
end

function ExperienceMenuABTestManager:getCSATQualification()
	if self._isCSATQualified ~= nil then
		return self._isCSATQualified
	end

	local isCSATQualified = false
	local cacheFetchSuccess, countData = pcall(function()
		return AppStorageService:GetItem(LOCAL_STORAGE_KEY_EXPERIENCE_MENU_CSAT_QUALIFICATION)
	end)

	local countSum, countTestVersion = parseCountData(countData)
	if countTestVersion == TEST_VERSION and tonumber(countSum) then
		isCSATQualified = tonumber(countSum) >= ACTION_TRIGGER_LATCHED
	end

	-- fallback to default if there was an issue with local storage
	if cacheFetchSuccess and isCSATQualified then
		self._isCSATQualified = true
		return true
	end

	return false
end

function ExperienceMenuABTestManager:setCSATQualification()
	if self._isCSATQualified == true then
		return
	end

	local successGetCount, countData = pcall(function()
		return AppStorageService:GetItem(LOCAL_STORAGE_KEY_EXPERIENCE_MENU_CSAT_QUALIFICATION)
	end)

	local countSum, countTestVersion = parseCountData(countData)
	if not successGetCount or countTestVersion ~= TEST_VERSION or not tonumber(countSum) then
		countTestVersion = TEST_VERSION
		countSum = "1"
	else
		countSum = tostring((tonumber(countSum) or 0) + 1)
	end

	if (tonumber(countSum) or 0) >= ACTION_TRIGGER_THRESHOLD then
		countSum = tostring(ACTION_TRIGGER_LATCHED)
		self._isCSATQualified = true
		SendAnalytics(Constants.AnalyticsExperienceMenuTest, Constants.AnalyticsExperienceMenuTestCsatQualificationField, {
			error = tostring(error),
		})
	end

	pcall(function()
		AppStorageService:SetItem(LOCAL_STORAGE_KEY_EXPERIENCE_MENU_CSAT_QUALIFICATION, countSum..":"..TEST_VERSION)
		AppStorageService:Flush()
	end)
end

function ExperienceMenuABTestManager.new(ixpServiceWrapper)
	local instance = {
		_currentMenuVersion = nil,
		_currentMenuVersionIsDefault = false,
		_isCSATQualified = nil,
		_ixpServiceWrapper = ixpServiceWrapper or IXPServiceWrapper,
	}
	setmetatable(instance, ExperienceMenuABTestManager)
	return instance
end

function ExperienceMenuABTestManager:getVersion()
	if not IsExperienceMenuABTestEnabled() then
		return DEFAULT_MENU_VERSION
	end

	-- if menu version isn't set, we'll fetch it from local storage
	if not self._currentMenuVersion then
		local cachedVersion = self.getCachedVersion()
		if cachedVersion ~= nil and cachedVersion ~= "" then
			self._currentMenuVersion = cachedVersion
		else
			self._currentMenuVersionIsDefault = true
			self._currentMenuVersion = DEFAULT_MENU_VERSION
		end
	end

	return self._currentMenuVersion
end

function ExperienceMenuABTestManager:isV2MenuEnabled()
	return self:getVersion() == MENU_VERSION_V2
end

function ExperienceMenuABTestManager:isV3MenuEnabled()
	return self:getVersion() == MENU_VERSION_V3
end

-- this is called on the assumption that IXP layers are initialized
function ExperienceMenuABTestManager:initialize()
	if not IsExperienceMenuABTestEnabled() then
		return
	end

	-- fetch variant from IXP
	local layerFetchSuccess, layerData = pcall(function()
		return self._ixpServiceWrapper:GetLayerData(GetFStringLuaAppExperienceMenuLayer())
	end)

	-- bail if we aren't able to communicate with IXP service
	if not layerFetchSuccess then
		return
	end

	-- get the cached menu version and store menu version for next session, we don't want to change for this session
	if not self._currentMenuVersion then
		self._currentMenuVersion = self.getCachedVersion()
	end
	if layerData and (layerData.menuVersion ~= self._currentMenuVersion or self._currentMenuVersionIsDefault) then
		pcall(function()
			AppStorageService:SetItem(LOCAL_STORAGE_KEY_EXPERIENCE_MENU_VERSION, layerData.menuVersion or "")
			AppStorageService:Flush()
		end)
	end

	if IsMenuCsatEnabled() then
		self._isCSATQualified = self:getCSATQualification()
	end
end

ExperienceMenuABTestManager.default = ExperienceMenuABTestManager.new()
return ExperienceMenuABTestManager
