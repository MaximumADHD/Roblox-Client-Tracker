--[[
	Provides a global wrapper around AssetService (could be mocked)
]]

local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local ContextItem = Framework.ContextServices.ContextItem

local AssetServiceWrapper = ContextItem:extend("AssetServiceWrapper")

function AssetServiceWrapper.new(assetService)
	local self = {}

	setmetatable(self, AssetServiceWrapper)

	self._service = assetService

	return self
end

function AssetServiceWrapper:get()
    return self._service
end

return AssetServiceWrapper