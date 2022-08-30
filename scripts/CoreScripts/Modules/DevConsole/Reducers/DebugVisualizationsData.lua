local Immutable = require(script.Parent.Parent.Immutable)

local DebugVisualizationsUpdateSearchFilter = require(script.Parent.Parent.Actions.DebugVisualizationsUpdateSearchFilter)

return function(state: {[string]: any}?, action: {[string]: any}): {[string]: any}
	local debugVisualizationsData = state or {
		debugVisualizationsSearchTerm = "",
		debugVisualizationsTypeFilters = {},
	}
	local newTypeFilters
	if action.filterTypes == nil then
		newTypeFilters = debugVisualizationsData.debugVisualizationsTypeFilters
	else
		newTypeFilters = Immutable.JoinDictionaries(debugVisualizationsData.debugVisualizationsTypeFilters, action.filterTypes)
	end
	if action.type == DebugVisualizationsUpdateSearchFilter.name then
		local update = {
			debugVisualizationsSearchTerm = action.searchTerm,
			debugVisualizationsTypeFilters = newTypeFilters,
		}
		return Immutable.JoinDictionaries(debugVisualizationsData, update)
	end
	return debugVisualizationsData
end
