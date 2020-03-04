return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local MockManagement = require(Plugin.Src.Components.MockManagement)

	local ListTextItem = require(script.Parent.ListTextItem)

	local function createMockElement(props)
		return Roact.createElement(MockManagement, {}, {
			ListTextItem = Roact.createElement(ListTextItem, props)
		})
	end

	it("should create and destroy without errors", function()
		local element = createMockElement({
			title = "hello world",
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local element = createMockElement()
		local instance = Roact.mount(element, container)

		local root = container:FindFirstChild("ListTextItem")
		expect(root).to.be.ok()
		expect(root.Title).to.be.ok()
		expect(root.Container).to.be.ok()
		Roact.unmount(instance)
	end)
end
