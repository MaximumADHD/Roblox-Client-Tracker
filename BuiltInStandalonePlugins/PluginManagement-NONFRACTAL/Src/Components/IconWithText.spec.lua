return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local MockManagement = require(Plugin.Src.Components.MockManagement)

	local IconWithText = require(script.Parent.IconWithText)

	local function createMockElement(props)
		return Roact.createElement(MockManagement, {}, {
			IconWithText = Roact.createElement(IconWithText, props)
		})
	end

	it("should create and destroy without errors", function()
		local element = createMockElement({
			Text = "hello world",
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local element = createMockElement()
		local instance = Roact.mount(element, container)

		local root = container:FindFirstChild("IconWithText")
		expect(root).to.be.ok()
		expect(root.IconContainer).to.be.ok()
		expect(root.IconContainer.Icon).to.be.ok()
		expect(root.CountText).to.be.ok()
		Roact.unmount(instance)
	end)
end
