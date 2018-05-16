return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local AppPage = require(Modules.LuaApp.AppPage)
	local Roact = require(Modules.Common.Roact)

	local RouterAnalyticsReporter = require(Modules.LuaApp.Components.Analytics.RouterAnalyticsReporter)
	local mockServices = require(Modules.LuaApp.TestHelpers.mockServices)

	it("should create and destroy without errors", function()
		local element = mockServices({
			RouterAnalyticsReporter = Roact.createElement(RouterAnalyticsReporter, {
				currentPage = AppPage.None,
			}),
		}, {
			includeStoreProvider = true,
		})

		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end