return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local DataProvider = require(script.Parent.Parent.DataProvider)
	local ClientNetwork = require(script.Parent.ClientNetwork)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(DataProvider, {}, {
			ClientNetwork = Roact.createElement(ClientNetwork, {
				size = UDim2.new(),
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end