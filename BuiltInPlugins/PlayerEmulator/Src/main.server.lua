if not plugin then
	return
end

local FFlagStudioPlayerEmulatorPluginEnabled = settings():GetFFlag("StudioPlayerEmulatorPluginEnabled")

if not FFlagStudioPlayerEmulatorPluginEnabled then
	return
end

local Plugin = script.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
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
	})

	pluginHandle = Roact.mount(pluginGui)
end

main()