--[[
	Used to clear the purchase flow reducer to start
	a new purchase flow.
]]

local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Core.Actions.Action)

return Action(script.Name, function(assetId)
	return {
		assetId = assetId,
	}
end)
