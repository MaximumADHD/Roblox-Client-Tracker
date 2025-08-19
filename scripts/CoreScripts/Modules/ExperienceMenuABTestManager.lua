--!nonstrict
--[[
	Handles A/B testing of experience menu with IXP service
	on the Experience.Menu and Experience.Menu.Console layers
	eg. v1 = old menu, v2 = VR menu
]]

local AppStorageService = game:GetService("AppStorageService")
local CorePackages = game:GetService("CorePackages")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagUnibarMenuOpenSelectionIXP = SharedFlags.FFlagUnibarMenuOpenSelectionIXP

local InGameMenu = script.Parent.InGameMenu

local IXPServiceWrapper = require(CorePackages.Workspace.Packages.IxpServiceWrapper).IXPServiceWrapper
local IsExperienceMenuABTestEnabled = require(script.Parent.IsExperienceMenuABTestEnabled)

local GetFStringLuaAppExperienceMenuLayer = SharedFlags.GetFStringLuaAppExperienceMenuLayer
local GetFStringLuaAppConsoleExperienceMenuLayer = require(script.Parent.Flags.GetFStringLuaAppConsoleExperienceMenuLayer)

local GetFFlagDisableChromeV4Baseline = require(script.Parent.Flags.GetFFlagDisableChromeV4Baseline)()
local GetFFlagDisableChromeV4ClosedSelfView = require(script.Parent.Flags.GetFFlagDisableChromeV4ClosedSelfView)()

local LOCAL_STORAGE_KEY_EXPERIENCE_MENU_VERSION = "ExperienceMenuVersion"
local ACTION_TRIGGER_THRESHOLD = game:DefineFastInt("CSATV3MenuActionThreshold", 7)
local ACTION_TRIGGER_LATCHED = 10000

local TEST_VERSION = "t10" -- bump on new A/B campaigns
local REPORT_ABUSE_MENU_TEST_VERSION = "art2"

local DEFAULT_MENU_VERSION = "v1"..TEST_VERSION
local MENU_VERSION_V2 = "v2"..TEST_VERSION
local MENU_VERSION_V3 = "v3"..TEST_VERSION
local REPORT_ABUSE_MENU_VERSION_V2 = "ARv2"..REPORT_ABUSE_MENU_TEST_VERSION


-- These menu versions cannot be updated as they will be used for holdouts
local MENU_VERSION_LEGACY_CONTROLS = "v10.0"
local MENU_VERSION_CHROME_V4_ENUM = {
	BASELINE = "v10.1",
	CLOSED_SELF_VIEW = "v10.2",
}

local ENUM_UNIBAR_MENU_OPEN_FOCUS = {
	HAMBURGER = "hamburger",
	SUBMENU = "submenu",
	NOT_AVAILABLE = "not_available",
}

