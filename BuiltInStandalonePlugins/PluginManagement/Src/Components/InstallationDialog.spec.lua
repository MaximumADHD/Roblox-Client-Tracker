local FFlagPluginManagementRemoveUILibrary = game:GetFastFlag("PluginManagementRemoveUILibrary2")

local InstallationDialog = require(script.Parent.InstallationDialog)

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local MockServiceWrapper
if FFlagPluginManagementRemoveUILibrary then
	MockServiceWrapper = require(Plugin.Src.Components.MockManagement)
else
	MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)
end

return function()
	it("should construct and destroy without errors", function()
		local container = Instance.new("Folder")

		local element = Roact.createElement(MockServiceWrapper, {}, {
			Dialog = Roact.createElement(InstallationDialog, {
				pluginId = "1234",
			}, {
				UnimportantFrame = Roact.createElement("Frame"),
			})
		})
		local instance = Roact.mount(element, container)

		Roact.unmount(instance)
	end)
end