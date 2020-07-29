local FFlagPluginManagementRemoveUILibrary = game:GetFastFlag("PluginManagementRemoveUILibrary2")

return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local MockManagement = require(Plugin.Src.Components.MockManagement)

	local ManagementMainView = require(script.Parent.ManagementMainView)

	local function createTestMainView()
		return Roact.createElement(MockManagement, {}, {
			MainView = Roact.createElement(ManagementMainView, {
				pluginList = {},
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestMainView()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local element = createTestMainView()
		local instance = Roact.mount(element, container)

		local root = container:FindFirstChildOfClass("Frame")
		expect(root).to.be.ok()
		expect(root.PluginLabel).to.be.ok()
		if FFlagPluginManagementRemoveUILibrary then
			expect(root.FindPluginsButton).to.be.ok()
		else
			expect(root.FindPluginsButtonOLD).to.be.ok()
		end
		Roact.unmount(instance)
	end)
end
