local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Modules = CoreGui.RobloxGui.Modules
local IXPServiceWrapper = require(RobloxGui.Modules.Common.IXPServiceWrapper)

local IXP_LAYER = "Experience.Menu"
local IXP_PARAMETER = "NewInviteMenuEnabled"

local GetFFlagEnableNewInviteMenuIXP = require(Modules.Flags.GetFFlagEnableNewInviteMenuIXP)

local NewInviteMenuExperimentManager = {}
NewInviteMenuExperimentManager.__index = NewInviteMenuExperimentManager

function NewInviteMenuExperimentManager.new(serviceWrapper: any): any
	local manager: any = {
		_ixpServiceWrapper = serviceWrapper or IXPServiceWrapper,
		_isEnabled = false
	}
	setmetatable(manager, NewInviteMenuExperimentManager)
	return manager
end

function NewInviteMenuExperimentManager:getEnabled()
	return self._isEnabled
end

function NewInviteMenuExperimentManager:initialize()
	if not GetFFlagEnableNewInviteMenuIXP() then
		return
	end

	-- fetch variant from IXP
	local layerFetchSuccess, layerData = pcall(function()
		return self._ixpServiceWrapper:IsEnabled() and self._ixpServiceWrapper:GetLayerData(IXP_LAYER) or {}
	end)

	-- bail if we aren't able to communicate with IXP service
	if not layerFetchSuccess then
		return
	end

	if layerData and layerData[IXP_PARAMETER] ~= nil then
		self._isEnabled = layerData[IXP_PARAMETER]
	end
end

NewInviteMenuExperimentManager.default = NewInviteMenuExperimentManager.new()
return NewInviteMenuExperimentManager
