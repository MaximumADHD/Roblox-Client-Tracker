return function()
	local Plugin = script.Parent.Parent.Parent

	local Rodux = require(Plugin.Rodux)

	local SettingsReducer = require(Plugin.Src.Reducers.Settings)

	local AddChange = require(Plugin.Src.Actions.AddChange)
	local AddErrors = require(Plugin.Src.Actions.AddErrors)
	local DiscardChanges = require(Plugin.Src.Actions.DiscardChanges)
	local DiscardError = require(Plugin.Src.Actions.DiscardError)
	local DiscardErrors = require(Plugin.Src.Actions.DiscardErrors)

	local SetCurrentSettings = require(Plugin.Src.Actions.SetCurrentSettings)
	local AddWarning = require(Plugin.Src.Actions.AddWarning)
	local DiscardWarning = require(Plugin.Src.Actions.DiscardWarning)

	it("should initialize with Current and Changed if given nil", function()
		local store = Rodux.Store.new(SettingsReducer)
		expect(store:getState()).to.be.ok()
		expect(store:getState().Current).to.be.ok()
		expect(store:getState().Changed).to.be.ok()
	end)

	describe("AddChange", function()
		it("should add a key to Changed if a value is set", function()
			local startState = {
				Current = {},
				Changed = {},
				Errors = {},
			}
			local store = Rodux.Store.new(
				SettingsReducer,
				startState,
				{Rodux.thunkMiddleware}
			)

			store:dispatch(AddChange("SomeKey", "SomeValue"))

			expect(store:getState().Changed.SomeKey).to.be.ok()
		end)

		it("should remove a key within Changed if set back to its actual value", function()
			local startState = {
				Current = {
					SomeKey = "SomeValue",
				},
				Changed = {
					SomeKey = "SomeOtherValue",
					SomeOtherKey = "SomeOtherValue2",
				},
				Errors = {},
			}
			local store = Rodux.Store.new(
				SettingsReducer,
				startState,
				{Rodux.thunkMiddleware}
			)

			store:dispatch(AddChange("SomeKey", "SomeValue"))

			expect(store:getState().Changed.SomeKey).never.to.be.ok()
		end)

		it("should remove any errors related to the changed setting", function()
			local startState = {
				Current = {
					SomeKey = "SomeValue",
				},
				Changed = {
					SomeKey = "OtherValue",
				},
				Errors = {
					SomeKey = "SomeError",
				},
			}
			local store = Rodux.Store.new(
				SettingsReducer,
				startState,
				{Rodux.thunkMiddleware}
			)

			store:dispatch(AddChange("SomeKey", "OtherValue2"))

			expect(store:getState().Errors.SomeKey).never.to.be.ok()
		end)
	end)

	describe("AddErrors", function()
		it("should join Errors and the new values", function()
			local startState = {
				Current = {},
				Changed = {},
				Errors = {
					ExistingKey = "ExistingError",
				},
			}
			local store = Rodux.Store.new(
				SettingsReducer,
				startState,
				{Rodux.thunkMiddleware}
			)

			store:dispatch(AddErrors({NewKey = "NewError"}))

			expect(store:getState().Errors.ExistingKey).to.equal("ExistingError")
			expect(store:getState().Errors.NewKey).to.equal("NewError")
		end)

		it("should replace an old error with a new one", function()
			local startState = {
				Current = {},
				Changed = {},
				Errors = {
					ExistingKey = "ExistingError",
				},
			}
			local store = Rodux.Store.new(
				SettingsReducer,
				startState,
				{Rodux.thunkMiddleware}
			)

			store:dispatch(AddErrors({ExistingKey = "NewError"}))

			expect(store:getState().Errors.ExistingKey).to.equal("NewError")
		end)
	end)

	describe("DiscardChanges", function()
		it("should empty the Changed table", function()
			local startState = {
				Changed = {
					SomeKey = "SomeValue",
					OtherKey = "OtherValue",
				},
				Errors = {},
			}
			local store = Rodux.Store.new(
				SettingsReducer,
				startState,
				{Rodux.thunkMiddleware}
			)

			store:dispatch(DiscardChanges())

			expect(store:getState().Changed.SomeKey).never.to.be.ok()
			expect(store:getState().Changed.OtherKey).never.to.be.ok()
		end)
	end)

	describe("DiscardError", function()
		it("should empty the Errors table", function()
			local startState = {
				Changed = {},
				Errors = {
					SomeKey = "SomeValue",
					OtherKey = "OtherValue",
				},
			}
			local store = Rodux.Store.new(
				SettingsReducer,
				startState,
				{Rodux.thunkMiddleware}
			)

			store:dispatch(DiscardError("SomeKey"))

			expect(store:getState().Errors.SomeKey).never.to.be.ok()
			expect(store:getState().Errors.OtherKey).to.be.ok()
		end)
	end)

	describe("DiscardErrors", function()
		it("should empty the Errors table", function()
			local startState = {
				Changed = {},
				Errors = {
					SomeKey = "SomeValue",
					OtherKey = "OtherValue",
				},
			}
			local store = Rodux.Store.new(
				SettingsReducer,
				startState,
				{Rodux.thunkMiddleware}
			)

			store:dispatch(DiscardErrors())

			expect(store:getState().Errors.SomeKey).never.to.be.ok()
			expect(store:getState().Errors.OtherKey).never.to.be.ok()
		end)
	end)

	describe("SetCurrentSettings", function()
		it("should not modify the Changed table", function()
			local startState = {
				Current = {},
				Changed = {
					SomeKey = "SomeValue",
				},
				Errors = {},
			}
			local store = Rodux.Store.new(
				SettingsReducer,
				startState,
				{Rodux.thunkMiddleware}
			)

			store:dispatch(SetCurrentSettings({}))

			expect(store:getState().Changed.SomeKey).to.be.ok()
		end)

		it("should not modify the Errors table", function()
			local startState = {
				Current = {},
				Changed = {},
				Errors = {SomeKey = "SomeError",},
			}
			local store = Rodux.Store.new(
				SettingsReducer,
				startState,
				{Rodux.thunkMiddleware}
			)

			store:dispatch(SetCurrentSettings({}))

			expect(store:getState().Errors.SomeKey).to.be.ok()
		end)

		it("should overwrite the old Current values", function()
			local startState = {
				Current = {},
				Changed = {},
				Errors = {},
			}
			local newState = {
				SomeKey = "SomeValue",
				OtherKey = "OtherValue",
			}
			local store = Rodux.Store.new(
				SettingsReducer,
				startState,
				{Rodux.thunkMiddleware}
			)

			store:dispatch(SetCurrentSettings(newState))

			expect(store:getState().Current).to.equal(newState)
		end)
	end)

	describe("AddWarning", function()
		it("should add an entry to the Warnings list", function()
			local startState = {
				Warnings = {},
			}
			local store = Rodux.Store.new(
				SettingsReducer,
				startState,
				{Rodux.thunkMiddleware}
			)

			store:dispatch(AddWarning("Warning"))

			expect(store:getState().Warnings[1]).to.equal("Warning")
		end)
	end)

	describe("DiscardWarning", function()
		it("should remove an entry from the Warnings list", function()
			local startState = {
				Warnings = {"Warning"},
			}
			local store = Rodux.Store.new(
				SettingsReducer,
				startState,
				{Rodux.thunkMiddleware}
			)

			store:dispatch(DiscardWarning("Warning"))

			expect(#store:getState().Warnings).to.equal(0)
		end)
	end)
end