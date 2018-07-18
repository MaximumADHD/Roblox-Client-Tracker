return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local DataProvider = require(script.Parent.Parent.DataProvider)
	local ServerLog = require(script.Parent.ServerLog)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(DataProvider, {},{
			ServerLog = Roact.createElement(ServerLog)
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end