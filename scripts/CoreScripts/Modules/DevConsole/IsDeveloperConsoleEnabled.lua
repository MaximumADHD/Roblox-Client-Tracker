local CoreGui = game:GetService("CoreGui")

local PolicyService = require(CoreGui.RobloxGui.Modules.Common.PolicyService)

local FFlagDeveloperConsoleEnabledForLuobu = game:DefineFastFlag("DeveloperConsoleEnabledForLuobu", false)

local function isDevConsoleEnabled()
	if FFlagDeveloperConsoleEnabledForLuobu then
		return true
	end

	if PolicyService:IsSubjectToChinaPolicies() then
		return false
	end

	return true
end

return isDevConsoleEnabled