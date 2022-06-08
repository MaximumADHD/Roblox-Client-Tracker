local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Util = require(Packages.Framework).Util
local Action = Util.Action

local FFlagInfiniteScrollerForVersions = game:getFastFlag("InfiniteScrollerForVersions")

return Action(script.Name, function(versionHistory)
	assert(FFlagInfiniteScrollerForVersions)
	return {
		versionHistory = versionHistory,
	}
end)
