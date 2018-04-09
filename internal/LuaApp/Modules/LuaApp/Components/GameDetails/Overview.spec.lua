return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local Roact = require(Modules.Common.Roact)
	local Overview = require(Modules.LuaApp.Components.GameDetails.Overview)
	local Game = require(Modules.LuaApp.Models.Game)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(Overview, {
			game = Game.mock(),
			padding = 12,
			isMaxWidth = false,
			showShare = true,

			LayoutOrder = 1,
		})
		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end