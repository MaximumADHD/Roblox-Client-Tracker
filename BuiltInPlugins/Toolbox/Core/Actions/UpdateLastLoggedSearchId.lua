local Plugin = script:FindFirstAncestor("Toolbox")

local Packages = Plugin.Packages
local Util = require(Packages.Framework).Util
local Action = Util.Action

return Action(script.Name, function(searchId)
	return {
		searchId = searchId,
	}
end)
