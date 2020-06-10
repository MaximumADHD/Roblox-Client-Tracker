local FFlagPluginManagementRemoveUILibrary = game:GetFastFlag("PluginManagementRemoveUILibrary")

local MainView = require(script.Parent.MainView)

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local PluginInstalledStatus = require(Plugin.Src.Constants.PluginInstalledStatus)
local MockServiceWrapper
if FFlagPluginManagementRemoveUILibrary then
	MockServiceWrapper = require(Plugin.Src.Components.MockManagement)
else
	MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)
end

return function()
	it("should construct and destroy without errors", function()
		local element = Roact.createElement(MockServiceWrapper, {}, {
			MainView = Roact.createElement(MainView, {
				pluginId = "1234"
			})
		})
		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container)

		Roact.unmount(instance)
	end)

	it("should construct when PluginInstalledStatus is UNKNOWN", function()
		local store = {
			PluginInfo = {
				plugins = {
					["1234"] = {
						installStatus = PluginInstalledStatus.UNKNOWN,
						installationMsg = "",
						installProgress = 0.0,
						name = "",
						description = "",
						commentsEnabled = false,
						versionId = "",
						created = "",
						updated = "",
					}
				},
			},
		}

		local element = Roact.createElement(MockServiceWrapper, {
			storeState = store
		}, {
			MainView = Roact.createElement(MainView, {
				pluginId = "1234"
			})
		})
		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container)

		Roact.unmount(instance)
	end)

	it("should construct when PluginInstalledStatus is PLUGIN_INSTALLED_SUCCESSFULLY", function()
		local store = {
			PluginInfo = {
				plugins = {
					["1234"] = {
						installStatus = PluginInstalledStatus.PLUGIN_INSTALLED_SUCCESSFULLY,
						installationMsg = "",
						installProgress = 0.0,
						name = "Test Plugin",
						description = "some description",
						commentsEnabled = false,
						versionId = "1",
						created = "some date",
						updated = "some other date",
					}
				},
			},
		}

		local element = Roact.createElement(MockServiceWrapper, {
			storeState = store
		}, {
			MainView = Roact.createElement(MainView, {
				pluginId = "1234"
			})
		})
		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container)

		Roact.unmount(instance)
	end)

	it("should construct when PluginInstalledStatus is HTTP_ERROR", function()
		local store = {
			PluginInfo = {
				plugins = {
					["1234"] = {
						installStatus = PluginInstalledStatus.HTTP_ERROR,
						installationMsg = "Forbidden",
						installProgress = 0.0,
						name = "",
						description = "",
						commentsEnabled = false,
						versionId = "",
						created = "",
						updated = "",
					}
				},
			},
		}

		local element = Roact.createElement(MockServiceWrapper, {
			storeState = store
		}, {
			MainView = Roact.createElement(MainView, {
				pluginId = "1234"
			})
		})
		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container)

		Roact.unmount(instance)
	end)

	it("should construct when PluginInstalledStatus is PLUGIN_NOT_OWNED", function()
		local store = {
			PluginInfo = {
				plugins = {
					["1234"] = {
						installStatus = PluginInstalledStatus.PLUGIN_NOT_OWNED,
						installationMsg = "",
						installProgress = 0.0,
						name = "",
						description = "",
						commentsEnabled = false,
						versionId = "",
						created = "",
						updated = "",
					}
				},
			},
		}

		local element = Roact.createElement(MockServiceWrapper, {
			storeState = store
		}, {
			MainView = Roact.createElement(MainView, {
				pluginId = "1234"
			})
		})
		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container)

		Roact.unmount(instance)
	end)

	it("should construct when PluginInstalledStatus is PLUGIN_DETAILS_UNAVAILABLE", function()
		local store = {
			PluginInfo = {
				plugins = {
					["1234"] = {
						installStatus = PluginInstalledStatus.PLUGIN_DETAILS_UNAVAILABLE,
						installationMsg = "",
						installProgress = 0.0,
						name = "",
						description = "",
						commentsEnabled = false,
						versionId = "",
						created = "",
						updated = "",
					}
				},
			},
		}

		local element = Roact.createElement(MockServiceWrapper, {
			storeState = store
		}, {
			MainView = Roact.createElement(MainView, {
				pluginId = "1234"
			})
		})
		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container)

		Roact.unmount(instance)
	end)

	it("should construct when PluginInstalledStatus is PLUGIN_NOT_INSTALLED", function()
		local store = {
			PluginInfo = {
				plugins = {
					["1234"] = {
						installStatus = PluginInstalledStatus.PLUGIN_NOT_INSTALLED,
						installationMsg = "",
						installProgress = 0.0,
						name = "",
						description = "",
						commentsEnabled = false,
						versionId = "",
						created = "",
						updated = "",
					}
				},
			},
		}

		local element = Roact.createElement(MockServiceWrapper, {
			storeState = store
		}, {
			MainView = Roact.createElement(MainView, {
				pluginId = "1234"
			})
		})
		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container)

		Roact.unmount(instance)
	end)

	it("should construct when PluginInstalledStatus is PLUGIN_AlREADY_INSTALLED", function()
		local store = {
			PluginInfo = {
				plugins = {
					["1234"] = {
						installStatus = PluginInstalledStatus.PLUGIN_AlREADY_INSTALLED,
						installationMsg = "",
						installProgress = 0.0,
						name = "",
						description = "",
						commentsEnabled = false,
						versionId = "",
						created = "",
						updated = "",
					}
				},
			},
		}

		local element = Roact.createElement(MockServiceWrapper, {
			storeState = store
		}, {
			MainView = Roact.createElement(MainView, {
				pluginId = "1234"
			})
		})
		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container)

		Roact.unmount(instance)
	end)
end