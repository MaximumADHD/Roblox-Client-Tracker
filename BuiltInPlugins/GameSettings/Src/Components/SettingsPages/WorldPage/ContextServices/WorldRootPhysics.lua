--[[
	ContextItem for WorldRootPhysicsController
]]

local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local ContextServices = require(Plugin.Framework.ContextServices)

local ContextItem = ContextServices.ContextItem
local Provider = require(Plugin.Framework.ContextServices.Provider)
local Impl = require(Page.Controllers.WorldRootPhysicsController)

local Item = ContextItem:extend(script.Name)

function Item.new(...)
	local self = {
		impl = Impl.new(...)
	}

	setmetatable(self, Item)
	return self
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