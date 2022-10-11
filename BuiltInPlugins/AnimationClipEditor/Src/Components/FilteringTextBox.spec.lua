return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local FilteringTextBox = require(script.Parent.FilteringTextBox)

	local function createTestFilteringTextBox(items, container, text)
		return Roact.createElement(MockWrapper, {
			Container = container,
		}, {
			FilteringTextBox = Roact.createElement(FilteringTextBox, {
				Size = UDim2.new(0, 50, 0, 20),
				LayoutOrder = 1,
				Text = text or "",
				TextXAlignment = Enum.TextXAlignment.Left,
				Items = items or {},
				MaxItems = 1,
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestFilteringTextBox()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestFilteringTextBox(), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame).to.be.ok()
		expect(frame.TextBox).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should render a dropdown when items are given", function()
		local container = Instance.new("Folder")

		local element = createTestFilteringTextBox({ "Item1", "Item2" }, container)

		local instance = Roact.mount(element, container)
		Roact.update(instance, createTestFilteringTextBox({ "Item1", "Item2" }, container))

		local gui = container:FindFirstChildOfClass("ScreenGui")
		local main = gui.TopLevelDetector.ScrollBlocker
		expect(main).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should filter the dropdown items based on text", function()
		local container = Instance.new("Folder")

		local element = createTestFilteringTextBox({ "Test", "Other" }, container)

		local instance = Roact.mount(element, container)
		Roact.update(instance, createTestFilteringTextBox({ "Test", "Other" }, container, "Te"))

		local gui = container:FindFirstChildOfClass("ScreenGui")
		local main = gui.TopLevelDetector.ScrollBlocker
		expect(main).to.be.ok()

		Roact.unmount(instance)
	end)
end
