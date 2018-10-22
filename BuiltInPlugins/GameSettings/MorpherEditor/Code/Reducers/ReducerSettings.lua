local paths = require(script.Parent.Parent.Paths)

return function(state, action)
	state = state or {
		scaleBoundaries = {
			isFetching=false,
			boundaries = {
				height = {min=0.9, max=1.05, increment=0.05},
				width = {min=0.7, max=1, increment=0.05},
				head = {min=0.95, max=1, increment=0.05},
				bodyType = {min=0, max=0.3, increment=0.05},
				proportion = {min=0, max=1, increment=0.05},
			}
		}
	}

    if paths.UtilityFunctionsAction.isActionOfType(action, paths.ActionSettingsSetFetchingScaleBoundaries) then
		return {scaleBoundaries = {isFetching=action.currentlyFetching, boundaries=state.scaleBoundaries.boundaries}}
	elseif paths.UtilityFunctionsAction.isActionOfType(action, paths.ActionSettingsSaveScaleBoundaries) then
		return {scaleBoundaries = {isFetching=state.scaleBoundaries.isFetching, boundaries=action.rulesData.scales}}
	end

	return state
end