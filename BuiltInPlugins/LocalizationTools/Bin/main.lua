return function(plugin, pluginLoaderContext)
	--[[
		Mounts and unmounts the Roact tree.
	]]
	local Plugin = script.Parent.Parent

	local Roact = require(Plugin.Packages.Roact)

	local MainPlugin = require(Plugin.Src.MainPlugin)
	local handle

	local function init()
		plugin.Name = "LocalizationTools"

		local mainPlugin = Roact.createElement(MainPlugin, {
			Plugin = plugin,
			pluginLoaderContext = pluginLoaderContext or nil
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