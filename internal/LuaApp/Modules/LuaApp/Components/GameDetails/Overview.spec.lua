return function()
	local Overview = require(script.Parent.Overview)

	local Modules = game:GetService("CoreGui").RobloxGui.Modules

	local Game = require(Modules.LuaApp.Models.Game)
	local Roact = require(Modules.Common.Roact)
	local mockServices = require(Modules.LuaApp.TestHelpers.mockServices)


	it("should create and destroy without errors", function()
		local element = mockServices({
			overview = Roact.createElement(Overview, {
				game = Game.mock(),
				padding = 12,
				isMaxWidth = false,
				showShare = true,

				LayoutOrder = 1,
			}),
		})

		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end