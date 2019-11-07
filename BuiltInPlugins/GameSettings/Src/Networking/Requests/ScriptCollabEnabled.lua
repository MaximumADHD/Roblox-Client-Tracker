local Plugin = script.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local ScriptCollabEnabled = {}
local StudioData = game:GetService("StudioData")

function ScriptCollabEnabled.Get()
    return Promise.resolve({
		ScriptCollabEnabled = StudioData.EnableScriptCollabOnLoad
    })
end

function ScriptCollabEnabled.Set(value)
	StudioData.EnableScriptCollabOnLoad = value
    return Promise.resolve()
end

return ScriptCollabEnabled