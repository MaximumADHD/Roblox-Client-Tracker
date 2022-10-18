return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local TangentControl = require(script.Parent.TangentControl)

	local function createTestTangentControl(position, length, side, auto, slope)
		return Roact.createElement(MockWrapper, {}, {
			Cubic = Roact.createElement(TangentControl, {
				Position = position,
				Length = length or 10,
				Side = side,
				Auto = auto,
				Slope = slope or 1,
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestTangentControl()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")

		local element = createTestTangentControl()

		local instance = Roact.mount(element, container)

		local tangentControl = container:FindFirstChildOfClass("Frame")
		expect(tangentControl).to.be.ok()
		expect(tangentControl.Line).to.be.ok()
		expect(tangentControl.Control).to.be.ok()

		Roact.unmount(instance)
	end)
end
