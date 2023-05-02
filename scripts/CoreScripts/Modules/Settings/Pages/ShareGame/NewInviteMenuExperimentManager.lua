local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CorePackages = game:GetService("CorePackages")
local Modules = CoreGui.RobloxGui.Modules
local IXPServiceWrapper = require(RobloxGui.Modules.Common.IXPServiceWrapper)

local IXP_STYLE_PARAMETER = "NewInviteMenuStyleEnabled"
local IXP_CUSTOMIZATION_PARAMETER = "NewInviteMenuCustomizationEnabled"
local IXP_ENDPOINT_PARAMETER = "NewInviteMenuEndpointEnabled"
local IXP_INVITE_LIST_SORT_ORDER = "invite_list_sort_order"

local GetFStringInExperienceNotificationsLayer = require(Modules.Flags.GetFStringInExperienceNotificationsLayer)

local GetFFlagEnableNewInviteMenuIXP = require(Modules.Flags.GetFFlagEnableNewInviteMenuIXP)
local GetFFlagInviteListRerank = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagInviteListRerank


local NewInviteMenuExperimentManager = {}
NewInviteMenuExperimentManager.__index = NewInviteMenuExperimentManager

function NewInviteMenuExperimentManager.new(serviceWrapper: any): any
	local manager: any = {
		_ixpServiceWrapper = serviceWrapper or IXPServiceWrapper,
		_styleEnabled = false,
		_customizationEnabled = false,
		_newSendEndpointEnabled = false,
		_inviteListSortOrder = if GetFFlagInviteListRerank() then 0 else nil,
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

if GetFFlagInviteListRerank() then
	function NewInviteMenuExperimentManager:getInviteListSortOrder()
		return self._inviteListSortOrder
	end
end

function NewInviteMenuExperimentManager:initialize()
	if not GetFFlagEnableNewInviteMenuIXP() then
		return
	end

	task.spawn(function()
		self._ixpServiceWrapper:WaitForInitialization()
		local layerData = self._ixpServiceWrapper:GetLayerData(GetFStringInExperienceNotificationsLayer())
		if layerData then
			self._styleEnabled = layerData[IXP_STYLE_PARAMETER] or false
			self._customizationEnabled = layerData[IXP_CUSTOMIZATION_PARAMETER] or false
			self._newSendEndpointEnabled = layerData[IXP_ENDPOINT_PARAMETER] or false
			self._inviteListSortOrder =  if GetFFlagInviteListRerank() then layerData[IXP_INVITE_LIST_SORT_ORDER] or 0 else nil
		end
	end)
end

NewInviteMenuExperimentManager.default = NewInviteMenuExperimentManager.new()
return NewInviteMenuExperimentManager
