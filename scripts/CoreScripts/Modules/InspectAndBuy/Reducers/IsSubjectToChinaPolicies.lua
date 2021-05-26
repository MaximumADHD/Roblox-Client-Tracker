local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Rodux)
local InspectAndBuyFolder = script.Parent.Parent

local SetIsSubjectToChinaPolicies = require(InspectAndBuyFolder.Actions.SetIsSubjectToChinaPolicies)

-- Default to most restricitive value so that non-compliant content is not shown before this value is loaded
local DEFAULT_VALUE = true

local IsSubjectToChinaPolicies = Rodux.createReducer(DEFAULT_VALUE, {
	[SetIsSubjectToChinaPolicies.name] = function(state, action)
		return action.isSubjectToChinaPolicies
	end,
})

return IsSubjectToChinaPolicies