--[[
	Used to clear the purchase flow reducer to start
	a new purchase flow.
]]

local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Util = require(Packages.Framework).Util
local Action = Util.Action

return Action(script.Name, function(assetId)
	return {
		assetId = assetId,
	}
end)
