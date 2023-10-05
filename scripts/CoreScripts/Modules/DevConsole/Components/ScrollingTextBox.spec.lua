return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local ScrollingTextBox = require(script.Parent.ScrollingTextBox)

	it("should create and destroy without errors", function()

		local element = Roact.createElement(ScrollingTextBox, {
			TextSize = 10,
			Font = Enum.Font.Legacy,
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should accept and assign refs", function()
		local ref = Roact.createRef()

		local element = Roact.createElement(ScrollingTextBox, {
			TextSize = 10,
			Font = Enum.Font.Legacy,
			[Roact.Ref] = ref,
		})

		local instance = Roact.mount(element)

		expect(ref.current).never.toBeNil()
		expect(ref.current:IsA("Instance")).toBe(true)

		Roact.unmount(instance)
	end)
end
