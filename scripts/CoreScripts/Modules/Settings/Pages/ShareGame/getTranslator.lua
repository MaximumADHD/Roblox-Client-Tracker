--!nonstrict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)
local GetFFlagCoreScriptsMigrateFromLegacyCSVLoc = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagCoreScriptsMigrateFromLegacyCSVLoc

local mockTranslator = require(script.Parent.mockTranslator)

return function()
	if GetFFlagCoreScriptsMigrateFromLegacyCSVLoc() then
		return RobloxTranslator
	end
	
	local coreScriptLocalization = CoreGui:FindFirstChild("CoreScriptLocalization")
	if coreScriptLocalization then
		return RobloxTranslator
	else
		return mockTranslator
	end
end