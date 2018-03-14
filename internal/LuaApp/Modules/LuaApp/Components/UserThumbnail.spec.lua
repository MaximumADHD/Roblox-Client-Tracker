return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local Roact = require(Modules.Common.Roact)
	local User = require(Modules.LuaApp.Models.User)
	local UserThumbnail = require(Modules.LuaApp.Components.UserThumbnail)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(UserThumbnail, {
			user = User.mock()
		})
		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end