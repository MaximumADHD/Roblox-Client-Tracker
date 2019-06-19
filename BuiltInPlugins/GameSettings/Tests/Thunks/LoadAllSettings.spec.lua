return function()
	SKIP()
	
	local Plugin = script.Parent.Parent.Parent

	local Rodux = require(Plugin.Rodux)
	local Promise = require(Plugin.Promise)

	local SettingsReducer = require(Plugin.Src.Reducers.Settings)
	local SettingsImpl_mock = require(Plugin.Src.Networking.SettingsImpl_mock)
	local LoadAllSettings = require(Plugin.Src.Thunks.LoadAllSettings)
	local isEmpty = require(Plugin.Src.Util.isEmpty)

	local settingsImpl = SettingsImpl_mock.new()

	it("should return a Promise", function()
		local store = Rodux.Store.new(
			SettingsReducer,
			nil,
			{Rodux.thunkMiddleware}
		)

		local result = store:dispatch(LoadAllSettings(settingsImpl))
		expect(Promise.is(result)).to.equal(true)
	end)

	it("should load settings to the store", function()
		local startState = {
			Current = {
				SomeKey = "SomeValue"
			},
			Changed = {},
		}
		local store = Rodux.Store.new(
			SettingsReducer,
			startState,
			{Rodux.thunkMiddleware}
		)

		store:dispatch(LoadAllSettings(settingsImpl)):await()

		expect(store:getState()).never.to.equal(startState)
		expect(isEmpty(store:getState().Current)).to.equal(true)
		expect(isEmpty(store:getState().Changed)).to.equal(true)
	end)
end