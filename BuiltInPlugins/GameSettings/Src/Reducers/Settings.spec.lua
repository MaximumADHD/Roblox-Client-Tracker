return function()
	local Plugin = script.Parent.Parent.Parent

	local Rodux = require(Plugin.Rodux)

	local SettingsReducer = require(Plugin.Src.Reducers.Settings)

	local AddChange = require(Plugin.Src.Actions.AddChange)
	local AddErrors = require(Plugin.Src.Actions.AddErrors)
	local DiscardChanges = require(Plugin.Src.Actions.DiscardChanges)
	local DiscardError = require(Plugin.Src.Actions.DiscardError)
	local DiscardErrors = require(Plugin.Src.Actions.DiscardErrors)

	local AddTableChange = require(Plugin.Src.Actions.AddTableChange)
	local DiscardTableChanges = require(Plugin.Src.Actions.DiscardTableChanges)
	local DiscardTableErrors = require(Plugin.Src.Actions.DiscardTableErrors)

	local AddTableKeyChange = require(Plugin.Src.Actions.AddTableKeyChange)
	local AddTableKeyErrors = require(Plugin.Src.Actions.AddTableKeyErrors)
	local DiscardTableKeyChanges = require(Plugin.Src.Actions.DiscardTableKeyChanges)
	local DiscardTableKeyErrors = require(Plugin.Src.Actions.DiscardTableKeyErrors)

	local SetCurrentSettings = require(Plugin.Src.Actions.SetCurrentSettings)
	local AddWarning = require(Plugin.Src.Actions.AddWarning)
	local DiscardWarning = require(Plugin.Src.Actions.DiscardWarning)

	local DFFlagDeveloperSubscriptionsEnabled = settings():GetFFlag("DeveloperSubscriptionsEnabled")

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

	if DFFlagDeveloperSubscriptionsEnabled then
		describe("AddTableChange", function()
			it("should add a key to Changed if different from its current value", function()
				local startState = {
					Current = {
						tableName = {
							tableKey = {
								valueKey = "CurrValue",
							},
						},
					},
					Changed = {
						tableName = {
							tableKey = {
								valueKey = "OtherValue",
							},
						},
					},
					Errors = {},
				}
				local store = Rodux.Store.new(
					SettingsReducer,
					startState,
					{Rodux.thunkMiddleware}
				)

				store:dispatch(AddTableChange("tableName", "tableKey", {valueKey = "SomeValue"}))

				expect(store:getState().Changed.tableName.tableKey.valueKey).to.equal("SomeValue")
			end)

			it("should remove a key within Changed if set back to its actual value", function()
				local startState = {
					Current = {
						tableName = {
							tableKey = {
								valueKey = "CurrValue",
							},
						},
					},
					Changed = {
						tableName = {
							tableKey = {
								valueKey = "OtherValue",
								valueKey3 = "SomeOtherValue",
							},
							tableKey2 = {
								valueKey2 = "SomeOtherValue",
							},
						},
					},
					Errors = {},
				}
				local store = Rodux.Store.new(
					SettingsReducer,
					startState,
					{Rodux.thunkMiddleware}
				)

				store:dispatch(AddTableChange("tableName", "tableKey", {valueKey = "CurrValue"}))

				expect(store:getState().Changed.tableName.tableKey).never.to.be.ok()
				expect(store:getState().Changed.tableName.tableKey2.valueKey2).to.equal("SomeOtherValue")
			end)

			it("should remove a key within Changed if set back to its actual value along with collapsing empty Changed tables", function()
				local startState = {
					Current = {
						tableName = {
							tableKey = {
								valueKey = "CurrValue",
							},
						},
					},
					Changed = {
						tableName = {
							tableKey = {
								valueKey = "OtherValue",
							},
						},
					},
					Errors = {},
				}
				local store = Rodux.Store.new(
					SettingsReducer,
					startState,
					{Rodux.thunkMiddleware}
				)

				store:dispatch(AddTableChange("tableName", "tableKey", {valueKey = "CurrValue"}))

				expect(store:getState().Changed.tableName).never.to.be.ok()
			end)

			it("should remove any errors related to the changed setting", function()
				local startState = {
					Current = {
						tableName = {
							tableKey = {
								valueKey = "SomeCurrValue"
							},
						},
					},
					Changed = {
						tableName = {
							tableKey = {
								valueKey = "SomeOtherValue"
							},
						},
					},
					Errors = {
						tableName = {
							tableKey = {
								valueKey = "SomeError",
								valueKey3 = "SomeError2",
							},
							tableKey2 = {
								valueKey2 = "SomeOtherError",
							},
						},
					},
				}
				local store = Rodux.Store.new(
					SettingsReducer,
					startState,
					{Rodux.thunkMiddleware}
				)

				store:dispatch(AddTableChange("tableName", "tableKey", {valueKey = "OtherValue"}))

				expect(store:getState().Errors.tableName.tableKey).never.to.be.ok()
				expect(store:getState().Errors.tableName.tableKey2.valueKey2).to.equal("SomeOtherError")
			end)

			it("should remove any errors related to the changed setting along with collapsing empty Error tables", function()
				local startState = {
					Current = {
						tableName = {
							tableKey = {
								valueKey = "SomeCurrValue"
							},
						},
					},
					Changed = {
						tableName = {
							tableKey = {
								valueKey = "SomeOtherValue"
							},
						},
					},
					Errors = {
						tableName = {
							tableKey = {
								valueKey = "SomeError",
							},
						},
					},
				}
				local store = Rodux.Store.new(
					SettingsReducer,
					startState,
					{Rodux.thunkMiddleware}
				)

				store:dispatch(AddTableChange("tableName", "tableKey", {valueKey = "OtherValue"}))

				expect(store:getState().Errors.tableName).never.to.be.ok()
			end)

			it("should shallow copy other tables that are unchanged", function()
				local startState = {
					Current = {
						tableName = {
							tableKey = {
								valueKey = "SomeCurrValue"
							},
						},
						tableName2 = {
							tableKey2 = {
								valueKey2 = "SomeCurrValue2"
							},
						},
					},
					Changed = {
						tableName = {
							tableKey = {
								valueKey = "SomeOtherValue"
							},
						},
						tableName2 = {
							tableKey2 = {
								valueKey2 = "SomeOtherValue2"
							},
						},
					},
					Errors = {
						tableName = {
							tableKey = {
								valueKey = "SomeError",
							},
						},
						tableName2 = {
							tableKey2 = {
								valueKey2 = "SomeError2",
							},
						},
					},
				}
				local store = Rodux.Store.new(
					SettingsReducer,
					startState,
					{Rodux.thunkMiddleware}
				)

				store:dispatch(AddTableChange("tableName", "tableKey", {valueKey = "OtherValue"}))

				expect(store:getState().Changed.tableName2).to.equal(startState.Changed.tableName2)
				expect(store:getState().Errors.tableName2).to.equal(startState.Errors.tableName2)
			end)
		end)

		describe("AddTableKeyChange", function()
			it("should add a key to Changed if different from its current value", function()
				local startState = {
					Current = {
						tableName = {
							tableKey = {
								valueKey = "CurrValue",
							},
						},
					},
					Changed = {
						tableName = {
							tableKey = {
								valueKey = "OtherValue",
							},
						},
					},
					Errors = {},
				}
				local store = Rodux.Store.new(
					SettingsReducer,
					startState,
					{Rodux.thunkMiddleware}
				)

				store:dispatch(AddTableKeyChange("tableName", "tableKey", "valueKey", "SomeValue"))

				expect(store:getState().Changed.tableName.tableKey.valueKey).to.equal("SomeValue")
			end)

			it("should remove a key within Changed if set back to its actual value", function()
				local startState = {
					Current = {
						tableName = {
							tableKey = {
								valueKey = "CurrValue",
							},
						},
					},
					Changed = {
						tableName = {
							tableKey = {
								valueKey = "OtherValue",
								valueKey2 = "SomeOtherValue",
							},
						},
					},
					Errors = {},
				}
				local store = Rodux.Store.new(
					SettingsReducer,
					startState,
					{Rodux.thunkMiddleware}
				)

				store:dispatch(AddTableKeyChange("tableName", "tableKey", "valueKey", "CurrValue"))

				expect(store:getState().Changed.tableName.tableKey.valueKey).never.to.be.ok()
				expect(store:getState().Changed.tableName.tableKey.valueKey2).to.equal("SomeOtherValue")
			end)

			it("should remove a key within Changed if set back to its actual value along with collapsing empty Changed tables", function()
				local startState = {
					Current = {
						tableName = {
							tableKey = {
								valueKey = "CurrValue",
							},
						},
					},
					Changed = {
						tableName = {
							tableKey = {
								valueKey = "OtherValue",
							},
						},
					},
					Errors = {},
				}
				local store = Rodux.Store.new(
					SettingsReducer,
					startState,
					{Rodux.thunkMiddleware}
				)

				store:dispatch(AddTableKeyChange("tableName", "tableKey", "valueKey", "CurrValue"))

				expect(store:getState().Changed.tableName).never.to.be.ok()
			end)

			it("should remove any errors related to the changed setting", function()
				local startState = {
					Current = {
						tableName = {
							tableKey = {
								valueKey = "SomeCurrValue"
							},
						},
					},
					Changed = {
						tableName = {
							tableKey = {
								valueKey = "SomeOtherValue"
							},
						},
					},
					Errors = {
						tableName = {
							tableKey = {
								valueKey = "SomeError",
								valueKey2 = "SomeOtherError",
							},
						},
					},
				}
				local store = Rodux.Store.new(
					SettingsReducer,
					startState,
					{Rodux.thunkMiddleware}
				)

				store:dispatch(AddTableKeyChange("tableName", "tableKey", "valueKey", "OtherValue"))

				expect(store:getState().Errors.tableName.tableKey.valueKey).never.to.be.ok()
				expect(store:getState().Errors.tableName.tableKey.valueKey2).to.equal("SomeOtherError")
			end)

			it("should remove any errors related to the changed setting along with collapsing empty Error tables", function()
				local startState = {
					Current = {
						tableName = {
							tableKey = {
								valueKey = "SomeCurrValue"
							},
						},
					},
					Changed = {
						tableName = {
							tableKey = {
								valueKey = "SomeOtherValue"
							},
						},
					},
					Errors = {
						tableName = {
							tableKey = {
								valueKey = "SomeError",
							},
						},
					},
				}
				local store = Rodux.Store.new(
					SettingsReducer,
					startState,
					{Rodux.thunkMiddleware}
				)

				store:dispatch(AddTableKeyChange("tableName", "tableKey", "valueKey", "OtherValue"))

				expect(store:getState().Errors.tableName).never.to.be.ok()
			end)

			it("should shallow copy other tables that are unchanged", function()
				local startState = {
					Current = {
						tableName = {
							tableKey = {
								valueKey = "SomeCurrValue"
							},
						},
						tableName2 = {
							tableKey2 = {
								valueKey2 = "SomeCurrValue2"
							},
						},
					},
					Changed = {
						tableName = {
							tableKey = {
								valueKey = "SomeOtherValue"
							},
						},
						tableName2 = {
							tableKey2 = {
								valueKey2 = "SomeOtherValue2"
							},
						},
					},
					Errors = {
						tableName = {
							tableKey = {
								valueKey = "SomeError",
							},
						},
						tableName2 = {
							tableKey2 = {
								valueKey2 = "SomeError2",
							},
						},
					},
				}
				local store = Rodux.Store.new(
					SettingsReducer,
					startState,
					{Rodux.thunkMiddleware}
				)

				store:dispatch(AddTableKeyChange("tableName", "tableKey", "valueKey", "OtherValue"))

				expect(store:getState().Changed.tableName2).to.equal(startState.Changed.tableName2)
				expect(store:getState().Errors.tableName2).to.equal(startState.Errors.tableName2)
			end)
		end)
	end


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

	if DFFlagDeveloperSubscriptionsEnabled then
		describe("AddTableKeyErrors", function()
			it("should join Errors and the new values", function()
				local startState = {
					Current = {},
					Changed = {},
					Errors = {
						tableName = {
							tableKey = {
								valueKey = {
									ExistingKey = "ExistingError"
								},
							},
						},
					},
				}
				local store = Rodux.Store.new(
					SettingsReducer,
					startState,
					{Rodux.thunkMiddleware}
				)
				store:dispatch(AddTableKeyErrors("tableName", "tableKey", "valueKey", {NewKey = "NewError"}))
 
				expect(store:getState().Errors.tableName.tableKey.valueKey.ExistingKey).to.equal("ExistingError")
				expect(store:getState().Errors.tableName.tableKey.valueKey.NewKey).to.equal("NewError")
			end)

			it("should replace an old error with a new one", function()
				local startState = {
					Current = {},
					Changed = {},
					Errors = {
						tableName = {
							tableKey = {
								valueKey = {
									ExistingKey = "ExistingError"
								},
							},
						},
					},
				}

				local store = Rodux.Store.new(
					SettingsReducer,
					startState,
					{Rodux.thunkMiddleware}
				)
				store:dispatch(AddTableKeyErrors("tableName", "tableKey", "valueKey", {ExistingKey = "NewError"}))
 
				expect(store:getState().Errors.tableName.tableKey.valueKey.ExistingKey).to.equal("NewError")
			end)

			it("should shallow copy unchanged error tables", function()
				local startState = {
					Current = {},
					Changed = {},
					Errors = {
						tableName = {
							tableKey = {
								valueKey = {
									ExistingKey = "ExistingError"
								},
							},
						},
						tableName2 = {
							tableKey2 = {
								valueKey2 = {
									ExistingKey2 = "ExistingError2"
								},
							},
						},
					},
				}

				local store = Rodux.Store.new(
					SettingsReducer,
					startState,
					{Rodux.thunkMiddleware}
				)
				store:dispatch(AddTableKeyErrors("tableName", "tableKey", "valueKey", {NewKey = "NewError"}))
 
				expect(store:getState().Errors.tableName2).to.equal(startState.Errors.tableName2)
			end)
		end)
	end

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

	if DFFlagDeveloperSubscriptionsEnabled then
		describe("DiscardTableChanges", function()
			it("should correctly remove a change", function()
				local startState = {
					Changed = {
						tableName = {
							tableKey = {
								valueKey = "SomeValue",
							},
							tableKey2 = {
								valueKey2 = "SomeValue",
							},
						},
					},
					Errors = {},
				}
				local store = Rodux.Store.new(
					SettingsReducer,
					startState,
					{Rodux.thunkMiddleware}
				)

				store:dispatch(DiscardTableChanges("tableName", "tableKey"))

				expect(store:getState().Changed.tableName.tableKey).never.to.be.ok()
			end)

			it("should collapse empty tables in Changed after discarding a change", function()
				local startState = {
					Changed = {
						tableName = {
							tableKey = {
								valueKey = "SomeValue",
							},
						},
					},
					Errors = {},
				}
				local store = Rodux.Store.new(
					SettingsReducer,
					startState,
					{Rodux.thunkMiddleware}
				)

				store:dispatch(DiscardTableChanges("tableName", "tableKey", "valueKey"))

				expect(store:getState().Changed.tableName).never.to.be.ok()
			end)

			it("should remove errors associated with discarded keys", function()
				local startState = {
					Changed = {
						tableName = {
							tableKey = {
								valueKey = "SomeValue",
							},
							tableKey2 = {
								valueKey2 = "SomeValueError",
							},
						},
					},
					Errors = {
						tableName = {
							tableKey = {
								valueKey = "SomeError",
							},
							tableKey2 = {
								valueKey2 = "SomeError2",
							},
						},
					},
				}
				local store = Rodux.Store.new(
					SettingsReducer,
					startState,
					{Rodux.thunkMiddleware}
				)

				store:dispatch(DiscardTableChanges("tableName", "tableKey", "valueKey"))

				expect(store:getState().Errors.tableName.tableKey).never.to.be.ok()
				expect(store:getState().Errors.tableName.tableKey2.valueKey2).to.equal("SomeError2")
			end)

			it("should collapse empty tables in Errors after discarding a change", function()
				local startState = {
					Changed = {
						tableName = {
							tableKey = {
								valueKey = "SomeValue",
							},
						},
					},
					Errors = {
						tableName = {
							tableKey = {
								valueKey = "SomeError",
							},
						},
					},
				}
				local store = Rodux.Store.new(
					SettingsReducer,
					startState,
					{Rodux.thunkMiddleware}
				)

				store:dispatch(DiscardTableChanges("tableName", "tableKey", "valueKey"))

				expect(store:getState().Errors.tableName).never.to.be.ok()
			end)

			it("should shallow copy other tables after discarding a change", function()
				local startState = {
					Changed = {
						tableName = {
							tableKey = {
								valueKey = "SomeValue",
							},
						},
						tableName2 = {
							tableKey2 = {
								valueKey2 = "SomeValue2",
							},
						},
					},
					Errors = {
						tableName = {
							tableKey = {
								valueKey = "SomeError",
							},
						},
						tableName2 = {
							tableKey2 = {
								valueKey2 = "SomeError2",
							},
						},
					},
				}
				local store = Rodux.Store.new(
					SettingsReducer,
					startState,
					{Rodux.thunkMiddleware}
				)

				store:dispatch(DiscardTableKeyChanges("tableName", "tableKey", "valueKey"))

				expect(store:getState().Changed.tableName2).to.equal(startState.Changed.tableName2)
				expect(store:getState().Errors.tableName2).to.equal(startState.Errors.tableName2)
			end)
		end)

		describe("DiscardTableKeyChanges", function()
			it("should correctly remove a change", function()
				local startState = {
					Changed = {
						tableName = {
							tableKey = {
								valueKey = "SomeValue",
								valueKey2 = "SomeValue2",
							},
						},
					},
					Errors = {},
				}
				local store = Rodux.Store.new(
					SettingsReducer,
					startState,
					{Rodux.thunkMiddleware}
				)

				store:dispatch(DiscardTableKeyChanges("tableName", "tableKey", "valueKey"))

				expect(store:getState().Changed.tableName.tableKey.valueKey).never.to.be.ok()
				expect(store:getState().Changed.tableName.tableKey.valueKey2).to.equal("SomeValue2")
			end)

			it("should collapse empty tables in Changed after discarding a change", function()
				local startState = {
					Changed = {
						tableName = {
							tableKey = {
								valueKey = "SomeValue",
							},
						},
					},
					Errors = {},
				}
				local store = Rodux.Store.new(
					SettingsReducer,
					startState,
					{Rodux.thunkMiddleware}
				)

				store:dispatch(DiscardTableKeyChanges("tableName", "tableKey", "valueKey"))

				expect(store:getState().Changed.tableName).never.to.be.ok()
			end)

			it("should remove errors associated with discarded keys", function()
				local startState = {
					Changed = {
						tableName = {
							tableKey = {
								valueKey = "SomeValue",
								valueKey2 = "SomeValue2",
							},
						},
					},
					Errors = {
						tableName = {
							tableKey = {
								valueKey = "SomeError",
								valueKey2 = "SomeError2"
							},
						},
					},
				}
				local store = Rodux.Store.new(
					SettingsReducer,
					startState,
					{Rodux.thunkMiddleware}
				)

				store:dispatch(DiscardTableKeyChanges("tableName", "tableKey", "valueKey"))

				expect(store:getState().Errors.tableName.tableKey.valueKey).never.to.be.ok()
				expect(store:getState().Errors.tableName.tableKey.valueKey2).to.equal("SomeError2")
			end)

			it("should collapse empty tables in Errors after discarding a change", function()
				local startState = {
					Changed = {
						tableName = {
							tableKey = {
								valueKey = "SomeValue",
							},
						},
					},
					Errors = {
						tableName = {
							tableKey = {
								valueKey = "SomeError",
							},
						},
					},
				}
				local store = Rodux.Store.new(
					SettingsReducer,
					startState,
					{Rodux.thunkMiddleware}
				)

				store:dispatch(DiscardTableKeyChanges("tableName", "tableKey", "valueKey"))

				expect(store:getState().Errors.tableName).never.to.be.ok()
			end)

			it("should shallow copy other tables after discarding a change", function()
				local startState = {
					Changed = {
						tableName = {
							tableKey = {
								valueKey = "SomeValue",
							},
						},
						tableName2 = {
							tableKey2 = {
								valueKey2 = "SomeValue2",
							},
						},
					},
					Errors = {
						tableName = {
							tableKey = {
								valueKey = "SomeError",
							},
						},
						tableName2 = {
							tableKey2 = {
								valueKey2 = "SomeError2",
							},
						},
					},
				}
				local store = Rodux.Store.new(
					SettingsReducer,
					startState,
					{Rodux.thunkMiddleware}
				)

				store:dispatch(DiscardTableKeyChanges("tableName", "tableKey", "valueKey"))

				expect(store:getState().Changed.tableName2).to.equal(startState.Changed.tableName2)
				expect(store:getState().Errors.tableName2).to.equal(startState.Errors.tableName2)
			end)
		end)
	end

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

	if DFFlagDeveloperSubscriptionsEnabled then
		describe("DiscardTableErrors", function()
			it("should empty the Errors of a certian key", function()
				local startState = {
					Changed = {},
					Errors = {
						tableName = {
							tableKey = {
								valueKey = {SomeError = "SomeErrorValue"},
							},
							tableKey2 = {
								valueKey2 = {SomeError2 = "SomeErrorValue2"},
							}
						},
					},
				}
				local store = Rodux.Store.new(
					SettingsReducer,
					startState,
					{Rodux.thunkMiddleware}
				)

				store:dispatch(DiscardTableErrors("tableName", "tableKey"))

				expect(store:getState().Errors.tableName.tableKey).never.to.be.ok()
				expect(store:getState().Errors.tableName.tableKey2.valueKey2.SomeError2).to.equal("SomeErrorValue2")
			end)

			it("should empty the Errors of a certian key and collapse empty tables besides Errors", function()
				local startState = {
					Changed = {},
					Errors = {
						tableName = {
							tableKey = {
								valueKey = {SomeError = "SomeErrorValue"},
							},
						},
					},
				}
				local store = Rodux.Store.new(
					SettingsReducer,
					startState,
					{Rodux.thunkMiddleware}
				)

				store:dispatch(DiscardTableErrors("tableName", "tableKey"))

				expect(store:getState().Errors.tableName).never.to.be.ok()
			end)

			it("should shallow copy untouched tables", function()
				local startState = {
					Changed = {},
					Errors = {
						tableName = {
							tableKey = {
								valueKey = {SomeError = "SomeErrorValue"},
							}
						},
						tableName2 = {
							tableKey2 = {
								valueKey2 = {SomeError = "SomeErrorValue"},
							}
						},
					},
				}
				local store = Rodux.Store.new(
					SettingsReducer,
					startState,
					{Rodux.thunkMiddleware}
				)

				store:dispatch(DiscardTableErrors("tableName", "tableKey"))

				expect(store:getState().Errors.tableName2).to.equal(startState.Errors.tableName2)
			end)
		end)

		describe("DiscardTableKeyErrors", function()
			it("should empty the Errors of a certian key", function()
				local startState = {
					Changed = {},
					Errors = {
						tableName = {
							tableKey = {
								valueKey = {SomeError = "SomeErrorValue"},
								valueKey2 = {SomeError2 = "SomeErrorValue2"},
							}
						},
					},
				}
				local store = Rodux.Store.new(
					SettingsReducer,
					startState,
					{Rodux.thunkMiddleware}
				)

				store:dispatch(DiscardTableKeyErrors("tableName", "tableKey", "valueKey"))

				expect(store:getState().Errors.tableName.tableKey.valueKey).never.to.be.ok()
				expect(store:getState().Errors.tableName.tableKey.valueKey2.SomeError2).to.equal("SomeErrorValue2")
			end)

			it("should empty the Errors of a certian key and collapse empty tables besides Errors", function()
				local startState = {
					Changed = {},
					Errors = {
						tableName = {
							tableKey = {
								valueKey = {SomeError = "SomeErrorValue"},
							},
						},
					},
				}
				local store = Rodux.Store.new(
					SettingsReducer,
					startState,
					{Rodux.thunkMiddleware}
				)

				store:dispatch(DiscardTableKeyErrors("tableName", "tableKey", "valueKey"))

				expect(store:getState().Errors.tableName).never.to.be.ok()
			end)

			it("should shallow copy untouched tables", function()
				local startState = {
					Changed = {},
					Errors = {
						tableName = {
							tableKey = {
								valueKey = {SomeError = "SomeErrorValue"},
							}
						},
						tableName2 = {
							tableKey2 = {
								valueKey2 = {SomeError = "SomeErrorValue"},
							}
						},
					},
				}
				local store = Rodux.Store.new(
					SettingsReducer,
					startState,
					{Rodux.thunkMiddleware}
				)

				store:dispatch(DiscardTableKeyErrors("tableName", "tableKey", "valueKey"))

				expect(store:getState().Errors.tableName2).to.equal(startState.Errors.tableName2)
			end)
		end)
	end

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