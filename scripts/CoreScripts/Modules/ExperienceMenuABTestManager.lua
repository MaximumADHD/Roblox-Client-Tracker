--!nonstrict
--[[
	Handles A/B testing of experience menu with IXP service
	on the Experience.Menu and Experience.Menu.Console layers
	eg. v1 = old menu, v2 = VR menu
]]

local AppStorageService = game:GetService("AppStorageService")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local InGameMenu = script.Parent.InGameMenu

local IXPServiceWrapper = require(RobloxGui.Modules.Common.IXPServiceWrapper)
local IsExperienceMenuABTestEnabled = require(script.Parent.IsExperienceMenuABTestEnabled)

local GetFStringLuaAppExperienceMenuLayer = require(script.Parent.Flags.GetFStringLuaAppExperienceMenuLayer)
local GetFStringLuaAppConsoleExperienceMenuLayer = require(script.Parent.Flags.GetFStringLuaAppConsoleExperienceMenuLayer)

local GetFFlagDisableChromeUnibar = require(script.Parent.Flags.GetFFlagDisableChromeUnibar)()
local GetFFlagDisableChromePinnedChat = require(script.Parent.Flags.GetFFlagDisableChromePinnedChat)()
local GetFFlagDisableChromeDefaultOpen = require(script.Parent.Flags.GetFFlagDisableChromeDefaultOpen)()

local GetFFlagDisableChromeFollowupUnibar = require(script.Parent.Flags.GetFFlagDisableChromeFollowupUnibar)()
local GetFFlagDisableChromeFollowupFTUX = require(script.Parent.Flags.GetFFlagDisableChromeFollowupFTUX)()
local GetFFlagDisableChromeFollowupOcclusion = require(script.Parent.Flags.GetFFlagDisableChromeFollowupOcclusion)()

local GetFFlagDisableChromeV3Baseline = require(script.Parent.Flags.GetFFlagDisableChromeV3Baseline)()
local GetFFlagDisableChromeV3Captures = require(script.Parent.Flags.GetFFlagDisableChromeV3Captures)()
local GetFFlagDisableChromeV3StaticSelfView = require(script.Parent.Flags.GetFFlagDisableChromeV3StaticSelfView)()
local GetFFlagDisableChromeV3Icon = require(script.Parent.Flags.GetFFlagDisableChromeV3Icon)()
local GetFFlagDisableChromeV3DockedMic = require(script.Parent.Flags.GetFFlagDisableChromeV3DockedMic)()

local GetFFlagDisableChromeV4Baseline = require(script.Parent.Flags.GetFFlagDisableChromeV4Baseline)()
local GetFFlagDisableChromeV4ClosedSelfView = require(script.Parent.Flags.GetFFlagDisableChromeV4ClosedSelfView)()

local GetFFlagSongbirdIXPVariants = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagSongbirdIXPVariants

local LOCAL_STORAGE_KEY_EXPERIENCE_MENU_VERSION = "ExperienceMenuVersion"
local ACTION_TRIGGER_THRESHOLD = game:DefineFastInt("CSATV3MenuActionThreshold", 7)
local ACTION_TRIGGER_LATCHED = 10000

local TEST_VERSION = "t10" -- bump on new A/B campaigns
local REPORT_ABUSE_MENU_TEST_VERSION = "art2"
local CONSOLE_MODERNIZATION_TEST_VERSION = "m2"
local SONGBIRD_TEST_VERSION = "s1"

local DEFAULT_MENU_VERSION = "v1"..TEST_VERSION
local MENU_VERSION_V2 = "v2"..TEST_VERSION
local MENU_VERSION_V3 = "v3"..TEST_VERSION
local REPORT_ABUSE_MENU_VERSION_V2 = "ARv2"..REPORT_ABUSE_MENU_TEST_VERSION

local MENU_VERSION_MODERNIZATION_ENUM = {
	MODERNIZED = "v5.1"..TEST_VERSION,
	BIG_TEXT = "v5.2"..TEST_VERSION,
	STICKY_BAR = "v5.3"..TEST_VERSION,
	CONSOLE = "v5.4"..CONSOLE_MODERNIZATION_TEST_VERSION
}

