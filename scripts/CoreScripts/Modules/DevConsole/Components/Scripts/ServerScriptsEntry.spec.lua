return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

    local DataProvider = require(script.Parent.Parent.DataProvider)
	local ServerScriptsEntry = require(script.Parent.ServerScriptsEntry)

	it("should create and destroy without errors", function()
        local element = Roact.createElement(DataProvider, {},{
            ServerScriptsEntry = Roact.createElement(ServerScriptsEntry)
        })

		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end