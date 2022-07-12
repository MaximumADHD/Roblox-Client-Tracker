local CoreGui = game:GetService("CoreGui")
local Modules = CoreGui.RobloxGui.Modules
local PolicyService = require(Modules.Common.PolicyService)
local SetIsSubjectToChinaPolicies = require(Modules.LoadingScreen.Actions.SetIsSubjectToChinaPolicies)

return function()
	return function(store)
		coroutine.wrap(function()
			local value = PolicyService:IsSubjectToChinaPolicies()
			store:dispatch(SetIsSubjectToChinaPolicies(value))
		end)()
	end
end
