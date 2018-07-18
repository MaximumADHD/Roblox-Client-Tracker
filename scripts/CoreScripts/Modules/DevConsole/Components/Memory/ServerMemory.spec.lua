return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local DataProvider = require(script.Parent.Parent.DataProvider)
	local ServerMemory = require(script.Parent.ServerMemory)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(DataProvider, nil, {
			ServerMemory = Roact.createElement(ServerMemory)
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end