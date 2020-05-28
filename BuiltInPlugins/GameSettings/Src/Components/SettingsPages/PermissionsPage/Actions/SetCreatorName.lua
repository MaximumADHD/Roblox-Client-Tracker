local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent
local Action = require(Plugin.Framework.Util).Action

return Action(script.Name, function(creatorName)
	assert(typeof(creatorName) == "string", script.Name.." requires creatorName to be a string, not "..typeof(creatorName))

	return {
		creatorName = creatorName,
	}
end)