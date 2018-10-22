local paths = require(script.Parent.Parent.Paths)

return paths.UtilityFunctionsAction.createAction(script.Name, function(avatarRules)
	return {	
		rulesData = avatarRules
	}
end)