local paths = require(script.Parent.Parent.Paths)
paths.requireAll(script.Parent.Parent.Parent.Parent)

return function(state, action)
	state = state or {}
    return {
    	StateSettings = paths.ReducerSettings(state.StateSettings, action)
    }
end