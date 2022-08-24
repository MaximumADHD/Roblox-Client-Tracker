--[[
	Model for an Asset (e.g. Hat).
]]

local Packages = script:FindFirstAncestor("RoduxProfile").Parent
local DebugUtils = require(Packages.DebugUtils)
local MockId = DebugUtils.MockId

export type Type = {
	id: string,
	name: string,
}

local AssetInfo = {}

--[[
	Returns a mock AssetInfo instance for use in tests.
]]
function AssetInfo.mock()
	local self = {}

	self.id = MockId()
	self.assetType = "0"
	self.name = ""

	return self
end

--[[
	Creates a new AssetInfo model instance from AvatarEditorService
	asset data.
]]
function AssetInfo.fromAsset(asset)
	local assetInfo = {}

	assetInfo.id = tostring(asset.id)
	assetInfo.assetType = tostring(asset.assetType)
	assetInfo.name = asset.name

	return assetInfo
end

return AssetInfo
