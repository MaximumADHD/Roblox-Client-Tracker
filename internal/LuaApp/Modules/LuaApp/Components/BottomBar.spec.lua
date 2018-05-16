return function()
	local BottomBar = require(script.Parent.BottomBar)

	local Modules = game:GetService("CoreGui").RobloxGui.Modules

	local Roact = require(Modules.Common.Roact)
	local mockServices = require(Modules.LuaApp.TestHelpers.mockServices)


	it("should create and destroy without errors", function()
		local element = mockServices({
			BottomBar = Roact.createElement(BottomBar, {
				isVisible = true,
				displayOrder = 4,
			}),
		}, {
			includeStoreProvider = true,
		})

		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end