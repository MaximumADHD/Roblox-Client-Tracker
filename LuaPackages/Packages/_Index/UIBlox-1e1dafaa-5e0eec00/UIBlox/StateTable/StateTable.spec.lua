return function()
	local StateTable = require(script.Parent.StateTable)

	local TEST_NAME = "test_state_table_name"
	local TEST_INITIAL_STATE = "Initial"
	local TEST_DATA = { foo = 1 }

	local DUMMY_ACTION = function(_, _, data)
		return data
	end

	local function FieldCount(t)
		local fieldCount = 0
		for _ in pairs(t) do
			fieldCount = fieldCount + 1
		end
		return fieldCount
	end

	local function ShallowEqual(A, B)
		if not A or not B then
			return false
		elseif A == B then
			return true
		end

		for key, value in pairs(A) do
			if B[key] ~= value then
				return false
			end
		end
		for key, value in pairs(B) do
			if A[key] ~= value then
				return false
			end
		end

		return true
	end

	describe("StateTable.new validation throw tests", function()
		it("should throw if name is nil", function()
			expect(function()
				StateTable.new(nil, TEST_INITIAL_STATE, {}, { Initial = {} })
			end).to.throw()
		end)

		it("should throw if name is not a string", function()
			expect(function()
				StateTable.new(5, TEST_INITIAL_STATE, {}, { Initial = {} })
			end).to.throw()
		end)

		it("should throw if name is empty", function()
			expect(function()
				StateTable.new("", TEST_INITIAL_STATE, {}, { Initial = {} })
			end).to.throw()
		end)

		it("should throw if initialState is nil", function()
			expect(function()
				StateTable.new(TEST_NAME, nil, {}, { Initial = {} })
			end).to.throw()
		end)

		it("should throw if initialState is not a string", function()
			expect(function()
				StateTable.new(TEST_NAME, 5, {}, { Initial = {} })
			end).to.throw()
		end)

		it("should throw if initialState is empty", function()
			expect(function()
				StateTable.new(TEST_NAME, "", {}, { Initial = {} })
			end).to.throw()
		end)

		it("should throw if initialContext is wrong type", function()
			expect(function()
				StateTable.new(TEST_NAME, TEST_INITIAL_STATE, 5, { Initial = {} })
			end).to.throw()
		end)

		it("should throw if transitionTable is nil", function()
			expect(function()
				StateTable.new(TEST_NAME, TEST_INITIAL_STATE, {}, nil)
			end).to.throw()
		end)

		it("should throw if empty transitionTable is provided", function()
			expect(function()
				StateTable.new(TEST_NAME, TEST_INITIAL_STATE, {}, {})
			end).to.throw()
		end)

		it("should throw if non-table transitionTable is provided", function()
			expect(function()
				StateTable.new(TEST_NAME, TEST_INITIAL_STATE, {}, 1)
			end).to.throw()
		end)

		it("should throw if no arguments are provided", function()
			expect(function()
				StateTable.new()
			end).to.throw()
		end)

		it("should throw if non-string/userdata used for state name", function()
			expect(function()
				StateTable.new(TEST_NAME, TEST_INITIAL_STATE, {}, { [1] = {} })
			end).to.throw()
		end)

		it("should throw if non-table is used for state table", function()
			expect(function()
				StateTable.new(TEST_NAME, TEST_INITIAL_STATE, {}, { Initial = 1 })
			end).to.throw()
		end)

		it("should throw if non-string/userdata is used for event name", function()
			expect(function()
				StateTable.new(TEST_NAME, TEST_INITIAL_STATE, {}, { Initial = { [1] = {} } })
			end).to.throw()
		end)

		it("should throw if non-table is used for event data table", function()
			expect(function()
				StateTable.new(TEST_NAME, TEST_INITIAL_STATE, {}, { Initial = { Event1 = 1 } })
			end).to.throw()
		end)

		it("should throw if non-string/userdata used for nextState", function()
			expect(function()
				StateTable.new(TEST_NAME, TEST_INITIAL_STATE, {}, { Initial = { Event1 = { nextState = 1 } } })
			end).to.throw()
		end)

		it("should throw if non-function used for action", function()
			expect(function()
				StateTable.new(TEST_NAME, TEST_INITIAL_STATE, {}, { Initial = { Event1 = { action = 1 } } })
			end).to.throw()
		end)

		it("should throw if initial state not in transitionTable", function()
			expect(function()
				StateTable.new(TEST_NAME, TEST_INITIAL_STATE, {}, { NotInitial = {} })
			end).to.throw()
		end)
	end)

	describe("StateTable.new validation success tests", function()
		it("should not throw if empty event table is provided", function()
			StateTable.new(TEST_NAME, TEST_INITIAL_STATE, {}, { Initial = {} })
		end)

		it("should not throw if empty event data table is provided", function()
			StateTable.new(TEST_NAME, TEST_INITIAL_STATE, {}, { Initial = { Event1 = {} } })
		end)

		it("should not throw if action is missing", function()
			StateTable.new(TEST_NAME, TEST_INITIAL_STATE, {}, {
				Initial = {
					Event1 = { nextState = "Next" }
				},
				Next = {}
			})
		end)

		it("should not throw if nextState is missing", function()
			StateTable.new(TEST_NAME, TEST_INITIAL_STATE, {}, { Initial = { Event1 = { action = function() end } } })
		end)
	end)

	describe("StateTable.new event function creation tests", function()
		it("should create an event function for a single event", function()
			local st = StateTable.new(TEST_NAME, TEST_INITIAL_STATE, {}, { Initial = { Event1 = { } } })
			expect(FieldCount(st.events)).to.equal(1)
			expect(typeof(st.events.Event1)).to.equal("function")
		end)

		it("should create different event functions for multiple events", function()
			local st = StateTable.new(TEST_NAME, TEST_INITIAL_STATE, {}, { Initial = { Event1 = { }, Event2 = { } } })
			expect(FieldCount(st.events)).to.equal(2)
			expect(typeof(st.events.Event1)).to.equal("function")
			expect(typeof(st.events.Event2)).to.equal("function")
		end)

		it("should not create event functions without at least one event", function()
			local st = StateTable.new(TEST_NAME, TEST_INITIAL_STATE, {}, { Initial = {} })
			expect(FieldCount(st.events)).to.equal(0)
		end)
	end)

	describe("StateTable onStateChange registration tests", function()
		it("should assert when non-function provided", function()
			local st = StateTable.new(TEST_NAME, TEST_INITIAL_STATE, {}, { Initial = {} })
			expect(function()
				st:onStateChange(5)
			end).to.throw()
		end)

		it("should not assert when function provided", function()
			local st = StateTable.new(TEST_NAME, TEST_INITIAL_STATE, {}, { Initial = {} })
			st:onStateChange(function() end)
		end)

		it("should not assert when nil provided", function()
			local st = StateTable.new(TEST_NAME, TEST_INITIAL_STATE, {}, { Initial = {} })
			st:onStateChange(nil)
		end)

		it("should call onStateChange handler when transition occurs", function()
			local st = StateTable.new(TEST_NAME, TEST_INITIAL_STATE, {}, {
				Initial = {
					Event1 = {}
				}
			})

			local called = false
			st:onStateChange(function()
				called = true
			end)

			st.events.Event1(nil)
			expect(called).to.equal(true)
		end)

		it("should not call onStateChange handler after it has been de-registered", function()
			local st = StateTable.new(TEST_NAME, TEST_INITIAL_STATE, {}, {
				Initial = {
					Event1 = {}
				}
			})

			local called = false
			st:onStateChange(function()
				called = true
			end)

			st:onStateChange(nil)

			st.events.Event1(nil)
			expect(called).to.equal(false)
		end)
	end)

	describe("StateTable event call tests", function()
		it("should change state when handleEvent is called", function()
			local action1Called = false
			local testAction1 = function() action1Called = true end

			local action2Called = false
			local testAction2 = function() action2Called = true end

			local st = StateTable.new(TEST_NAME, TEST_INITIAL_STATE, {}, {
				Initial = {
					Event1 = { nextState = "Two", action = testAction1 }
				},
				Two = {
					Event2 = { action = testAction2 }
				}
			})

			st:handleEvent("Event1", nil)
			expect(action1Called).to.equal(true)
			expect(action2Called).to.equal(false)

			action1Called = false
			action2Called = false

			st:handleEvent("Event2", nil)
			expect(action1Called).to.equal(false)
			expect(action2Called).to.equal(true)
		end)

		it("should call mapped action when handleEvent is called", function()
			local actionOldState, actionNewState, actionData
			local testAction = function(oldState, newState, data)
				actionOldState = oldState
				actionNewState = newState
				actionData = data
			end

			local st = StateTable.new(TEST_NAME, TEST_INITIAL_STATE, {}, {
				Initial = {
					Event1 = { nextState = "Two", action = testAction }
				},
				Two = {}
			})

			st:handleEvent("Event1", TEST_DATA)
			expect(actionOldState).to.equal("Initial")
			expect(actionNewState).to.equal("Two")
			expect(ShallowEqual(actionData, TEST_DATA)).to.equal(true)
		end)

		it("should return expected nextState and data in onStateChange callback when handleEvent is called", function()
			local st = StateTable.new(TEST_NAME, TEST_INITIAL_STATE, {}, {
				Initial = {
					Event1 = { nextState = "Two", action = DUMMY_ACTION }
				},
				Two = {}
			})

			local oldState, newState, updatedContext
			st:onStateChange(function(os, ns, uc)
				oldState = os
				newState = ns
				updatedContext = uc
			end)

			st:handleEvent("Event1", TEST_DATA)

			expect(oldState).to.equal("Initial")
			expect(newState).to.equal("Two")
			expect(ShallowEqual(updatedContext, TEST_DATA)).to.equal(true)
		end)

		it("should call mapped action when event functor is called", function()
			local actionOldState, actionNewState, actionData
			local testAction = function(oldState, newState, data)
				actionOldState = oldState
				actionNewState = newState
				actionData = data
			end

			local st = StateTable.new(TEST_NAME, TEST_INITIAL_STATE, {}, {
				Initial = {
					Event1 = { nextState = "Two", action = testAction }
				},
				Two = {}
			})

			st.events.Event1(TEST_DATA)
			expect(actionOldState).to.equal("Initial")
			expect(actionNewState).to.equal("Two")
			expect(ShallowEqual(actionData, TEST_DATA)).to.equal(true)
		end)

		it("should return expected nextState and data in onStateChange callback when event functor is called", function()
			local st = StateTable.new(TEST_NAME, TEST_INITIAL_STATE, {}, {
				Initial = {
					Event1 = { nextState = "Two", action = DUMMY_ACTION }
				},
				Two = {}
			})

			local oldState, newState, updatedContext
			st:onStateChange(function(os, ns, uc)
				oldState = os
				newState = ns
				updatedContext = uc
			end)

			st.events.Event1(TEST_DATA)

			expect(oldState).to.equal("Initial")
			expect(newState).to.equal("Two")
			expect(ShallowEqual(updatedContext, TEST_DATA)).to.equal(true)
		end)

		it("should still return nextState in onStateChange callback when no action handler is provided", function()
			local st = StateTable.new(TEST_NAME, TEST_INITIAL_STATE, {}, {
				Initial = {
					Event1 = { nextState = "Two" }
				},
				Two = {}
			})

			local oldState, newState, updatedContext
			st:onStateChange(function(os, ns, uc)
				oldState = os
				newState = ns
				updatedContext = uc
			end)

			st.events.Event1(TEST_DATA)

			expect(oldState).to.equal("Initial")
			expect(newState).to.equal("Two")
			expect(typeof(updatedContext)).to.equal("table")
			expect(FieldCount(updatedContext)).to.equal(0)
		end)

		it("should return current state and empty data if new state and action handler are not specified", function()
			local st = StateTable.new(TEST_NAME, TEST_INITIAL_STATE, {}, { Initial = { Event1 = { } } })

			local oldState, newState, updatedContext
			st:onStateChange(function(os, ns, uc)
				oldState = os
				newState = ns
				updatedContext = uc
			end)

			st.events.Event1(TEST_DATA)

			expect(oldState).to.equal("Initial")
			expect(newState).to.equal("Initial")
			expect(FieldCount(updatedContext)).to.equal(0)
		end)

		it("should return current state and matching data if only action handler is provided", function()
			local st = StateTable.new(TEST_NAME, TEST_INITIAL_STATE, {}, { Initial = { Event1 = { action = DUMMY_ACTION } } })

			local oldState, newState, updatedContext
			st:onStateChange(function(os, ns, uc)
				oldState = os
				newState = ns
				updatedContext = uc
			end)

			st.events.Event1(TEST_DATA)

			expect(oldState).to.equal("Initial")
			expect(newState).to.equal("Initial")
			expect(ShallowEqual(updatedContext, TEST_DATA)).to.equal(true)
		end)

		it("should return empty data in onStateChange callback when nil data is provided to no-action event", function()
			local st = StateTable.new(TEST_NAME, TEST_INITIAL_STATE, {}, { Initial = { Event1 = {} } })

			local updatedContext
			st:onStateChange(function(_, _, uc)
				updatedContext = uc
			end)

			st.events.Event1(nil)

			expect(FieldCount(updatedContext)).to.equal(0)
		end)

		it("should merge context updates with old context", function()
			local initialContext = { foo = 1 }

			local function action1()
				return { bar = 2 }
			end

			local st = StateTable.new(TEST_NAME, TEST_INITIAL_STATE, initialContext, {
				Initial = {
					Event1 = { action = action1 }
				}
			})

			local updatedContext
			st:onStateChange(function(_, _, uc)
				updatedContext = uc
			end)

			st.events.Event1()

			expect(ShallowEqual(updatedContext, { foo = 1, bar = 2 })).to.equal(true)
		end)

		it("should pass args to actions", function()
			local passedArgs
			local function action1(_, _, args)
				passedArgs = args
			end

			local st = StateTable.new(TEST_NAME, TEST_INITIAL_STATE, {}, {
				Initial = { Event1 = { action = action1 } }
			})

			local theArgs = { argsAreHere = true }
			st.events.Event1(theArgs)

			expect(ShallowEqual(theArgs, passedArgs)).to.equal(true)
		end)

		it("should call actions independently for different events", function()
			local testData1 = TEST_DATA
			local testData2 = { foo = 2 }

			local action1OldState, action1NewState, action1Data
			local testAction1 = function(oldState, newState, data)
				action1OldState = oldState
				action1NewState = newState
				action1Data = data
				return data
			end

			local action2OldState, action2NewState, action2Data
			local testAction2 = function(oldState, newState, data)
				action2OldState = oldState
				action2NewState = newState
				action2Data = data
				return data
			end

			local st = StateTable.new(TEST_NAME, TEST_INITIAL_STATE, {}, {
				Initial = {
					Event1 = { action = testAction1 },
					Event2 = { nextState = "Two", action = testAction2 },
				},
				Two = {}
			})

			local oldState, newState, updatedContext
			st:onStateChange(function(os, ns, uc)
				oldState = os
				newState = ns
				updatedContext = uc
			end)

			st.events.Event1(testData1)
			expect(oldState).to.equal("Initial")
			expect(newState).to.equal("Initial")
			expect(ShallowEqual(updatedContext, testData1)).to.equal(true)

			st.events.Event2(testData2)
			expect(oldState).to.equal("Initial")
			expect(newState).to.equal("Two")
			expect(ShallowEqual(updatedContext, testData2)).to.equal(true)

			expect(action1OldState).to.equal("Initial")
			expect(action2OldState).to.equal("Initial")
			expect(action1NewState).to.equal("Initial")
			expect(action2NewState).to.equal("Two")

			expect(ShallowEqual(action1Data, testData1)).to.equal(true)
			expect(ShallowEqual(action2Data, testData2)).to.equal(true)
		end)
	end)
end
