local Plugin = script.Parent.Parent.Parent

local MorpherEditorSettings = require(Plugin.Src.Reducers.MorpherEditorSettings)
local MorpherEditorTemplates = require(Plugin.Src.Reducers.MorpherEditorTemplates)
local MorpherEditorTheme = require(Plugin.Src.Reducers.MorpherEditorTheme)

return function(state, action)
    state = state or { StateMorpher = {}}
    return {
        StateMorpher = {
            StateTemplates = MorpherEditorTemplates(state.StateMorpher.StateTemplates, action),
            StateSettings = MorpherEditorSettings(state.StateMorpher.StateSettings, action),
            StateTheme = (not game:GetFastFlag("StudioGameSettingsResetStoreAction2")) and
                MorpherEditorTheme(state.StateMorpher.StateTheme, action) or nil,
        }
    }
end