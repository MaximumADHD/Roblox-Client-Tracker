local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Action = Framework.Util.Action

return {
	LoadWebResults = Action("LoadWebResults", function(searchTerm)
		return {
			searchTerm = searchTerm,
		}
	end),

	LoadedWebResults = Action("LoadedWebResults", function(success, key, results)
		return {
			success = success,
			key = key,
			results = results,
		}
	end),

	SearchTextChanged = Action("SearchTextChanged", function(text)
		return {
			text = text,
		}
	end),
}
