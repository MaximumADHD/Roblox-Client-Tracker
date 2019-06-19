return function()
	SKIP()
	
	local Plugin = script.Parent.Parent.Parent

	local Rodux = require(Plugin.Rodux)
	local Promise = require(Plugin.Promise)

	local SettingsReducer = require(Plugin.Src.Reducers.Settings)
	local SettingsImpl_mock = require(Plugin.Src.Networking.SettingsImpl_mock)
	local SaveChanges = require(Plugin.Src.Thunks.SaveChanges)

	local settingsImpl = SettingsImpl_mock.new()

	it("should return a Promise", function()
		local store = Rodux.Store.new(
			SettingsReducer,
			nil,
			{Rodux.thunkMiddleware}
		)

		local result = store:dispatch(SaveChanges(settingsImpl))
		expect(Promise.is(result)).to.equal(true)
	end)

	it("should not modify the store", function()
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

		expect(store:getState()).to.equal(startState)

		store:dispatch(SaveChanges(settingsImpl)):await()

		expect(store:getState()).to.equal(startState)
	end)
end