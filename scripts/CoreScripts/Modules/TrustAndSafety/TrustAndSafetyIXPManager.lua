local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GetFFlagReportAnythingAnnotationIXP =
	require(RobloxGui.Modules.Settings.Flags.GetFFlagReportAnythingAnnotationIXP)
local GetFStringReportAnythingAnnotationIXPLayerName =
	require(RobloxGui.Modules.Settings.Flags.GetFStringReportAnythingAnnotationIXPLayerName)
local IXPServiceWrapper = require(RobloxGui.Modules.Common.IXPServiceWrapper)
local log = require(RobloxGui.Modules.Logger):new(script.Name)

local REPORT_ANYTHING_ENABLED = "ReportAnythingEnabled"
local TYPE_OF_ABUSE_ENABLED = "TypeofAbuseEnabled"

local TrustAndSafetyIXPManager = {}
TrustAndSafetyIXPManager.__index = TrustAndSafetyIXPManager

function TrustAndSafetyIXPManager.new(serviceWrapper: any): any
	local manager: any = {
		_ixpServiceWrapper = serviceWrapper or IXPServiceWrapper,
		_initialized = false, -- initialize() has been called
		_ixpInitialized = false, -- We're done calling IXP
		_reportAnythingEnabled = false,
		_typeofAbuseEnabled = false,
		_callbacks = {},
	}
	setmetatable(manager, TrustAndSafetyIXPManager)
	return manager
end

function TrustAndSafetyIXPManager:getReportAnythingEnabled()
	return self._reportAnythingEnabled
end

function TrustAndSafetyIXPManager:getTypeofAbuseEnabled() 
	return self._typeofAbuseEnabled
end

-- The experiment definition doesn't have separate variables for "other" vs
-- "experience" for now. It's all lumped into REPORT_ANYTHING_ENABLED. But
-- Let's keep the code paths separate.
function TrustAndSafetyIXPManager:getReportAnythingExperienceEnabled()
	return self:getReportAnythingEnabled()
end

function TrustAndSafetyIXPManager:getReportAnythingOtherEnabled()
	return self:getReportAnythingEnabled()
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
			self._reportAnythingEnabled = layerData[REPORT_ANYTHING_ENABLED] or false
			self._typeofAbuseEnabled = layerData[TYPE_OF_ABUSE_ENABLED] or false
		end

		log:debug("ReportAnything enabled? {}. Invoking {} callbacks.", self._reportAnythingEnabled, #self._callbacks)

		-- Invoke all pending callbacks
		self._ixpInitialized = true
		invokeCallbacks()
	end)
end

TrustAndSafetyIXPManager.default = TrustAndSafetyIXPManager.new()
return TrustAndSafetyIXPManager
