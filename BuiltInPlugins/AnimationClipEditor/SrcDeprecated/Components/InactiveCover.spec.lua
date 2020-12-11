return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local MockWrapper = require(Plugin.SrcDeprecated.Context.MockWrapper)

	local InactiveCover = require(script.Parent.InactiveCover)

	local function createTestInactiveCover(container)
		return Roact.createElement(MockWrapper, {
			Container = container,
		}, {
			InactiveCover = Roact.createElement(InactiveCover),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestInactiveCover()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")

		local element = createTestInactiveCover(container)

		local instance = Roact.mount(element, container)
		local gui = container:FindFirstChildOfClass("ScreenGui")
		expect(gui).to.be.ok()
		local main = gui.TopLevelDetector.ScrollBlocker
		expect(main).to.be.ok()
		expect(main.Text).to.be.ok()

		Roact.unmount(instance)
	end)
end
