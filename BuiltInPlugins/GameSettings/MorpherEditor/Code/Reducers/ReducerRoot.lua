local paths = require(script.Parent.Parent.Paths)

return function(state, action)
	state = state or { StateMorpher = {}}
    return {
    	StateMorpher = {	
    		StateTemplates = paths.ReducerTemplates(state.StateMorpher.StateTemplates, action),
    		StateSettings = paths.ReducerSettings(state.StateMorpher.StateSettings, action),
    		StateTheme = paths.ReducerTheme(state.StateMorpher.StateTheme, action),
    	}
    }
end