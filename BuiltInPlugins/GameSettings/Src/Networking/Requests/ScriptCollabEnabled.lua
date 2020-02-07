local Plugin = script.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local ScriptCollabEnabled = {}
local StudioData = game:GetService("StudioData")
local FFlagVersionControlServiceScriptCollabEnabledByDefault = settings():GetFFlag("VersionControlServiceScriptCollabEnabledByDefault")

function ScriptCollabEnabled.Get()
	if FFlagVersionControlServiceScriptCollabEnabledByDefault then
		return Promise.resolve({
			ScriptCollabEnabled = StudioData.EnableScriptCollabByDefaultOnLoad
		})
	else
		return Promise.resolve({
			ScriptCollabEnabled = StudioData.EnableScriptCollabOnLoad
		})
	end
end

function ScriptCollabEnabled.Set(value)
	if FFlagVersionControlServiceScriptCollabEnabledByDefault then
		StudioData.EnableScriptCollabByDefaultOnLoad = value
	else
		StudioData.EnableScriptCollabOnLoad = value
	end
    return Promise.resolve()
end

return ScriptCollabEnabled