local MENU_VERSION_CHROME_ENUM = {
	UNIBAR = "v6.1"..TEST_VERSION,
	PINNED_CHAT = "v6.2"..TEST_VERSION,
	DEFAULT_OPEN = "v6.3"..TEST_VERSION,
}

local MENU_VERSION_CHROME_FOLLOWUP_ENUM = {
	UNIBAR = "v7.1.1"..TEST_VERSION,
	FTUX = "v7.2.1"..TEST_VERSION,
	OCCLUSION = "v7.3"..TEST_VERSION,
}

local MENU_VERSION_CHROME_V3_ENUM = {
	BASELINE = "v8.1"..TEST_VERSION,
	CAPTURES = "v8.2"..TEST_VERSION,
	STATIC_SELF_VIEW = "v8.3"..TEST_VERSION,
	ICON = "v8.4"..TEST_VERSION,
	DOCKED_MIC = "v8.5"..TEST_VERSION,
}

local MENU_VERSION_SONGBIRD_ENUM =  {
	SONGBIRD = "v9.1" .. SONGBIRD_TEST_VERSION,
	SONGBIRD_UNIBAR = "v9.2" .. SONGBIRD_TEST_VERSION,
	SONGBIRD_PEEK = "v9.3" .. SONGBIRD_TEST_VERSION,
	SONGBIRD_SCENE_ANALYSIS = "v9.4" .. SONGBIRD_TEST_VERSION,
}

-- These menu versions cannot be updated as they will be used for holdouts
local MENU_VERSION_LEGACY_CONTROLS = "v10.0"
local MENU_VERSION_CHROME_V4_ENUM = {
	BASELINE = "v10.1",
	CLOSED_SELF_VIEW = "v10.2",
}

