--[[
	Provides a global wrapper around AssetService (could be mocked)
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)
local ContextItem = Framework.ContextServices.ContextItem
local Provider = Framework.ContextServices.Provider

local AssetServiceWrapper = ContextItem:extend("AssetServiceWrapper")

function AssetServiceWrapper.new(assetService)
	local self = {}

	setmetatable(self, AssetServiceWrapper)

	self._service = assetService

	return self
end

function AssetServiceWrapper:createProvider(root)
	return Roact.createElement(Provider, {
		ContextItem = self,
	}, {root})
end

function AssetServiceWrapper:get()
    return self._service
end

return AssetServiceWrapper