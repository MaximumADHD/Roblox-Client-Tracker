local Plugin = script.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local ScriptVersionHistoryEnabled = {}
local StudioData = game:GetService("StudioData")

function ScriptVersionHistoryEnabled.Get()
	return Promise.resolve({
		ScriptVersionHistoryEnabled = StudioData.EnableScriptCollabVersionHistoryOnLoad
	})
end

function ScriptVersionHistoryEnabled.Set(value)
	StudioData.EnableScriptCollabVersionHistoryOnLoad = value
    return Promise.resolve()
end

return ScriptVersionHistoryEnabled