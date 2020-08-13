local ActionCreator = require(script.Parent.Parent.ActionCreator)

return ActionCreator("SetSubjectToChinaPolicies", function(subjectToChinaPolicies)
	return {
		subjectToChinaPolicies = subjectToChinaPolicies,
	}
end)