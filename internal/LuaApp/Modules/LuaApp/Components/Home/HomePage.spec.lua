return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local Roact = require(Modules.Common.Roact)
	local HomePage = require(Modules.LuaApp.Components.Home.HomePage)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(HomePage, {
			games = {},
			gameSorts = {},
		})
		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end