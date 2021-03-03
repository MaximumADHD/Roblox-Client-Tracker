local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

return Action(script.Name, function(testObject)
	assert(testObject, ("testObject required in %s"):format(script.Name))
	return {
		testObject = testObject
	}
end)
