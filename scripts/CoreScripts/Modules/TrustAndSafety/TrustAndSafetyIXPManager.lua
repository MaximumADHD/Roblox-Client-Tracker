local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GetFFlagReportAnythingAnnotationIXP =
	require(RobloxGui.Modules.Settings.Flags.GetFFlagReportAnythingAnnotationIXP)
local GetFStringReportAnythingAnnotationIXPLayerName =
	require(RobloxGui.Modules.Settings.Flags.GetFStringReportAnythingAnnotationIXPLayerName)
local IXPServiceWrapper = require(RobloxGui.Modules.Common.IXPServiceWrapper)
local log = require(RobloxGui.Modules.Logger):new(script.Name)

local OPTIONAL_SCREENSHOT_ENABLED = "OptionalScreenshotEnabled"
local OPTIONAL_SCREENSHOT_AVATAR = "OptionalScreenshotAvatar"
local OPTIONAL_SCREENSHOT_EXPERIENCE = "OptionalScreenshotExperience"

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
		_callbacks = {},
	}
	setmetatable(manager, TrustAndSafetyIXPManager)
	return manager
end

function TrustAndSafetyIXPManager:getReportAnythingExperienceEnabled()
	return self._reportAnythingExperienceEnabled or self._optionalScreenshotEnabled
end

function TrustAndSafetyIXPManager:getReportAnythingAvatarEnabled()
	return self._reportAnythingAvatarEnabled or self._optionalScreenshotEnabled
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
		end

		log:debug(
			"RA Optional Screenshot enabled? Both: {}, Exp: {}, Avatar: {}. Invoking {} callbacks.",
			self._optionalScreenshotEnabled,
			self._reportAnythingExperienceEnabled,
			self._reportAnythingAvatarEnabled,
			#self._callbacks
		)

		-- Invoke all pending callbacks
		self._ixpInitialized = true
		invokeCallbacks()
	end)
end

TrustAndSafetyIXPManager.default = TrustAndSafetyIXPManager.new()
return TrustAndSafetyIXPManager
