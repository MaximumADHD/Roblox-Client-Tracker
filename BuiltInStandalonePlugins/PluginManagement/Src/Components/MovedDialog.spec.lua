return function()
	local FFlagPluginManagementRemoveUILibrary = game:GetFastFlag("PluginManagementRemoveUILibrary2")

	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local MockManagement = require(Plugin.Src.Components.MockManagement)

	local MovedDialog = require(script.Parent.MovedDialog)

	local function createTestMovedDialog(container)
		return Roact.createElement(MockManagement, {
			Container = container,
		}, {
			MovedDialog = Roact.createElement(MovedDialog, {
				OnClose = function()
				end,
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestMovedDialog()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local element = createTestMovedDialog(container)
		local instance = Roact.mount(element)

		local root = container:FindFirstChildOfClass("ScreenGui")
		expect(root.Background).to.be.ok()
		expect(root.Background.Label).to.be.ok()
		expect(root.Background.Label2).to.be.ok()
		if FFlagPluginManagementRemoveUILibrary then
			expect(root.Background.CloseButton).to.be.ok()
		else
			expect(root.Background.CloseButtonOLD).to.be.ok()
		end
		Roact.unmount(instance)
	end)
end
