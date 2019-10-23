local InstallationDialog = require(script.Parent.InstallationDialog)

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)

return function()
	it("should construct and destroy without errors", function()
		local container = Instance.new("Folder")
		local mockGlobals = MockServiceWrapper.getMockGlobals()

		local element = Roact.createElement(InstallationDialog, {
			pluginId = "1234",
			globals = mockGlobals,
		}, {
			UnimportantFrame = Roact.createElement("Frame"),
		})
		local instance = Roact.mount(element, container)

		Roact.unmount(instance)
	end)
end