return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local AutoResizeList = require(script.Parent.AutoResizeList)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(AutoResizeList, {
			layoutOrder = 1,
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end