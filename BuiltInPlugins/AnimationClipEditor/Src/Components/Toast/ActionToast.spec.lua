return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local ActionToast = require(script.Parent.ActionToast)

	local function createTestActionToast(container, children)
		return Roact.createElement(MockWrapper, {
			Container = container,
		}, {
			ActionToast = Roact.createElement(ActionToast, {
				Text = "TestText",
				Buttons = {
					{ Key = "Test1", Text = "Text1" },
					{ Key = "Test2", Text = "Test2" },
				},
			}, children),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestActionToast()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")

		local element = createTestActionToast(container)

		local instance = Roact.mount(element, container)
		local gui = container:FindFirstChildOfClass("ScreenGui")
		expect(gui).to.be.ok()
		local main = gui.TopLevelFrame
		expect(main).to.be.ok()
		expect(main.Container).to.be.ok()
		expect(main.Container.Background).to.be.ok()
		expect(main.Container.Background.Shadow).to.be.ok()

		local containerFrame = main.Container.Background.Shadow
		expect(containerFrame.Padding).to.be.ok()
		expect(containerFrame.Text).to.be.ok()
		expect(containerFrame.Buttons).to.be.ok()
		expect(containerFrame.Buttons[1]).to.be.ok()
		expect(containerFrame.Buttons[2]).to.be.ok()

		Roact.unmount(instance)
	end)
end
