return function(plugin, pluginLoaderContext)
	if not plugin then
		return
	end

	local Plugin = script.Parent.Parent

	local Roact = require(Plugin.Packages.Roact)

	local RefactorFlags = require(Plugin.Packages.Framework.Util.RefactorFlags)
	RefactorFlags.THEME_REFACTOR = true

	local PlayerEmulatorPlugin = require(Plugin.Src.Components.PlayerEmulatorPlugin)

	local function main()
		local pluginHandle

		local function onPluginWillDestroy()
			if pluginHandle then
				Roact.unmount(pluginHandle)
			end
		end

		local pluginGui = Roact.createElement(PlayerEmulatorPlugin, {
			plugin = plugin,
			onPluginWillDestroy = onPluginWillDestroy,
			pluginLoaderContext = pluginLoaderContext
		})

		pluginHandle = Roact.mount(pluginGui)
	end

	main()
end