--[[
	Handles A/B testing of experience menu with IXP service
	on the Experience.Menu layer for Share Invite Link
]]

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Modules = CoreGui.RobloxGui.Modules
local IXPServiceWrapper = require(RobloxGui.Modules.Common.IXPServiceWrapper)

local GetFFlagShareInviteLinkContextMenuV1ABTestEnabled = require(
	Modules.Settings.Flags.GetFFlagShareInviteLinkContextMenuV1ABTestEnabled
)

local ShareInviteLinkABTestManager = {}
ShareInviteLinkABTestManager.__index = ShareInviteLinkABTestManager

function ShareInviteLinkABTestManager.new(ixpServiceWrapper)
	local instance = {
		_isShareInviteLinkEnabled = false,
		_ixpServiceWrapper = ixpServiceWrapper or IXPServiceWrapper,
	}

	setmetatable(instance, ShareInviteLinkABTestManager)
	return instance
end

function ShareInviteLinkABTestManager:isShareInviteLinkEnabled()
	return self._isShareInviteLinkEnabled
end

function ShareInviteLinkABTestManager:initialize()
	if not GetFFlagShareInviteLinkContextMenuV1ABTestEnabled() then
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

	if layerData and layerData.share_invite_link_enabled ~= nil then
		self._isShareInviteLinkEnabled = layerData.share_invite_link_enabled
	end
end

ShareInviteLinkABTestManager.default = ShareInviteLinkABTestManager.new()
return ShareInviteLinkABTestManager
