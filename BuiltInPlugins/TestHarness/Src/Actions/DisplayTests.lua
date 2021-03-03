local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

return Action(script.Name, function(testSet : table)
	assert(testSet, ("testSet required in"):format(script.Name))
	return {
		testSet = testSet
	}
end)
