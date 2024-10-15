--!nonstrict
--[[
	Handles A/B testing of experience menu with IXP service
	on the Experience.Menu layer for Share Invite Link
]]

local CorePackages = game:GetService("CorePackages")
local AppStorageService = game:GetService("AppStorageService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Modules = CoreGui.RobloxGui.Modules
local IXPServiceWrapper = require(RobloxGui.Modules.Common.IXPServiceWrapper)

local LOCAL_STORAGE_KEY_EXPERIMENT_ENABLED = "ShareInviteLinkExperimentEnabled"
local HAS_KEY_IN_GAME_ENGINE = game:GetEngineFeature("UniversalAppShareLinksStorageKey")

local GetFFlagShareInviteLinkContextMenuABTestEnabled =
	require(Modules.Flags.GetFFlagShareInviteLinkContextMenuABTestEnabled)

local GetFStringLuaAppExperienceMenuLayer = require(CorePackages.Workspace.Packages.SharedFlags).GetFStringLuaAppExperienceMenuLayer

local ShareInviteLinkABTestManager = {}
ShareInviteLinkABTestManager.__index = ShareInviteLinkABTestManager

function ShareInviteLinkABTestManager.new(ixpServiceWrapper)
	local instance = {
		_currentSessionIsEnabled = nil,
		_ixpServiceWrapper = ixpServiceWrapper or IXPServiceWrapper,
	}

	setmetatable(instance, ShareInviteLinkABTestManager)
	return instance
end

function ShareInviteLinkABTestManager:initialize()
	if not GetFFlagShareInviteLinkContextMenuABTestEnabled() then
		return
	end

	-- fetch variant from IXP
	local layerFetchSuccess, layerData = pcall(function()
		return self._ixpServiceWrapper:GetLayerData(GetFStringLuaAppExperienceMenuLayer())
	end)

	-- bail if we aren't able to communicate with IXP service
	if not layerFetchSuccess then
		return
	end

	if self._currentSessionIsEnabled == nil then
		self._currentSessionIsEnabled = self.getCachedValue()
	end

	local isEnabled = if layerData then layerData.share_invite_link_enabled else false
	if isEnabled ~= self._currentSessionIsEnabled and HAS_KEY_IN_GAME_ENGINE then
		pcall(function()
			AppStorageService:SetItem(
				LOCAL_STORAGE_KEY_EXPERIMENT_ENABLED,
				tostring(layerData.share_invite_link_enabled)
			)
			AppStorageService:Flush()
		end)
	end
end

-- VisibleForTesting
function ShareInviteLinkABTestManager.getCachedValue()
	if HAS_KEY_IN_GAME_ENGINE then
		local cacheFetchSuccess, cachedExperimentEnabledValue = pcall(function()
			return AppStorageService:GetItem(LOCAL_STORAGE_KEY_EXPERIMENT_ENABLED)
		end)

		if cacheFetchSuccess then
			return cachedExperimentEnabledValue == "true"
		end
	end
	-- fallback to default if there was an issue with local storage
	return false
end

function ShareInviteLinkABTestManager:isShareInviteLinkEnabled()
	if self._currentSessionIsEnabled == nil then
		self._currentSessionIsEnabled = self.getCachedValue()
	end
	return self._currentSessionIsEnabled
end

ShareInviteLinkABTestManager.default = ShareInviteLinkABTestManager.new()
return ShareInviteLinkABTestManager
