return function()
	local Library = script.Parent.Parent
	local Roact = require(Library.Parent.Roact)

	local MockWrapper = require(Library.MockWrapper)

	local workspace = game:GetService("Workspace")

	local Tooltip = require(script.Parent.Tooltip)

	local function createTestTooltip(props)
		return Roact.createElement(MockWrapper, {}, {
			Tooltip = Roact.createElement(Tooltip, props)
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestTooltip()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function ()
		local container = workspace
		local instance = Roact.mount(createTestTooltip(), container)
		local frame = container:FindFirstChild("Frame")

		expect(frame).to.be.ok()

		Roact.unmount(instance)
	end)
end