local PluginLoader = require(script.PluginLoader)
local PluginLoaderBuilder = require(script.PluginLoaderBuilder)

export type Args = PluginLoaderBuilder.Args
export type PluginLoaderContext = PluginLoaderBuilder.PluginLoaderContext
export type ButtonInfo = PluginLoaderBuilder.ButtonInfo

return {
	PluginLoader = PluginLoader,
	PluginLoaderBuilder = PluginLoaderBuilder,
}
