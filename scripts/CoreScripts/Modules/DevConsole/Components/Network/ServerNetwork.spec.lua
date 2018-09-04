return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local DataProvider = require(script.Parent.Parent.DataProvider)
	local ServerNetwork = require(script.Parent.ServerNetwork)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(DataProvider, {}, {
			ServerNetwork = Roact.createElement(ServerNetwork,{
				size = UDim2.new(),
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end