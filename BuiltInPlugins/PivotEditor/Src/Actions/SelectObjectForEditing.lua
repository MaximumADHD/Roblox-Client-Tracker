local Plugin = script.Parent.Parent.Parent

local Framework = Plugin.Packages.Framework
local Action = require(Framework).Util.Action

return Action(script.Name, function(targetObject)
	assert(typeof(targetObject) == "Instance")
	return {
		targetObject = targetObject,
	}
end)
