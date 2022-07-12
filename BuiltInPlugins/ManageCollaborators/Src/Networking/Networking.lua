--[[
	ContextItem for NetworkingImpl
]]

local Plugin = script.Parent.Parent.Parent

local ContextServices = require(Plugin.Packages.Framework).ContextServices

local ContextItem = ContextServices.ContextItem

local Impl = require(Plugin.Src.Networking.NetworkingImpl)

local Item = ContextItem:extend(script.Name)

function Item.new(...)
	local self = {
		impl = Impl.new(...)
	}

	return setmetatable(self, Item)
end

function Item:get()
	return self.impl
end

return Item
