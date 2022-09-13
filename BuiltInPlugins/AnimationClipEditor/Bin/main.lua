return function(plugin, pluginLoaderContext)
	require(script.Parent.defineLuaFlags)

	local Plugin = script.Parent.Parent
	local Framework = require(Plugin.Packages.Framework)
	local DebugFlags = require(Plugin.Src.Util.DebugFlags)
	local Roact = require(Plugin.Packages.Roact)
	local AnimationClipEditorPlugin = require(Plugin.Src.Components.AnimationClipEditorPlugin)

	if DebugFlags.RunTests() or DebugFlags.RunRhodiumTests() then
		return
	end

	local inspector = nil
	local handle = nil

	local function init()
		-- Roact.setGlobalConfig({
		-- 	elementTracing = true,
		-- })

		local mainPlugin = Roact.createElement(AnimationClipEditorPlugin, {
			plugin = plugin,
			pluginLoaderContext = pluginLoaderContext,
		})

		handle = Roact.mount(mainPlugin)

		-- StudioService isn't always available, so ignore if an error is thrown trying to access
		local ok, hasInternalPermission = pcall(function() return game:GetService("StudioService"):HasInternalPermission() end)

		if ok and hasInternalPermission then
			inspector = Framework.DeveloperTools.forPlugin("AnimationClipEditor", plugin)
			inspector:addRoactTree("Roact tree", handle, Roact)
		end
	end

	plugin.Unloading:Connect(function()
		if handle then
			Roact.unmount(handle)
		end

		if inspector then
			inspector:destroy()
		end
	end)

	init()
end