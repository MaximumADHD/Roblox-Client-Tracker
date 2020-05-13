--[[
	ContextItem for NetworkImpl
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local ContextServices = require(Plugin.Framework.ContextServices)

local ContextItem = ContextServices.ContextItem
local Provider = ContextServices.Provider
local NetworkingImpl = require(Plugin.Src.ContextServices.NetworkingImpl)

local Networking = ContextItem:extend("Networking")

function Networking.new(baseImpl)
	local self = {
		impl = NetworkingImpl.new(baseImpl)
	}

	return setmetatable(self, Networking)
end

function Networking:createProvider(root)
	return Roact.createElement(Provider, {
		ContextItem = self,
	}, {root})
end

function Networking:get()
	return self.impl
end

return Networking