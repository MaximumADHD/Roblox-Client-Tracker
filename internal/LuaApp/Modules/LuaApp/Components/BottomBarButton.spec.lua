return function()
	local BottomBarButton = require(script.Parent.BottomBarButton)

	local Modules = game:GetService("CoreGui").RobloxGui.Modules

	local AppPage = require(Modules.LuaApp.AppPage)
	local Roact = require(Modules.Common.Roact)
	local mockServices = require(Modules.LuaApp.TestHelpers.mockServices)

	it("should create and destroy without errors", function()
		local element = mockServices({
			BottomBarButton = Roact.createElement(BottomBarButton, {
				defaultImage = "",
				selectedImage = "",
				associatedPageType = AppPage.Home,
			}),
		}, {
			includeStoreProvider = true,
		})

		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end