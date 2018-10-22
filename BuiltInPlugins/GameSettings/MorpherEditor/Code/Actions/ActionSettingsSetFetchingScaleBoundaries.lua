local paths = require(script.Parent.Parent.Paths)

return paths.UtilityFunctionsAction.createAction(script.Name, function(isFetching)
	return {	
		currentlyFetching = isFetching
	}
end)