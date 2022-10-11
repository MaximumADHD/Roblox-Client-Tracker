local Page = script.Parent.Parent

local MorpherEditorSettings = require(Page.Reducers.MorpherEditorSettings)
local MorpherEditorTemplates = require(Page.Reducers.MorpherEditorTemplates)

return function(state, action)
	state = state or { StateMorpher = {} }
	return {
		StateMorpher = {
			StateTemplates = MorpherEditorTemplates(state.StateMorpher.StateTemplates, action),
			StateSettings = MorpherEditorSettings(state.StateMorpher.StateSettings, action),
		},
	}
end
