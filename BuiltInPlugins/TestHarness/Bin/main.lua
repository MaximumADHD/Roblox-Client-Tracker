return function(plugin, pluginLoaderContext)
	if not plugin then
		return
	end

	local hasInternalPermission = game:GetService("StudioService"):HasInternalPermission()

	local commonInit = require(script.Parent.commonInit)
	commonInit()

	local main = script.Parent.Parent
	local Roact = require(main.Packages.Roact)
	local Framework = require(main.Packages.Framework)

	local DebugFlags = require(main.Src.Util.DebugFlags)

	local MainPlugin = require(main.Src.MainPlugin)
	local handle

	if DebugFlags.EnableRoactDebug() then
		Roact.setGlobalConfig({
			typeChecks = true,
			propValidation = true,
			elementTracing = true,
		})
	end

	-- Allows connecton to the Developer Inspector for internal engineers
	local inspector
	if hasInternalPermission then
		inspector = Framework.DeveloperTools.forPlugin("TestHarness", plugin)
	end

	local function init()
		plugin.Name = "TestHarness"

		local mainPlugin = Roact.createElement(MainPlugin, {
			Plugin = plugin,
			pluginLoaderContext = pluginLoaderContext,
		})

		handle = Roact.mount(mainPlugin)
	end

	plugin.Unloading:Connect(function()
		if inspector then
			inspector:destroy()
		end

		if handle then
			Roact.unmount(handle)
			handle = nil
		end
	end)

	init()
end