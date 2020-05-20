--[[
	ContextItem for NetworkingImpl
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local ContextServices = require(Plugin.Framework.ContextServices)

local ContextItem = ContextServices.ContextItem
local Provider = require(Plugin.Framework.ContextServices.Provider)
local Impl = require(Plugin.Src.ContextServices.NetworkingImpl)

local Item = ContextItem:extend(script.Name)

function Item.new(...)
	local self = {
		impl = Impl.new(...)
	}

	return setmetatable(self, Item)
end

function Item:createProvider(root)
	return Roact.createElement(Provider, {
		ContextItem = self,
	}, {root})
end

function Item:get()
	return self.impl
end

return Item