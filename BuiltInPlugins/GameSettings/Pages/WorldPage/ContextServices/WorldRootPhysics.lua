--[[
	ContextItem for WorldRootPhysicsController
]]

local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent

local ContextServices = require(Plugin.Packages.Framework).ContextServices

local ContextItem = ContextServices.ContextItem
local Impl = require(Page.Controllers.WorldRootPhysicsController)

local Item = ContextItem:extend(script.Name)

function Item.new(...)
	local self = {
		impl = Impl.new(...),
	}

	setmetatable(self, Item)
	return self
end

function Item:get()
	return self.impl
end

return Item
