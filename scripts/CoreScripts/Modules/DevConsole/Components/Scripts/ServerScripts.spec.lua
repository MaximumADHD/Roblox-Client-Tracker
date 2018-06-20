return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

    local DataProvider = require(script.Parent.Parent.DataProvider)
	local ServerScripts = require(script.Parent.ServerScripts)

	it("should create and destroy without errors", function()
        local element = Roact.createElement(DataProvider, {},{
            ServerScripts = Roact.createElement(ServerScripts)
        })

		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end