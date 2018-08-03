return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local DataProvider = require(script.Parent.Parent.DataProvider)
	local ClientMemory = require(script.Parent.ClientMemory)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(DataProvider, {}, {
			ClientMemory = Roact.createElement(ClientMemory)
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end