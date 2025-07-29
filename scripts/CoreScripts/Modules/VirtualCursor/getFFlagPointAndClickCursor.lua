-- This package is DEPRECATED, per https://roblox.atlassian.net/browse/UIBLOX-2597
-- Virtual Cursor has been moved to lua-apps/modules/app-common/virtual-cursor, this location's VC will be deleted after rollout of FFlagUseAppCommonVirtualCursorWithFixes

local CorePackages = game:GetService("CorePackages")
local IXPServiceWrapper = require(CorePackages.Workspace.Packages.IxpServiceWrapper).IXPServiceWrapper
local AppUserLayers = require(CorePackages.Workspace.Packages.ExperimentLayers).AppUserLayers

local HTTPService = game:GetService("HttpService")

game:DefineFastFlag("PointAndClickCursor", false)
game:DefineFastFlag("GamepadPointAndClick", false)
game:DefineFastFlag("GamepadDirectionalOverrideByUniverseIDEnabled", false)
game:DefineFastString("GamepadDirectionalOverrideByUniverseID", "{\"allowlist\":[]}")

local layerEnabled = false
local layerFetchSuccess, layerData = pcall(function()
    return IXPServiceWrapper:GetLayerData(AppUserLayers.PointAndClick)
end)
if layerFetchSuccess and layerData then
    layerEnabled = layerData["generatedExperimentVariantDistributionVariable"] == 1
end

local flagEnabled = game:GetFastFlag("PointAndClickCursor") and game:GetFastFlag("GamepadPointAndClick")

local Overrides = HTTPService:JSONDecode(game:GetFastString("GamepadDirectionalOverrideByUniverseID"))

local allowed = (not game:GetFastFlag("GamepadDirectionalOverrideByUniverseIDEnabled")) or table.find(Overrides.allowlist or {}, game.GameId) ~= nil

local function getFFlagPointAndClickCursor()
    return allowed and (layerEnabled or flagEnabled)
end

return getFFlagPointAndClickCursor
