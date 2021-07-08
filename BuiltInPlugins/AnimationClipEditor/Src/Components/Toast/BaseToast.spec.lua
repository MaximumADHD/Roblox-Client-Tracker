return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local BaseToast = require(script.Parent.BaseToast)

	local function createTestBaseToast(container, children)
		return Roact.createElement(MockWrapper, {
			Container = container,
		}, {
			BaseToast = Roact.createElement(BaseToast, {
				AnchorPoint = Vector2.new(),
				Size = UDim2.new(0, 300, 0, 300),
			}, children)
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestBaseToast()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")

		local element = createTestBaseToast(container)

		local instance = Roact.mount(element, container)
		local gui = container:FindFirstChildOfClass("ScreenGui")
		expect(gui).to.be.ok()
		local main = gui.TopLevelFrame

		expect(main).to.be.ok()
		expect(main.Container).to.be.ok()
		expect(main.Container.Background).to.be.ok()
		expect(main.Container.Background.Shadow).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should render its children", function()
		local container = Instance.new("Folder")

		local element = createTestBaseToast(container, {
			ChildFrame = Roact.createElement("Frame")
		})

		local instance = Roact.mount(element, container)
		local gui = container:FindFirstChildOfClass("ScreenGui")
		local frame = gui.TopLevelFrame.Container
		expect(frame).to.be.ok()
		expect(frame.Background).to.be.ok()
		expect(frame.Background.Shadow).to.be.ok()
		expect(frame.Background.Shadow.ChildFrame).to.be.ok()

		Roact.unmount(instance)
	end)
end
