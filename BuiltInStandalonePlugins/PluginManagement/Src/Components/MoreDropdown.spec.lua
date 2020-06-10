return function()
	local FFlagPluginManagementRemoveUILibrary = game:GetFastFlag("PluginManagementRemoveUILibrary")
	if FFlagPluginManagementRemoveUILibrary then
		return
	end

	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local MockManagement = require(Plugin.Src.Components.MockManagement)

	local MoreDropdown = require(script.Parent.MoreDropdown)

	local function createTestMoreDropdown(focusTarget)
		return Roact.createElement(MockManagement, {
			FocusTarget = focusTarget,
		}, {
			MoreDropdown = Roact.createElement(MoreDropdown, {
				Items = {},
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestMoreDropdown()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local focusTarget = Instance.new("ScreenGui")
		local element = createTestMoreDropdown(focusTarget)
		local instance = Roact.mount(element, container)

		local root = container:FindFirstChildOfClass("Frame")
		expect(root).to.be.ok()
		local focus = focusTarget:FindFirstChildOfClass("ImageButton")
		expect(focus).to.be.ok()
		Roact.unmount(instance)
	end)
end
