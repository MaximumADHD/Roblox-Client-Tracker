return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local DataProvider = require(script.Parent.Parent.DataProvider)
	local MemoryView = require(script.Parent.MemoryView)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(DataProvider, {},{
			MemoryView = Roact.createElement(MemoryView)
		})

		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end