return function()
	local Store = require(script.Parent.Store)

	describe("new", function()
		it("should instantiate with a reducer", function()
			local store = Store.new(function(state, action)
				return "hello, world"
			end)

			expect(store).to.be.ok()
			expect(store:getState()).to.equal("hello, world")

			store:destruct()
		end)

		it("should instantiate with a reducer and an initial state", function()
			local store = Store.new(function(state, action)
				return state
			end, "initial state")

			expect(store).to.be.ok()
			expect(store:getState()).to.equal("initial state")

			store:destruct()
		end)

		it("should instantiate with a reducer, initial state, and middlewares", function()
			local store = Store.new(function(state, action)
				return state
			end, "initial state", {})

			expect(store).to.be.ok()
			expect(store:getState()).to.equal("initial state")

			store:destruct()
		end)

		it("should modify the dispatch method when middlewares are passed", function()
			local middlewareInstantiateCount = 0
			local middlewareInvokeCount = 0
			local passedDispatch
			local passedStore
			local passedAction

			local function reducer(state, action)
				if action.type == "test" then
					return "test state"
				end

				return state
			end

			local function testMiddleware(nextDispatch, store)
				middlewareInstantiateCount = middlewareInstantiateCount + 1
				passedDispatch = nextDispatch
				passedStore = store

				return function(action)
					middlewareInvokeCount = middlewareInvokeCount + 1
					passedAction = action

					nextDispatch(action)
				end
			end

			local store = Store.new(reducer, "initial state", { testMiddleware })

			expect(middlewareInstantiateCount).to.equal(1)
			expect(middlewareInvokeCount).to.equal(0)
			expect(passedDispatch).to.be.a("function")
			expect(passedStore).to.equal(store)

			store:dispatch({
				type = "test",
			})

			expect(middlewareInstantiateCount).to.equal(1)
			expect(middlewareInvokeCount).to.equal(1)
			expect(passedAction.type).to.equal("test")

			store:flush()

			expect(store:getState()).to.equal("test state")

			store:destruct()
		end)

		it("should execute middleware left-to-right", function()
			local events = {}

			local function reducer(state)
				return state
			end

			local function middlewareA(nextDispatch, store)
				table.insert(events, "instantiate a")
				return function(action)
					table.insert(events, "execute a")
					return nextDispatch(action)
				end
			end

			local function middlewareB(nextDispatch, store)
				table.insert(events, "instantiate b")
				return function(action)
					table.insert(events, "execute b")
					return nextDispatch(action)
				end
			end

			local store = Store.new(reducer, 5, { middlewareA, middlewareB })

			expect(#events).to.equal(2)
			expect(events[1]).to.equal("instantiate b")
			expect(events[2]).to.equal("instantiate a")

			store:dispatch({
				type = "test",
			})

			expect(#events).to.equal(4)
			expect(events[3]).to.equal("execute a")
			expect(events[4]).to.equal("execute b")

			store:destruct()
		end)

		it("should send an initial action with a 'type' field", function()
			local lastAction
			local callCount = 0

			local store = Store.new(function(state, action)
				lastAction = action
				callCount = callCount + 1

				return state
			end)

			expect(callCount).to.equal(1)
			expect(lastAction).to.be.a("table")
			expect(lastAction.type).to.be.ok()

			store:destruct()
		end)

		it("should report a reducer error thrown when handling the INIT action", function()
			local caughtState, caughtAction, caughtErrorResult
			local mockErrorReporter = {
				reportReducerError = function(state, action, errorResult)
					caughtState = state
					caughtAction = action
					caughtErrorResult = errorResult
				end,
				reportUpdateError = function()
					-- no op
				end
			}

			local innerErrorMessage = "Z4PH0D"
			local reducerThatErrors = function(state, action)
				error(innerErrorMessage)
			end

			local store
			store = Store.new(reducerThatErrors, {
				Value = 1
			}, nil, mockErrorReporter)

			expect(caughtState.Value).to.equal(1)
			expect(caughtAction.type).to.equal("@@INIT")
			expect(caughtErrorResult.message).to.equal("Caught error in reducer with init")
			expect(string.find(
				caughtErrorResult.thrownValue,
				innerErrorMessage
			)).to.be.ok()
			-- We want to verify that this is a stacktrace without caring too
			-- much about the format, so we look for the stack frame associated
			-- with this test file
			expect(string.find(
				caughtErrorResult.thrownValue,
				script.Name
			)).to.be.ok()

			store:destruct()
		end)

		it("should report a reducer error thrown when handling a subsequent action", function()
			local caughtState, caughtAction, caughtErrorResult
			local mockErrorReporter = {
				reportReducerError = function(state, action, errorResult)
					caughtState = state
					caughtAction = action
					caughtErrorResult = errorResult
				end,
				reportUpdateError = function()
					-- no op
				end
			}

			local innerErrorMessage = "Z4PH0D"
			local reducerThatErrorsAfterInit = function(state, action)
				if action.type == "ThrowError" then
					error(innerErrorMessage)
				elseif action.type == "Increment" then
					return {
						Value = state.Value + 1
					}
				end
				return state
			end

			local store
			store = Store.new(reducerThatErrorsAfterInit, {
				Value = 1,
			}, nil, mockErrorReporter)

			expect(caughtState).to.equal(nil)
			expect(caughtAction).to.equal(nil)
			expect(caughtErrorResult).to.equal(nil)

			store:dispatch({type = "Increment"})
			store:dispatch({type = "ThrowError"})

			expect(caughtState.Value).to.equal(2)
			expect(caughtAction.type).to.equal("ThrowError")
			expect(caughtErrorResult.message).to.equal("Caught error in reducer")
			expect(string.find(
				caughtErrorResult.thrownValue,
				innerErrorMessage
			)).to.be.ok()
			-- We want to verify that this is a stacktrace without caring too
			-- much about the format, so we look for the stack frame associated
			-- with this test file
			expect(string.find(
				caughtErrorResult.thrownValue,
				script.Name
			)).to.be.ok()

			store:destruct()
		end)

	end)

	describe("getState", function()
		it("should get the current state", function()
			local store = Store.new(function(state, action)
				return "foo"
			end)

			local state = store:getState()

			expect(state).to.equal("foo")

			store:destruct()
		end)

		it("should throw errors if triggered during dispatches", function()
			local store
			store = Store.new(function(state, action)
				if action.type ~= "@@INIT" then
					store:getState()
				end
			end)

			expect(function()
				store:dispatch({ type = "SomeAction" })
			end).to.throw()

			store:destruct()
		end)
	end)

	describe("dispatch", function()
		it("should be sent through the reducer", function()
			local store = Store.new(function(state, action)
				state = state or "foo"

				if action.type == "act" then
					return "bar"
				end

				return state
			end)

			expect(store).to.be.ok()
			expect(store:getState()).to.equal("foo")

			store:dispatch({
				type = "act",
			})

			store:flush()

			expect(store:getState()).to.equal("bar")

			store:destruct()
		end)

		it("should trigger the changed event after a flush", function()
			local store = Store.new(function(state, action)
				state = state or 0

				if action.type == "increment" then
					return state + 1
				end

				return state
			end)

			local callCount = 0

			store.changed:connect(function(state, oldState)
				expect(oldState).to.equal(0)
				expect(state).to.equal(1)

				callCount = callCount + 1
			end)

			store:dispatch({
				type = "increment",
			})

			store:flush()

			expect(callCount).to.equal(1)

			store:destruct()
		end)

		it("should handle actions dispatched within the changed event", function()
			local store = Store.new(function(state, action)
				state = state or {
					value = 0,
				}

				if action.type == "increment" then
					return {
						value = state.value + 1,
					}
				elseif action.type == "decrement" then
					return {
						value = state.value - 1,
					}
				end

				return state
			end)

			local changeCount = 0

			store.changed:connect(function(state, oldState)
				expect(state).never.to.equal(oldState)

				if state.value > 0 then
					store:dispatch({
						type = "decrement",
					})
				end

				changeCount = changeCount + 1
			end)

			store:dispatch({
				type = "increment",
			})
			store:flush()
			store:flush()

			expect(changeCount).to.equal(2)

			store:destruct()
		end)

		it("should prevent yielding from changed handler", function()
			local reportedErrorMessage, reportedErrorError
			local mockErrorReporter = {
				reportUpdateError = function(_, _, _, errorResult)
					reportedErrorMessage = errorResult.message
					reportedErrorError = errorResult.thrownValue
				end,
				reportReducerError = function()
					-- noop
				end,
			}
			local preCount = 0
			local postCount = 0

			local store = Store.new(function(state, action)
				state = state or 0
				return state + 1
			end, nil, nil, mockErrorReporter)

			store.changed:connect(function(state, oldState)
				preCount = preCount + 1
				wait()
				postCount = postCount + 1
			end)

			store:dispatch({
				type = "increment",
			})

			store:flush()

			expect(preCount).to.equal(1)
			expect(postCount).to.equal(0)

			expect(reportedErrorMessage).to.equal("Caught error flushing store updates")
			-- We want to verify that this is a stacktrace without caring too
			-- much about the format, so we look for the stack frame associated
			-- with this test file
			expect(string.find(reportedErrorError, script.Name)).to.be.ok()
			-- In vanilla lua, we get this message:
			--   "attempt to yield across metamethod/C-call boundary"
			-- In luau, we should end up wrapping our own NoYield message:
			--   "Attempted to yield inside changed event!"
			-- For convenience's sake, we just look for the common substring
			local caughtErrorSubstring = "to yield"
			expect(string.find(reportedErrorError, caughtErrorSubstring)).to.be.ok()

			store:destruct()
		end)

		it("should throw if an action is dispatched without a type field", function()
			local store = Store.new(function(state, action)
				return state
			end)

			expect(function()
				store:dispatch({})
			end).to.throw()

			store:destruct()
		end)

		it("should throw if the action is not a function or table", function()
			local store = Store.new(function(state, action)
				return state
			end)

			expect(function()
				store:dispatch(1)
			end).to.throw()

			store:destruct()
		end)

		it("should report an error if the listeners error when flushing", function()
			local caughtPrevState, caughtState, caughtActionLog, caughtErrorResult
			local mockErrorReporter = {
				reportReducerError = function()
					-- no op
				end,
				reportUpdateError = function(prevState, state, actionLog, errorResult)
					caughtPrevState = prevState
					caughtState = state
					caughtActionLog = actionLog
					caughtErrorResult = errorResult
				end
			}

			local reducer = function(state, action)
				if action.type == "Increment" then
					return {
						Value = state.Value + action.amount
					}
				end
				return state
			end
			local store = Store.new(reducer, {
				Value = 1,
			}, nil, mockErrorReporter)

			local innerErrorMessage = "Z4PH0D"
			store.changed:connect(function(state, prevState)
				if state.Value == 15 then
					error(innerErrorMessage)
				end
			end)

			local actions = {
				{type = "Increment", amount = 1},
				{type = "Increment", amount = 3},
				{type = "Increment", amount = 10},
			}
			for _, action in ipairs(actions) do
				store:dispatch(action)
			end
			store:flush()

			expect(caughtErrorResult.message).to.equal("Caught error flushing store updates")
			-- We want to verify that this is a stacktrace without caring too
			-- much about the format, so we look for the stack frame associated
			-- with this test file
			expect(string.find(caughtErrorResult.thrownValue, script.Name)).to.be.ok()

			expect(caughtActionLog[1]).to.equal(actions[1])
			expect(caughtActionLog[2]).to.equal(actions[2])
			expect(caughtActionLog[3]).to.equal(actions[3])

			-- This is before any of the actions were processed; the flush will
			-- apply the new state from all three actions
			expect(caughtPrevState.Value).to.equal(1)
			expect(caughtState.Value).to.equal(15)

			store:destruct()
		end)

		it("should throw errors if dispatching while a dispatch is already happening", function()
			local store
			store = Store.new(function(state, action)
				if action.type == "SomeAction" then
					store:dispatch({ type = "MidDispatchAction" })
				end
			end)

			expect(function()
				store:dispatch({ type = "SomeAction" })
			end).to.throw()

			store:destruct()
		end)
	end)

	describe("flush", function()
		it("should not fire a changed event if there were no dispatches", function()
			local store = Store.new(function()
			end)

			local count = 0
			store.changed:connect(function()
				count = count + 1
			end)

			store:flush()

			expect(count).to.equal(0)

			store:dispatch({
				type = "increment",
			})
			store:flush()

			expect(count).to.equal(1)

			store:flush()

			expect(count).to.equal(1)

			store:destruct()
		end)
	end)
end
