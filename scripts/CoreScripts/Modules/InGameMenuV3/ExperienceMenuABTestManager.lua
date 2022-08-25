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

local LOCAL_STORAGE_KEY_EXPERIENCE_MENU_VERSION = "ExperienceMenuVersion"
local LOCAL_STORAGE_KEY_EXPERIENCE_MENU_CSAT_QUALIFICATION = "ExperienceMenuCSATQualification"
local DEFAULT_MENU_VERSION = "v1"
local MENU_VERSION_V2 = "v2"
local MENU_VERSION_V3 = "v3"

local ExperienceMenuABTestManager = {}
ExperienceMenuABTestManager.__index = ExperienceMenuABTestManager

function ExperienceMenuABTestManager.getCachedVersion()
	-- check cache first for menu version otherwise, use default
	local cacheFetchSuccess, cachedVersion = pcall(function()
		return AppStorageService:GetItem(LOCAL_STORAGE_KEY_EXPERIENCE_MENU_VERSION)
	end)

	-- fallback to default if there was an issue with local storage
	if cacheFetchSuccess and cachedVersion ~= "" then
		return cachedVersion
	end

	return nil
end

function ExperienceMenuABTestManager:getCSATQualification()
	if self._isCSATQualified ~= nil then
		return self._isCSATQualified
	end

	local cacheFetchSuccess, isCSATQualified = pcall(function()
		return AppStorageService:GetItem(LOCAL_STORAGE_KEY_EXPERIENCE_MENU_CSAT_QUALIFICATION)
	end)

	-- fallback to default if there was an issue with local storage
	if cacheFetchSuccess and isCSATQualified ~= "" and isCSATQualified ~= nil then
		return isCSATQualified
	end

	return false
end

function ExperienceMenuABTestManager:setCSATQualification()
	if self._isCSATQualified == true then
		return
	end

	local success, error = pcall(function()
		AppStorageService:SetItem(LOCAL_STORAGE_KEY_EXPERIENCE_MENU_CSAT_QUALIFICATION, true)
		AppStorageService:Flush()
	end)

	if success then
		self._isCSATQualified = true
	else
		SendAnalytics(Constants.AnalyticsExperienceMenuTest, Constants.AnalyticsExperienceMenuTestCsatQualificationField, {
			error = tostring(error),
		})
	end
end

function ExperienceMenuABTestManager.new(ixpServiceWrapper)
	local instance = {
		_currentMenuVersion = nil,
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
			return cachedVersion
		end

		return DEFAULT_MENU_VERSION
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
		return self._ixpServiceWrapper:IsEnabled() and self._ixpServiceWrapper:GetLayerData("Experience.Menu") or {}
	end)

	-- bail if we aren't able to communicate with IXP service
	if not layerFetchSuccess then
		return
	end

	-- get the cached menu version and store menu version for next session, we don't want to change for this session
	self._currentMenuVersion = self.getCachedVersion()
	if layerData and layerData.menuVersion ~= self._currentMenuVersion then
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
