return function()
	local ImageSetConsumer = require(script.Parent.ImageSetConsumer)
	local Packages = script.Parent.Parent.Parent
	local Roact = require(Packages.Roact)
	local ImageSetProvider = require(script.Parent.ImageSetProvider)

	it("should create and destroy without errors", function()
		local renderFunction = function(imageSetProps)
			expect(imageSetProps).to.be.a("table")
			return Roact.createElement("Frame", {
				Size = UDim2.new(0, 100, 0, 100),
			})
		end
		local element = Roact.createElement(ImageSetProvider, {
			imageSetData = {},
		},{
			ImageSetConsumer = Roact.createElement(ImageSetConsumer, {
				render = renderFunction
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

end
