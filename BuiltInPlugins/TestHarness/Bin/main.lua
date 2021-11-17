return function(plugin, pluginLoaderContext)
	if not plugin then
		return
	end

	local FFlagImprovePluginSpeed_TestHarness = game:GetFastFlag("ImprovePluginSpeed_TestHarness")

	local hasInternalPermission = game:GetService("StudioService"):HasInternalPermission()
	if not FFlagImprovePluginSpeed_TestHarness then
		-- move this to loader.server.lua

		-- TODO DEVTOOLS-4481: The DevFramework Flags util has a bug triggers the assert for missing
		-- flags in NoOpt/Debug. When that is fixed this template should be updated to use it.
		require(script.Parent.defineFlags)

		if not game:GetFastFlag("EnableTestHarness") or not hasInternalPermission then
			return
		end
	end

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
			pluginLoaderContext = FFlagImprovePluginSpeed_TestHarness and pluginLoaderContext or nil,
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