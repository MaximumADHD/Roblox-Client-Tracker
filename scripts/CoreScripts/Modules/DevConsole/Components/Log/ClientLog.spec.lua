return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local DataProvider = require(script.Parent.Parent.DataProvider)
	local ClientLog = require(script.Parent.ClientLog)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(DataProvider, {}, {
			ClientLog = Roact.createElement(ClientLog)
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end