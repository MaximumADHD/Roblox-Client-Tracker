local Immutable = require(script.Parent.Parent.Immutable)

local ActionBindingsUpdateSearchFilter = require(script.Parent.Parent.Actions.ActionBindingsUpdateSearchFilter)

return function(state, action)
	local actionBindingsData = state or {
		bindingsSearchTerm = "",
	}

	if action.type == ActionBindingsUpdateSearchFilter.name then
		return Immutable.Set(actionBindingsData, "bindingsSearchTerm", action.searchTerm)
	end
	return actionBindingsData
end