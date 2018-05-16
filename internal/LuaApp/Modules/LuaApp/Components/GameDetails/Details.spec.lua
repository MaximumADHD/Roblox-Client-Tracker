return function()
	local Details = require(script.Parent.Details)

	local Modules = game:GetService("CoreGui").RobloxGui.Modules

	local GameDetail = require(Modules.LuaApp.Models.GameDetail)
	local Roact = require(Modules.Common.Roact)
	local mockServices = require(Modules.LuaApp.TestHelpers.mockServices)


	it("should create and destroy without errors", function()
		local root = mockServices({
			element = Roact.createElement(Details, {
				gameDetail = GameDetail.mock(),
				padding = 12,
				isMaxWidth = true,
			}),
		})

		local instance = Roact.reify(root)
		Roact.teardown(instance)
	end)
end