--[[
	Updates the Store with whether the user owns the given asset.
]]

local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Util = require(Libs.Framework.Util)
local Action = Util.Action

return Action(script.Name, function(ownsAsset, assetId)
	assert(type(ownsAsset) == "boolean", "SetOwnsAsset expects a boolean.")
	assert(type(assetId) == "number", "SetOwnsAsset expects an asset id.")
	return {
		ownsAsset = ownsAsset,
		assetId = assetId,
	}
end)