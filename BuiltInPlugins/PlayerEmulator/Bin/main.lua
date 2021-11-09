return function(plugin, pluginLoaderContext)
	if not plugin then
		return
	end

	local FFlagImprovePluginSpeed_PlayerEmulator = game:GetFastFlag("ImprovePluginSpeed_PlayerEmulator")
	if not FFlagImprovePluginSpeed_PlayerEmulator then
		-- Move to loader.server.lua
		require(script.Parent.defineLuaFlags)
	end

	local Plugin = script.Parent.Parent

	if not FFlagImprovePluginSpeed_PlayerEmulator then
		-- Move to loader.server.lua
		local DebugFlags = require(Plugin.Src.Util.DebugFlags)
		if DebugFlags.RunningUnderCLI() then
			return
		end
	end
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
			pluginLoaderContext = FFlagImprovePluginSpeed_PlayerEmulator and pluginLoaderContext or nil
		})

		pluginHandle = Roact.mount(pluginGui)
	end

	main()
end