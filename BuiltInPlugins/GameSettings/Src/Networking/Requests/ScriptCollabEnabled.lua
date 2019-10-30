local Plugin = script.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local ScriptCollabEnabled = {}

function ScriptCollabEnabled.Get()
    return Promise.resolve({
        ScriptCollabEnabled = game.EnableScriptCollabOnLoad
    })
end

function ScriptCollabEnabled.Set(value)
    game.EnableScriptCollabOnLoad = value
    return Promise.resolve()
end

return ScriptCollabEnabled