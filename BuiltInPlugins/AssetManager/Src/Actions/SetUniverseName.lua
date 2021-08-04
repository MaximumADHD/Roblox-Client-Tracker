local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Packages.Framework).Util.Action

return Action(script.Name, function(universeName)
	assert(type(universeName) == "string", string.format("SetUniverseName requires a string, not %s", type(universeName)))

	return {
		universeName = universeName,
	}
end)
