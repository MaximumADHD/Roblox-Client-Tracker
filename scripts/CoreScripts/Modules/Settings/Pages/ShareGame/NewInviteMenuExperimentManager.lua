local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Modules = CoreGui.RobloxGui.Modules
local IXPServiceWrapper = require(RobloxGui.Modules.Common.IXPServiceWrapper)

local IXP_STYLE_PARAMETER = "NewInviteMenuStyleEnabled"
local IXP_CUSTOMIZATION_PARAMETER = "NewInviteMenuCustomizationEnabled"
local IXP_ENDPOINT_PARAMETER = "NewInviteMenuEndpointEnabled"

local GetFFlagEnableNewInviteMenuIXP = require(Modules.Flags.GetFFlagEnableNewInviteMenuIXP)
local GetFStringLuaAppExperienceMenuLayer = require(Modules.Flags.GetFStringLuaAppExperienceMenuLayer)

local NewInviteMenuExperimentManager = {}
NewInviteMenuExperimentManager.__index = NewInviteMenuExperimentManager

function NewInviteMenuExperimentManager.new(serviceWrapper: any): any
	local manager: any = {
		_ixpServiceWrapper = serviceWrapper or IXPServiceWrapper,
		_styleEnabled = false,
		_customizationEnabled = false,
		_newSendEndpointEnabled = false,
	}
	setmetatable(manager, NewInviteMenuExperimentManager)
	return manager
end

function NewInviteMenuExperimentManager:getStyleEnabled()
	return self._styleEnabled
end

function NewInviteMenuExperimentManager:getCustomizationEnabled()
	return self._customizationEnabled
end

function NewInviteMenuExperimentManager:getNewSendEndpointEnabled()
	return self._newSendEndpointEnabled
end

function NewInviteMenuExperimentManager:initialize()
	if not GetFFlagEnableNewInviteMenuIXP() then
		return
	end

	if self._ixpServiceWrapper:IsEnabled() then
		task.spawn(function()
			self._ixpServiceWrapper:WaitForInitialization()
			local layerData = self._ixpServiceWrapper:GetLayerData(GetFStringLuaAppExperienceMenuLayer())
			if layerData then
				self._styleEnabled = layerData[IXP_STYLE_PARAMETER] or false
				self._customizationEnabled = layerData[IXP_CUSTOMIZATION_PARAMETER] or false
				self._newSendEndpointEnabled = layerData[IXP_ENDPOINT_PARAMETER] or false
			end
		end)
	end
end

NewInviteMenuExperimentManager.default = NewInviteMenuExperimentManager.new()
return NewInviteMenuExperimentManager
