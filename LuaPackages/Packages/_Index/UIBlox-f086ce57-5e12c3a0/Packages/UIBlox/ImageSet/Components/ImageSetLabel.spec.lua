return function()
	local ImageSetLabel = require(script.Parent.ImageSetLabel)
	local Packages = script.Parent.Parent.Parent.Parent
	local Roact = require(Packages.Roact)
	local ImageSetProvider = require(script.Parent.Parent.ImageSetProvider)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(ImageSetProvider, {
			imageSetData = {},
		},{
			label = Roact.createElement(ImageSetLabel, {
				Size = UDim2.new(0, 8, 0, 8),
				Image = "LuaApp/icons/ic-ROBUX",
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
