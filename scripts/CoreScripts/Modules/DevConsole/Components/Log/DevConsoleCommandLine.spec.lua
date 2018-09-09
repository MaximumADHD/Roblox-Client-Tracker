return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local DataProvider = require(script.Parent.Parent.DataProvider)
	local DevConsoleCommandLine = require(script.Parent.DevConsoleCommandLine)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(DataProvider, {}, {
			CmdLine = Roact.createElement(DevConsoleCommandLine),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end