return function()
	local ImageSetProvider = require(script.Parent.ImageSetProvider)
	local Packages = script.Parent.Parent.Parent
	local Roact = require(Packages.Roact)

	it("should create and destroy without errors", function()
		local imageSetProvider = Roact.createElement(ImageSetProvider, {
			imageSetData = {},
		}, {
			SomeComponent = Roact.createElement("ImageLabel", {
			})
		})

		local roactInstance = Roact.mount(imageSetProvider)
		Roact.unmount(roactInstance)
	end)

	it("should create and destroy without errors with scale", function()
		local imageSetProvider = Roact.createElement(ImageSetProvider, {
			imageSetData = {},
			imageSetScale = 2,
		}, {
			SomeComponent = Roact.createElement("ImageLabel", {
			})
		})

		local roactInstance = Roact.mount(imageSetProvider)
		Roact.unmount(roactInstance)
	end)

	it("should throw given no imageSet data", function()
		local imageSetProvider = Roact.createElement(ImageSetProvider, {
		}, {
				SomeComponent = Roact.createElement("ImageLabel", {
			})
		})

		expect(function()
			local roactInstance = Roact.mount(imageSetProvider)
			Roact.unmount(roactInstance)
		end).to.throw()
	end)

end
