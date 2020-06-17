local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent
local Action = require(Plugin.Framework.Util).Action

return Action(script.Name, function(sourceLanguage, targetLanguages)
	assert(type(sourceLanguage) == "string", "sourceLanguage must be a string")
	assert(type(targetLanguages) == "table", "targetLanguages must be a table")
	return {
		sourceLanguage = sourceLanguage,
		targetLanguages = targetLanguages,
	}
end)
