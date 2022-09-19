--[[
	Action to set status of user as it pertains to
	whether they should be subject to china specific policies.
	With regards to the InspectAndBuy menu this means hiding the
	favorite count when subject to the policies
]]
local CorePackages = game:GetService("CorePackages")
local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action(script.Name, function(isSubjectToChinaPolicies)
	return {
		isSubjectToChinaPolicies = isSubjectToChinaPolicies,
	}
end)