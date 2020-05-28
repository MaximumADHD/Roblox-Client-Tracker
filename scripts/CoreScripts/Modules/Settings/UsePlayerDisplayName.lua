local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local PolicyService = require(RobloxGui.Modules.Common.PolicyService)

local FFlagOldInGameMenuDisplayNameForAll = game:DefineFastFlag("OldInGameMenuDisplayNameForAll2", false)
local FFlagOldInGameMenuDisplayNamePolicy = game:DefineFastFlag("OldInGameMenuDisplayNamePolicy2", false)

local function UsePlayerDisplayName()
	if FFlagOldInGameMenuDisplayNameForAll then
		return true
	end

	if FFlagOldInGameMenuDisplayNamePolicy then
		return PolicyService:IsSubjectToChinaPolicies()
	end

	return false
end

return UsePlayerDisplayName
