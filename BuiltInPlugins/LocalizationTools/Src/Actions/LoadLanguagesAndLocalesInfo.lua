local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Packages.Framework.Util).Action

return Action(script.Name, function(allLanguages, localesToLanguages)
	assert(type(allLanguages) == "table", "Expected allLanguages to be a table")
	assert(type(localesToLanguages) == "table", "Expected localesToLanguages to be a table")
	return {
		allLanguages = allLanguages,
		localesToLanguages = localesToLanguages,
	}
end)
