return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local Roact = require(Modules.Common.Roact)
	local RoactRodux = require(Modules.Common.RoactRodux)
	local Rodux = require(Modules.Common.Rodux)
	local GameThumbnail = require(Modules.LuaApp.Components.GameThumbnail)
	local AppReducer = require(Modules.LuaApp.AppReducer)

	it("should create and destroy without errors", function()

		local store = Rodux.Store.new(AppReducer)
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			App = Roact.createElement(GameThumbnail,{
				placeId = 10,
				gamesThumbnails = {
					[10] = "someUrl",
				}
			})
		})

		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end