return function()
	local Framework = script.Parent.Parent.Parent
	local Roact = require(Framework.Parent.Roact)
	local ContextServices = require(Framework.ContextServices)
	local Theme = ContextServices.Theme
	local provide = ContextServices.provide
	local FrameworkStyles = require(Framework.UI.FrameworkStyles)
	local Container = require(script.Parent)
	local Box = require(Framework.UI.Box)

	local function createTestContainer(props, children)
		local theme = Theme.new(function()
			return {
				Framework = FrameworkStyles.new(),
			}
		end)
		return provide({theme}, {
			Container = Roact.createElement(Container, props, children),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestContainer()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render its children", function()
		local folder = Instance.new("Folder")
		local element = createTestContainer({}, {
			ChildFrame = Roact.createElement("Frame")
		})
		local instance = Roact.mount(element, folder)

		local container = folder:FindFirstChildOfClass("Frame")
		expect(container).to.be.ok()
		expect(container.Contents).to.be.ok()
		expect(container.Contents.ChildFrame).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should render a margin component", function()
		local folder = Instance.new("Folder")
		local element = createTestContainer({
			Margin = 10,
		})
		local instance = Roact.mount(element, folder)

		local container = folder:FindFirstChildOfClass("Frame")
		expect(container.Margin).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should render a padding component", function()
		local folder = Instance.new("Folder")
		local element = createTestContainer({
			Padding = 10,
		})
		local instance = Roact.mount(element, folder)

		local container = folder:FindFirstChildOfClass("Frame")
		expect(container.Contents.Padding).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should render a background", function()
		local folder = Instance.new("Folder")
		local element = createTestContainer({
			Background = Box,
		})
		local instance = Roact.mount(element, folder)

		local container = folder:FindFirstChildOfClass("Frame")
		expect(container.Decoration).to.be.ok()

		Roact.unmount(instance)
	end)
end