local validVersion = {
	[DEFAULT_MENU_VERSION] = true,
	[MENU_VERSION_V2] = false,
	[MENU_VERSION_V3] = false,
	[MENU_VERSION_MODERNIZATION_ENUM.MODERNIZED] = true,
	[MENU_VERSION_MODERNIZATION_ENUM.BIG_TEXT] = false,
	[MENU_VERSION_MODERNIZATION_ENUM.STICKY_BAR] = false,
	[MENU_VERSION_MODERNIZATION_ENUM.CONSOLE] = true,
	[MENU_VERSION_CHROME_ENUM.UNIBAR] = not GetFFlagDisableChromeUnibar,
	[MENU_VERSION_CHROME_ENUM.PINNED_CHAT] = not GetFFlagDisableChromePinnedChat,
	[MENU_VERSION_CHROME_ENUM.DEFAULT_OPEN] = not GetFFlagDisableChromeDefaultOpen,
	[REPORT_ABUSE_MENU_VERSION_V2] = false,
	[MENU_VERSION_CHROME_FOLLOWUP_ENUM.UNIBAR] = not GetFFlagDisableChromeFollowupUnibar,
	[MENU_VERSION_CHROME_FOLLOWUP_ENUM.FTUX] = not GetFFlagDisableChromeFollowupFTUX,
	[MENU_VERSION_CHROME_FOLLOWUP_ENUM.OCCLUSION] = not GetFFlagDisableChromeFollowupOcclusion,
	[MENU_VERSION_SONGBIRD_ENUM.SONGBIRD] = true,
	[MENU_VERSION_SONGBIRD_ENUM.SONGBIRD_UNIBAR] = true,
	[MENU_VERSION_SONGBIRD_ENUM.SONGBIRD_PEEK] = true,
	[MENU_VERSION_SONGBIRD_ENUM.SONGBIRD_SCENE_ANALYSIS] = true,

	-- Invalidate Unibar test variants if the respective disable flag is turned on
	[MENU_VERSION_CHROME_V3_ENUM.BASELINE] = not GetFFlagDisableChromeV3Baseline,
	[MENU_VERSION_CHROME_V3_ENUM.CAPTURES] = not GetFFlagDisableChromeV3Captures,
	[MENU_VERSION_CHROME_V3_ENUM.STATIC_SELF_VIEW] = not GetFFlagDisableChromeV3StaticSelfView,
	[MENU_VERSION_CHROME_V3_ENUM.ICON] = not GetFFlagDisableChromeV3Icon,
	[MENU_VERSION_CHROME_V3_ENUM.DOCKED_MIC] = not GetFFlagDisableChromeV3DockedMic,
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

function ExperienceMenuABTestManager.modernizationModernizedVersionId()
	return MENU_VERSION_MODERNIZATION_ENUM.MODERNIZED
end

function ExperienceMenuABTestManager.modernizationBigTextVersionId()
	return MENU_VERSION_MODERNIZATION_ENUM.BIG_TEXT
end

function ExperienceMenuABTestManager.modernizationStickyBarVersionId()
	return MENU_VERSION_MODERNIZATION_ENUM.STICKY_BAR
end

function ExperienceMenuABTestManager.consoleModernizationVersionId()
	return MENU_VERSION_MODERNIZATION_ENUM.CONSOLE
end

function ExperienceMenuABTestManager.chromeVersionId()
	return MENU_VERSION_CHROME_ENUM.UNIBAR
end

function ExperienceMenuABTestManager.chromePinnedChatVersionId()
	return MENU_VERSION_CHROME_ENUM.PINNED_CHAT
end

function ExperienceMenuABTestManager.chromeDefaultOpenVersionId()
	return MENU_VERSION_CHROME_ENUM.DEFAULT_OPEN
end

function ExperienceMenuABTestManager.chromeFollowupVersionId()
	return MENU_VERSION_CHROME_FOLLOWUP_ENUM.UNIBAR
end

function ExperienceMenuABTestManager.chromeFTUXVersionId()
	return MENU_VERSION_CHROME_FOLLOWUP_ENUM.FTUX
end

function ExperienceMenuABTestManager.chromeOcclusionVersionId()
	return MENU_VERSION_CHROME_FOLLOWUP_ENUM.OCCLUSION
end

function ExperienceMenuABTestManager.chromeV3BaselineVersionId()
	return MENU_VERSION_CHROME_V3_ENUM.BASELINE
end

function ExperienceMenuABTestManager.chromeCapturesVersionId()
	return MENU_VERSION_CHROME_V3_ENUM.CAPTURES
end

function ExperienceMenuABTestManager.chromeStaticSelfViewVersionId()
	return MENU_VERSION_CHROME_V3_ENUM.STATIC_SELF_VIEW
end

function ExperienceMenuABTestManager.chromeIconVersionId()
	return MENU_VERSION_CHROME_V3_ENUM.ICON
end

function ExperienceMenuABTestManager.chromeDockedMicVersionId()
	return MENU_VERSION_CHROME_V3_ENUM.DOCKED_MIC
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

if GetFFlagSongbirdIXPVariants() then
	function ExperienceMenuABTestManager.chromeSongbirdVersionId()
		return MENU_VERSION_SONGBIRD_ENUM.SONGBIRD
	end

	function ExperienceMenuABTestManager.chromeSongbirdUnibarVersionId()
		return MENU_VERSION_SONGBIRD_ENUM.SONGBIRD_UNIBAR
	end

	function ExperienceMenuABTestManager.chromeSongbirdPeekVersionId()
		return MENU_VERSION_SONGBIRD_ENUM.SONGBIRD_PEEK
	end

	function ExperienceMenuABTestManager.sceneAnalysisVersionId()
		return MENU_VERSION_SONGBIRD_ENUM.SONGBIRD_SCENE_ANALYSIS
	end
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

function ExperienceMenuABTestManager:isMenuModernizationEnabled()
	for _, version in pairs(MENU_VERSION_MODERNIZATION_ENUM) do
		if(self:getVersion() == version) then
			return true
		end
	end

	return false
end

function ExperienceMenuABTestManager:shouldShowBiggerText()
	return self:getVersion() == MENU_VERSION_MODERNIZATION_ENUM.BIG_TEXT
end

function ExperienceMenuABTestManager:shouldShowStickyBar()
	return self:getVersion() == MENU_VERSION_MODERNIZATION_ENUM.STICKY_BAR
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

	for _, version in MENU_VERSION_CHROME_V3_ENUM do
		if self:getVersion() == version then
			return true
		end
	end

	for _, version in MENU_VERSION_CHROME_ENUM do
		if self:getVersion() == version then
			return true
		end
	end

	for _, version in MENU_VERSION_CHROME_FOLLOWUP_ENUM do
		if self:getVersion() == version then
			return true
		end
	end

	if GetFFlagSongbirdIXPVariants() then
		for _, version in MENU_VERSION_SONGBIRD_ENUM do
			if version == self.sceneAnalysisVersionId() then
				continue
			end

			if self:getVersion() == version then
				return true
			end
		end
	end

	return false
end

function ExperienceMenuABTestManager:shouldPinChat()
	-- All variants in Unibar v3 have pinned chat
	for _, version in MENU_VERSION_CHROME_V3_ENUM do
		if self:getVersion() == version then
			return true
		end
	end

	-- All variants in follow up Unibar test have pinned chat
	for _, version in MENU_VERSION_CHROME_FOLLOWUP_ENUM do
		if self:getVersion() == version then
			return true
		end
	end

	return self:getVersion() == MENU_VERSION_CHROME_ENUM.PINNED_CHAT
end

function ExperienceMenuABTestManager:shouldDefaultOpen()
	-- All variants in Unibar v4 default open
	for _, version in MENU_VERSION_CHROME_V4_ENUM do
		if self:getVersion() == version then
			return true
		end
	end

	-- All variants in Unibar v3 default open
	for _, version in MENU_VERSION_CHROME_V3_ENUM do
		if self:getVersion() == version then
			return true
		end
	end

	-- All non-FTUX variants in follow up Unibar test have "Default Open"
	return self:getVersion() == MENU_VERSION_CHROME_ENUM.DEFAULT_OPEN or self:getVersion() == MENU_VERSION_CHROME_FOLLOWUP_ENUM.UNIBAR or self:getVersion() == MENU_VERSION_CHROME_FOLLOWUP_ENUM.OCCLUSION
end

function ExperienceMenuABTestManager:shouldShowFTUX()
	return self:getVersion() == MENU_VERSION_CHROME_FOLLOWUP_ENUM.FTUX
end

function ExperienceMenuABTestManager:shouldShowCaptures()
	return self:getVersion() == MENU_VERSION_CHROME_V3_ENUM.CAPTURES
end

function ExperienceMenuABTestManager:shouldShowStaticSelfView()
	return self:getVersion() == MENU_VERSION_CHROME_V3_ENUM.STATIC_SELF_VIEW
end

function ExperienceMenuABTestManager:shouldShowNewIcon()
	return self:getVersion() == MENU_VERSION_CHROME_V3_ENUM.ICON
end

function ExperienceMenuABTestManager:shouldDockMic()
	return self:getVersion() == MENU_VERSION_CHROME_V3_ENUM.DOCKED_MIC
end
function ExperienceMenuABTestManager:shouldCloseSelfViewAtStartup()
	return self:getVersion() == MENU_VERSION_CHROME_V4_ENUM.CLOSED_SELF_VIEW
end

if GetFFlagSongbirdIXPVariants() then
	function ExperienceMenuABTestManager:shouldEnableSceneAnalysis()
		local version = self:getVersion()
		return version == MENU_VERSION_SONGBIRD_ENUM.SONGBIRD
			or version == MENU_VERSION_SONGBIRD_ENUM.SONGBIRD_SCENE_ANALYSIS
			or version == MENU_VERSION_SONGBIRD_ENUM.SONGBIRD_UNIBAR
			or version == MENU_VERSION_SONGBIRD_ENUM.SONGBIRD_PEEK
	end

	function ExperienceMenuABTestManager:shouldShowSongbirdUnibar()
		local version = self:getVersion()
		return version == MENU_VERSION_SONGBIRD_ENUM.SONGBIRD or version == MENU_VERSION_SONGBIRD_ENUM.SONGBIRD_UNIBAR
	end

	function ExperienceMenuABTestManager:shouldShowSongbirdPeek()
		local version = self:getVersion()
		return version == MENU_VERSION_SONGBIRD_ENUM.SONGBIRD or version == MENU_VERSION_SONGBIRD_ENUM.SONGBIRD_PEEK
	end
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
