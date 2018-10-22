local paths = require(script.Parent.Parent.Paths)

return paths.UtilityFunctionsAction.createAction(script.Name, function()
	return {
		templatesArrayToAdd = {paths.StateModelTemplate.new()},
	}
end)