local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Packages.Framework).Util.Action

return Action(script.Name, function(allLanguageCodes)
	assert(type(allLanguageCodes) == "table", "Expected allLanguageCodes to be a table")
	return {
		allLanguageCodes = allLanguageCodes,
	}
end)
