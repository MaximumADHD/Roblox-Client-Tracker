return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local Roact = require(Modules.Common.Roact)
	local User = require(Modules.LuaApp.Models.User)
	local UserCarousel = require(Modules.LuaApp.Components.Home.UserCarousel)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(UserCarousel, {
			users = { User.mock() }
		})
		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end