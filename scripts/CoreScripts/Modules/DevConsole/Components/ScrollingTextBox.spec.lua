return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

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

		expect(ref.current).to.be.ok()
		expect(ref.current:IsA("Instance")).to.equal(true)

		Roact.unmount(instance)
	end)
end
