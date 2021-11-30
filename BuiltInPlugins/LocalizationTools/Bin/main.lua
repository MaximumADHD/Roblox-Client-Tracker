return function(plugin, pluginLoaderContext)
	--[[
		Mounts and unmounts the Roact tree.
	]]

	local FFlagImprovePluginSpeed_LocalizationTool = game:GetFastFlag("ImprovePluginSpeed_LocalizationTool")

	local Plugin = script.Parent.Parent

	if not FFlagImprovePluginSpeed_LocalizationTool then
		-- Fast flags
		require(script.Parent.defineLuaFlags)

		local DebugFlags = require(Plugin.Src.Util.DebugFlags)
		if DebugFlags.RunningUnderCLI() then
			return
		end
	end

	local Roact = require(Plugin.Packages.Roact)

	local MainPlugin = require(Plugin.Src.MainPlugin)
	local handle

	local function init()
		plugin.Name = "LocalizationTools"

		local mainPlugin = Roact.createElement(MainPlugin, {
			Plugin = plugin,
			pluginLoaderContext = FFlagImprovePluginSpeed_LocalizationTool and pluginLoaderContext or nil
		})

		handle = Roact.mount(mainPlugin)
	end

	plugin.Unloading:Connect(function()
		if handle then
			Roact.unmount(handle)
			handle = nil
		end
	end)

	init()
end