local validVersion =  {
	[DEFAULT_MENU_VERSION] = true,
	[MENU_VERSION_V2] = false,
	[MENU_VERSION_V3] = false,
	[REPORT_ABUSE_MENU_VERSION_V2] = false,
	[ENUM_UNIBAR_MENU_OPEN_FOCUS.HAMBURGER] = FFlagUnibarMenuOpenSelectionIXP,
	[ENUM_UNIBAR_MENU_OPEN_FOCUS.SUBMENU] = FFlagUnibarMenuOpenSelectionIXP,
	[ENUM_UNIBAR_MENU_OPEN_FOCUS.NOT_AVAILABLE] = true,

	-- Invalidate Unibar test variants if the respective disable flag is turned on
	[MENU_VERSION_LEGACY_CONTROLS] = true,
	[MENU_VERSION_CHROME_V4_ENUM.BASELINE] = not GetFFlagDisableChromeV4Baseline,
	[MENU_VERSION_CHROME_V4_ENUM.CLOSED_SELF_VIEW] = not GetFFlagDisableChromeV4ClosedSelfView,
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

function ExperienceMenuABTestManager.reportAbuseMenuV2VersionId()
	return REPORT_ABUSE_MENU_VERSION_V2
end

function ExperienceMenuABTestManager.chromeV4ControlVersionId()
	return MENU_VERSION_LEGACY_CONTROLS
end

function ExperienceMenuABTestManager.chromeV4BaselineVersionId()
	return MENU_VERSION_CHROME_V4_ENUM.BASELINE
end

function ExperienceMenuABTestManager.chromeV4ClosedSelfViewVersionId()
	return MENU_VERSION_CHROME_V4_ENUM.CLOSED_SELF_VIEW
end

function parseCountData(data)
	if not data or typeof(data) ~= "string" then
		return nil, nil
	end
	local splitStr = data:split(":")
	return splitStr[1], splitStr[2]
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

function ExperienceMenuABTestManager:isReportAbuseMenuV2Enabled()
	return self:getVersion() == REPORT_ABUSE_MENU_VERSION_V2
end

function ExperienceMenuABTestManager:isChromeEnabled()
	-- Chrome should never be enabled for someone in the v4 control as it is being used for a holdout
	if self:getVersion() == MENU_VERSION_LEGACY_CONTROLS then
		return false
	end

	-- Chrome should always be enabled for someone in v4 treatment to respect the clean treatment holdout
	for _, version in MENU_VERSION_CHROME_V4_ENUM do
		if self:getVersion() == version then
			return true
		end
	end

	if FFlagUnibarMenuOpenSelectionIXP then
		if self:getVersion() == ENUM_UNIBAR_MENU_OPEN_FOCUS.HAMBURGER or self:getVersion() == ENUM_UNIBAR_MENU_OPEN_FOCUS.SUBMENU then
			return true
		end
	end

	return false
end

function ExperienceMenuABTestManager:shouldCloseSelfViewAtStartup()
	return self:getVersion() == MENU_VERSION_CHROME_V4_ENUM.CLOSED_SELF_VIEW
end

function ExperienceMenuABTestManager:showConsoleExpControlsMenuOpenHamburger()
	return self:getVersion() == ENUM_UNIBAR_MENU_OPEN_FOCUS.HAMBURGER
end

function ExperienceMenuABTestManager:showConsoleExpControlsMenuOpenSubmenu()
	return self:getVersion() == ENUM_UNIBAR_MENU_OPEN_FOCUS.SUBMENU
end

function ExperienceMenuABTestManager:showConsoleExpControlsMenuNotAvailable()
	return self:getVersion() == ENUM_UNIBAR_MENU_OPEN_FOCUS.NOT_AVAILABLE
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
	local consoleLayerFetchSuccess, consoleLayerData = pcall(function()
		return self._ixpServiceWrapper:GetLayerData(GetFStringLuaAppConsoleExperienceMenuLayer())
	end)

	-- bail if we aren't able to communicate with IXP service
	if not layerFetchSuccess and not consoleLayerFetchSuccess then
		return
	end

	-- get the cached menu version and store menu version for next session, we don't want to change for this session
	if not self._currentMenuVersion then
		self._currentMenuVersion = self.getCachedVersion()
	end

	if layerData and consoleLayerData then
		-- if console layer data is provided, use that to set menu version (provided normal layer data not provided)
		if consoleLayerData.menuVersion and not layerData.menuVersion then
			if consoleLayerData.menuVersion ~= self._currentMenuVersion or self._currentMenuVersionIsDefault then
				pcall(function()
					AppStorageService:SetItem(LOCAL_STORAGE_KEY_EXPERIENCE_MENU_VERSION, consoleLayerData.menuVersion)
					AppStorageService:Flush()
				end)
			end
		elseif layerData.menuVersion ~= self._currentMenuVersion or self._currentMenuVersionIsDefault then
			pcall(function()
				AppStorageService:SetItem(LOCAL_STORAGE_KEY_EXPERIENCE_MENU_VERSION, layerData.menuVersion or "")
				AppStorageService:Flush()
			end)
		end
	end
end

ExperienceMenuABTestManager.default = ExperienceMenuABTestManager.new()
return ExperienceMenuABTestManager
