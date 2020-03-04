return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local MockManagement = require(Plugin.Src.Components.MockManagement)

	local FluidFitTextLabel = require(script.Parent.FluidFitTextLabel)

	local function createMockElement(props)
		return Roact.createElement(MockManagement, {}, {
			FluidFitTextLabel = Roact.createElement(FluidFitTextLabel, props)
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

		local root = container:FindFirstChild("FluidFitTextLabel")
		expect(root).to.be.ok()
		expect(root.Text).to.be.ok()
		Roact.unmount(instance)
	end)
end
