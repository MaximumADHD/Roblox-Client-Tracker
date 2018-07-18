return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local DataProvider = require(script.Parent.Parent.DataProvider)
	local MemoryViewEntry = require(script.Parent.MemoryViewEntry)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(DataProvider, {},{
			MemoryViewEntry = Roact.createElement(MemoryViewEntry)
		})

		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end