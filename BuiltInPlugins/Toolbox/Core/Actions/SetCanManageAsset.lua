--[[
	Updates the Store with whether the user can manage the given asset.
]]

local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Core.Actions.Action)

return Action(script.Name, function(canManage, assetId)
	assert(type(canManage) == "boolean", "SetCanManageAsset expects a boolean.")
	assert(type(assetId) == "number", "SetCanManageAsset expects an asset id.")
	return {
		canManage = canManage,
		assetId = assetId,
	}
end)