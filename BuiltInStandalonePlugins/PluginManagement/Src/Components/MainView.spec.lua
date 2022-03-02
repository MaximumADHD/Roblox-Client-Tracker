local MainView = require(script.Parent.MainView)

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local PluginInstalledStatus = require(Plugin.Src.Constants.PluginInstalledStatus)
local MockServiceWrapper = require(Plugin.Src.Components.MockManagement)

local createPluginInfo = function(installStatus)
	return {
		PluginInfo = {
			plugins = {
				["1234"] = {
					installStatus = installStatus,
					installationMsg = "",
					installProgress = 0.0,
					name = "",
					description = "",
					versionId = "",
					created = "",
					updated = "",
				},
			},
		},
	}
end

return function()
	it("should construct and destroy without errors", function()
		local element = Roact.createElement(MockServiceWrapper, {}, {
			MainView = Roact.createElement(MainView, {
				pluginId = "1234",
			}),
		})
		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container)

		Roact.unmount(instance)
	end)

	it("should construct when PluginInstalledStatus is UNKNOWN", function()
		local store = createPluginInfo(PluginInstalledStatus.UNKNOWN)

		local element = Roact.createElement(MockServiceWrapper, {
			storeState = store,
		}, {
			MainView = Roact.createElement(MainView, {
				pluginId = "1234",
			}),
		})
		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container)

		Roact.unmount(instance)
	end)

	it("should construct when PluginInstalledStatus is PLUGIN_INSTALLED_SUCCESSFULLY", function()
		local store = createPluginInfo(PluginInstalledStatus.PLUGIN_INSTALLED_SUCCESSFULLY)

		local element = Roact.createElement(MockServiceWrapper, {
			storeState = store,
		}, {
			MainView = Roact.createElement(MainView, {
				pluginId = "1234",
			}),
		})
		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container)

		Roact.unmount(instance)
	end)

	it("should construct when PluginInstalledStatus is HTTP_ERROR", function()
		local store = createPluginInfo(PluginInstalledStatus.HTTP_ERROR)

		local element = Roact.createElement(MockServiceWrapper, {
			storeState = store,
		}, {
			MainView = Roact.createElement(MainView, {
				pluginId = "1234",
			}),
		})
		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container)

		Roact.unmount(instance)
	end)

	it("should construct when PluginInstalledStatus is PLUGIN_NOT_OWNED", function()
		local store = createPluginInfo(PluginInstalledStatus.PLUGIN_NOT_OWNED)

		local element = Roact.createElement(MockServiceWrapper, {
			storeState = store,
		}, {
			MainView = Roact.createElement(MainView, {
				pluginId = "1234",
			}),
		})
		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container)

		Roact.unmount(instance)
	end)

	it("should construct when PluginInstalledStatus is PLUGIN_DETAILS_UNAVAILABLE", function()
		local store = createPluginInfo(PluginInstalledStatus.PLUGIN_DETAILS_UNAVAILABLE)

		local element = Roact.createElement(MockServiceWrapper, {
			storeState = store,
		}, {
			MainView = Roact.createElement(MainView, {
				pluginId = "1234",
			}),
		})
		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container)

		Roact.unmount(instance)
	end)

	it("should construct when PluginInstalledStatus is PLUGIN_NOT_INSTALLED", function()
		local store = createPluginInfo(PluginInstalledStatus.PLUGIN_NOT_INSTALLED)

		local element = Roact.createElement(MockServiceWrapper, {
			storeState = store,
		}, {
			MainView = Roact.createElement(MainView, {
				pluginId = "1234",
			}),
		})
		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container)

		Roact.unmount(instance)
	end)

	it("should construct when PluginInstalledStatus is PLUGIN_AlREADY_INSTALLED", function()
		local store = createPluginInfo(PluginInstalledStatus.PLUGIN_AlREADY_INSTALLED)

		local element = Roact.createElement(MockServiceWrapper, {
			storeState = store,
		}, {
			MainView = Roact.createElement(MainView, {
				pluginId = "1234",
			}),
		})
		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container)

		Roact.unmount(instance)
	end)
end
