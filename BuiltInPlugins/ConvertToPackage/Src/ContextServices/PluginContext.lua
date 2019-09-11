local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local Symbol = require(Plugin.Src.Util.Symbol)
local PluginSymbol = Symbol.named("Plugin")
local PluginGuiSymbol = Symbol.named("PluginGui")

local PluginContext = Roact.PureComponent:extend("PluginContext")

function PluginContext:init(props)
	self._context[PluginSymbol] = props.plugin
	self._context[PluginGuiSymbol] = props.pluginGui
end

function PluginContext:render()
	return Roact.oneChild(self.props[Roact.Children])
end

function getPlugin(component)
	return component._context[PluginSymbol]
end

function getPluginGui(component)
	return component._context[PluginGuiSymbol]
end

return {
	Provider = PluginContext,
	getPlugin = getPlugin,
	getPluginGui = getPluginGui
}