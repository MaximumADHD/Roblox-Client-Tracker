local Immutable = require(script.Parent.Parent.Immutable)

local ActionBindingsUpdateSearchFilter = require(script.Parent.Parent.Actions.ActionBindingsUpdateSearchFilter)

export type State = {
	bindingsSearchTerm: string,
}

return function(state: State?, action: {[string]: any}): State
	local actionBindingsData: State = state or {
		bindingsSearchTerm = "",
	}

	if action.type == ActionBindingsUpdateSearchFilter.name then
		return Immutable.Set(actionBindingsData, "bindingsSearchTerm", action.searchTerm) :: any
	end
	return actionBindingsData
end
