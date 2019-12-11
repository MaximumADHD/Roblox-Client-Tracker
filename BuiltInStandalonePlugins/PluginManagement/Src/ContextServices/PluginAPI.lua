--[[
	Exposes a Promise-based networking object

	NOTE - This is a temporary Provider/Accessor until we switch over to Context2
]]

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Symbol = require(Plugin.Packages.Symbol)

local apiKey = Symbol.named("PluginAPI")

local PluginAPIProvider = Roact.PureComponent:extend("PluginAPIProvider")

function PluginAPIProvider:init()
	local pluginAPI = self.props.api
	assert(pluginAPI ~= nil, "PluginAPIProvider expected to be given the API object")
	self._context[apiKey] = pluginAPI
end

function PluginAPIProvider:render()
	return Roact.oneChild(self.props[Roact.Children])
end


local function getAPI(component)
	assert(component ~= nil, "A component must be provided")
	assert(component._context[apiKey] ~= nil, "A PluginAPIProvider was not put into the Roact tree")
	return component._context[apiKey]
end


return {
	Provider = PluginAPIProvider,
	getAPI = getAPI,
}