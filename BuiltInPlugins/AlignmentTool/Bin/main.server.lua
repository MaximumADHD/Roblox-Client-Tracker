local Plugin = script.Parent.Parent
local getFFlagEnableAlignmentToolPlugin = require(Plugin.Src.Flags.getFFlagEnableAlignmentToolPlugin)

if not getFFlagEnableAlignmentToolPlugin() then
	return
end

local Roact = require(Plugin.Packages.Roact)

local AlignmentToolPlugin = require(Plugin.Src.Components.AlignmentToolPlugin)

local function main()
	local pluginHandle = nil

	local function onPluginUnloading()
		if pluginHandle then
			Roact.unmount(pluginHandle)
			pluginHandle = nil
		end
	end

	local pluginGui = Roact.createElement(AlignmentToolPlugin, {
		plugin = plugin,
	})

	pluginHandle = Roact.mount(pluginGui)

	plugin.Unloading:Connect(onPluginUnloading)
end

main()
