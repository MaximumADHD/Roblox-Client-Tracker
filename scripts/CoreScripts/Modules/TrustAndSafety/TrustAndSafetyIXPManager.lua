local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GetFFlagReportAnythingAnnotationIXP =
	require(RobloxGui.Modules.Settings.Flags.GetFFlagReportAnythingAnnotationIXP)
local GetFStringReportAnythingAnnotationIXPLayerName =
	require(RobloxGui.Modules.Settings.Flags.GetFStringReportAnythingAnnotationIXPLayerName)
local GetFStringLuaAppExperienceMenuLayer =
	require(RobloxGui.Modules.Flags.GetFStringLuaAppExperienceMenuLayer)
local GetFFlagForceReportAnythingAnnotationEnabled = require(script.Parent.Flags.GetFFlagForceReportAnythingAnnotationEnabled)
local GetFFlagReportTabShareIXPLayerWithMenu = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagReportTabShareIXPLayerWithMenu
local IXPServiceWrapper = require(RobloxGui.Modules.Common.IXPServiceWrapper)
local log = require(RobloxGui.Modules.Logger):new(script.Name)

local OPTIONAL_SCREENSHOT_ENABLED = "OptionalScreenshotEnabled"
local OPTIONAL_SCREENSHOT_AVATAR = "OptionalScreenshotAvatar"
local OPTIONAL_SCREENSHOT_EXPERIENCE = "OptionalScreenshotExperience"
local SELECT_IN_SCENE = "SelectInScene"
local REPORT_TAB_SELECT_IN_SCENE = "ReportTabSelectInScene"
local VOICE_PROXIMITY_SORT = "EnableProximitySort"

local TrustAndSafetyIXPManager = {}
TrustAndSafetyIXPManager.__index = TrustAndSafetyIXPManager

function TrustAndSafetyIXPManager.new(serviceWrapper: any): any
	local manager: any = {
		_ixpServiceWrapper = serviceWrapper or IXPServiceWrapper,
		_initialized = false, -- initialize() has been called
		_ixpInitialized = false, -- We're done calling IXP
		_optionalScreenshotEnabled = false,
		_reportAnythingExperienceEnabled = false,
		_reportAnythingAvatarEnabled = false,
		_selectInSceneEnabled = false,
		_voiceProximitySortEnabled = false,
		_callbacks = {},
	}
	setmetatable(manager, TrustAndSafetyIXPManager)
	return manager
end

function TrustAndSafetyIXPManager:getReportAnythingExperienceEnabled()
	if GetFFlagForceReportAnythingAnnotationEnabled() then
		return true
	end
	return self._reportAnythingExperienceEnabled or self._optionalScreenshotEnabled
end

function TrustAndSafetyIXPManager:getReportAnythingAvatarEnabled()
	if GetFFlagForceReportAnythingAnnotationEnabled() then
		return true
	end
	return self._reportAnythingAvatarEnabled or self._optionalScreenshotEnabled
end

function TrustAndSafetyIXPManager:getSelectInSceneEnabled()
	return self._selectInSceneEnabled
end

function TrustAndSafetyIXPManager:getVoiceProximitySortEnabled()
	return self._voiceProximitySortEnabled
end

function TrustAndSafetyIXPManager:waitForInitialization(callback)
	if self._ixpInitialized then
		callback()
	else
		table.insert(self._callbacks, callback)
	end
end

function TrustAndSafetyIXPManager:initialize()
	if self._initialized then
		return
	end
	self._initialized = true

	local function invokeCallbacks()
		for _, cb in ipairs(self._callbacks) do
			cb()
		end
		self._callbacks = {}
	end

	if not GetFFlagReportAnythingAnnotationIXP() then
		self._ixpInitialized = true
		invokeCallbacks()
		return
	end

	task.spawn(function()
		self._ixpServiceWrapper:WaitForInitialization()
		local layerData = self._ixpServiceWrapper:GetLayerData(GetFStringReportAnythingAnnotationIXPLayerName())
		if layerData then
			-- retain optionalScreenshotEnabled for compatibility during transition
			self._optionalScreenshotEnabled = layerData[OPTIONAL_SCREENSHOT_ENABLED] or false
			self._reportAnythingExperienceEnabled = layerData[OPTIONAL_SCREENSHOT_EXPERIENCE] or false
			self._reportAnythingAvatarEnabled = layerData[OPTIONAL_SCREENSHOT_AVATAR] or false
			self._selectInSceneEnabled = layerData[SELECT_IN_SCENE] or false
			self._voiceProximitySortEnabled = layerData[VOICE_PROXIMITY_SORT] or false
		end

		if GetFFlagReportTabShareIXPLayerWithMenu() then
			local experienceMenuLayerData = self._ixpServiceWrapper:GetLayerData(GetFStringLuaAppExperienceMenuLayer())

			if experienceMenuLayerData then
				self._selectInSceneEnabled = experienceMenuLayerData[REPORT_TAB_SELECT_IN_SCENE] or self._selectInSceneEnabled
			end
		end

		log:debug(
			"RA Optional Screenshot enabled (Avatar and/or Experience) or Select In Scene enabled? Both Avatar and Exp: {}, Exp: {}, Avatar: {}, Select in Scene: {}. Voice Proximity: {}. Invoking {} callbacks.",
			self._optionalScreenshotEnabled,
			self._reportAnythingExperienceEnabled,
			self._reportAnythingAvatarEnabled,
			self._selectInSceneEnabled,
			self._voiceProximitySortEnabled,
			#self._callbacks
		)

		-- Invoke all pending callbacks
		self._ixpInitialized = true
		invokeCallbacks()
	end)
end

TrustAndSafetyIXPManager.default = TrustAndSafetyIXPManager.new()
return TrustAndSafetyIXPManager
