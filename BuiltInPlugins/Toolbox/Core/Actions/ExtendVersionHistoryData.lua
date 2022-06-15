local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Util = require(Packages.Framework).Util
local Action = Util.Action

local FFlagInfiniteScrollerForVersions2 = game:getFastFlag("InfiniteScrollerForVersions2")

return Action(script.Name, function(versionHistory)
	assert(FFlagInfiniteScrollerForVersions2)
	return {
		versionHistory = versionHistory,
	}
end)
