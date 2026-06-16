local CorePackages = game:GetService("CorePackages")
local IXPService = game:GetService("IXPService")

local root = script:FindFirstAncestor("AbuseReportMenu")
local GetFFlagWHAM1707ExperimentForceEnabled = require(root.Flags.GetFFlagWHAM1707ExperimentForceEnabled)
local IXPFieldWHAM1707 = require(root.Flags.FStringWHAM1707IXPField)

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FStringEARReportMenuIXPLayer = SharedFlags.FStringEARReportMenuIXPLayer

-- Copied out of the legacy menu (Components/AbuseReportMenuNew.lua), where this
-- IXP check was inline, so the new V2 menu can reuse the same experiment gating.
return function(): boolean
	if GetFFlagWHAM1707ExperimentForceEnabled() then
		return true
	end

	local success, IXPData = pcall(function()
		return IXPService:GetUserLayerVariables(FStringEARReportMenuIXPLayer)
	end)
	if not success or not IXPData or IXPData[IXPFieldWHAM1707] == nil then
		return false
	end

	IXPService:LogUserLayerExposure(FStringEARReportMenuIXPLayer)
	return IXPData[IXPFieldWHAM1707]
end
