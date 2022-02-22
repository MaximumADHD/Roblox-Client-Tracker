local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Util = require(Packages.Framework).Util
local Action = Util.Action

return Action(script.Name, function(assetId, newData)
	return {
		assetId = assetId,
		unvoteResponse = newData,
	}
end)
