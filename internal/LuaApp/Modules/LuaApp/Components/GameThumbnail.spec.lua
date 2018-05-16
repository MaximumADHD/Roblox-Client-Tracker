return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local Roact = require(Modules.Common.Roact)
	local RoactRodux = require(Modules.Common.RoactRodux)
	local Rodux = require(Modules.Common.Rodux)
	local GameThumbnail = require(Modules.LuaApp.Components.GameThumbnail)
	local AppReducer = require(Modules.LuaApp.AppReducer)
	local SetGameThumbnails = require(Modules.LuaApp.Actions.SetGameThumbnails)

	it("should create and destroy without errors", function()

		local store = Rodux.Store.new(AppReducer)

		store:Dispatch(SetGameThumbnails({
				["70542190"] = {
					universeId = 0,
					placeId = "70542190",
					url = "https://t5.rbxcdn.com/ed422c6fbb22280971cfb289f40ac814",
					final = true,
				},
			}))

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			App = Roact.createElement(GameThumbnail, {
				loadingImage = "someUrl",
				placeId = 70542190,
			})
		})

		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end