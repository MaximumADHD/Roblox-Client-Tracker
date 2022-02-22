local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Util = require(Packages.Framework).Util
local Action = Util.Action

return Action(script.Name, function(elapsedTime)
	assert(type(elapsedTime) == "number", "Expected elapsedTime to be a number")
	return {
		elapsedTime = elapsedTime,
	}
end)
