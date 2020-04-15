local CoreGui = game:GetService("CoreGui")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local PolicyService = require(RobloxGui.Modules.Common.PolicyService)

local FFlagPlayerListUseDisplayName = game:DefineFastFlag("PlayerListUseDisplayName", false)
local FFlagPlayerListUseDisplayNameChina = game:DefineFastFlag("PlayerListUseDisplayNameChina", false)

local function isDisplayNameEnabled()
	if FFlagPlayerListUseDisplayName then
		return true
	end

	if FFlagPlayerListUseDisplayNameChina then
		return PolicyService:IsSubjectToChinaPolicies()
	end

	return false
end

return isDisplayNameEnabled