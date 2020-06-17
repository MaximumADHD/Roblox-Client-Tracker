return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)
	local Rodux = require(Plugin.Rodux)
	local Framework = Plugin.Framework
	local ContextServices = require(Framework.ContextServices)

	local provideMockContextForGameSettings = require(Plugin.Src.Components.provideMockContextForGameSettings)

	local MainReducer = require(Plugin.Src.Reducers.MainReducer)

	local Places = require(Plugin.Src.Components.SettingsPages.Places)

	local function createTestPlaces(startState)
		if not startState then
			startState = {
				Current = {
					places = {
						[100] = {
							id = 100,
							name = "place 1",
							universeId = 201,
							index = 1,
						}
					}
				},
				Changed = {},
				Warnings = {},
				Errors = {},
			}
		end

		local settingsStore = Rodux.Store.new(
			MainReducer,
			{Settings = startState},
			{Rodux.thunkMiddleware}
		)

        return provideMockContextForGameSettings({
            Store = ContextServices.Store.new(settingsStore)
        } , {
			place = Roact.createElement(Places),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestPlaces()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end