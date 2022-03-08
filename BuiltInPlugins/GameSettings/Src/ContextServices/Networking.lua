--[[
	ContextItem for NetworkingImpl
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local ContextServices = require(Plugin.Packages.Framework).ContextServices

local ContextItem = ContextServices.ContextItem
-- TODO: When FFlagDevFrameworkUseCreateContext is retired remove this require
local Provider = require(Plugin.Packages.Framework).ContextServices.Provider

local FFlagDevFrameworkUseCreateContext = game:GetFastFlag("DevFrameworkUseCreateContext")

local Impl = require(Plugin.Src.ContextServices.NetworkingImpl)

local Item = ContextItem:extend(script.Name)

function Item.new(...)
	local self = {
		impl = Impl.new(...)
	}

	return setmetatable(self, Item)
end

if not FFlagDevFrameworkUseCreateContext then
	function Item:createProvider(root)
		return Roact.createElement(Provider, {
			ContextItem = self,
		}, {root})
	end
end

function Item:get()
	return self.impl
end

return Item
