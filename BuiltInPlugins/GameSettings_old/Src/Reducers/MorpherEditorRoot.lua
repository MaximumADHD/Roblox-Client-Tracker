local Plugin = script.Parent.Parent.Parent

local MorpherEditorSettings = require(Plugin.Src.Reducers.MorpherEditorSettings)
local MorpherEditorTemplates = require(Plugin.Src.Reducers.MorpherEditorTemplates)

return function(state, action)
    state = state or { StateMorpher = {}}
    return {
        StateMorpher = {
            StateTemplates = MorpherEditorTemplates(state.StateMorpher.StateTemplates, action),
            StateSettings = MorpherEditorSettings(state.StateMorpher.StateSettings, action),
        }
    }
end