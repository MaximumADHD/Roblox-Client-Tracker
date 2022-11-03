local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Rodux)
local ArgCheck = require(CorePackages.Workspace.Packages.ArgCheck)

return Rodux.makeActionCreator(script.Name, function(isSubjectToChinaPolicies)
	ArgCheck.isType(isSubjectToChinaPolicies, "boolean", "SetIsSubjectToChinaPolicies action expects isSubjectToChinaPolicies to be a boolean")
	return {
		isSubjectToChinaPolicies = isSubjectToChinaPolicies,
	}
end)