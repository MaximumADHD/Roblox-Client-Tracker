return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local SearchBar = require(script.Parent.SearchBar)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(SearchBar)
		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end