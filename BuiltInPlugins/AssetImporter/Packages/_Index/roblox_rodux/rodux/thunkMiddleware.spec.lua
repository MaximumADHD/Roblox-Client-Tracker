return function()
	local Store = require(script.Parent.Store)
	local thunkMiddleware = require(script.Parent.thunkMiddleware)

	it("should dispatch thunks", function()
		local function reducer(state, action)
			return state
		end

		local store = Store.new(reducer, {}, { thunkMiddleware })
		local thunkCount = 0

		local function thunk(_store)
			thunkCount = thunkCount + 1
		end

		store:dispatch(thunk)

		expect(thunkCount).to.equal(1)
	end)

	it("should allow normal actions to pass through", function()
		local reducerCount = 0

		local function reducer(state, action)
			reducerCount = reducerCount + 1
			return state
		end

		local store = Store.new(reducer, {}, { thunkMiddleware })

		store:dispatch({
			type = "test",
		})

		-- Reducer will be invoked twice:
		-- Once when creating the store (@@INIT action)
		-- Once when the test action is dispatched
		expect(reducerCount).to.equal(2)
	end)

	it("should return the value from the thunk", function()
		local function reducer(state, action)
			return state
		end

		local store = Store.new(reducer, {}, { thunkMiddleware })
		local thunkValue = "test"

		local function thunk(_store)
			return thunkValue
		end

		local result = store:dispatch(thunk)

		expect(result).to.equal(thunkValue)
	end)

	it("should report errors captured in thunks via the provided error reporter", function()
		local caughtState, caughtAction, caughtErrorResult
		local errorReporter = {
			reportReducerError = function(state, action, errorResult)
				caughtState = state
				caughtAction = action
				caughtErrorResult = errorResult
			end
		}

		local function reducer(state, action)
			return state
		end

		local store = Store.new(reducer, {
			Value = 1
		}, { thunkMiddleware }, errorReporter)

		local innerErrorMessage = "thunk failed"
		local function thunk(_store)
			error(innerErrorMessage)
		end

		store:dispatch(thunk)

		expect(caughtState.Value).to.equal(1)
		expect(caughtAction).to.equal(thunk)
		expect(caughtErrorResult.message).to.equal("Caught error in thunk")
	end)

	it("should recover and continue to update after a thunk errors", function()
		local caughtErrorResult
		local errorReporter = {
			reportReducerError = function(_state, _action, errorResult)
				caughtErrorResult = errorResult
			end
		}

		local function reducer(state, action)
			return state
		end

		local store = Store.new(reducer, {
			Value = 1
		}, { thunkMiddleware }, errorReporter)

		local innerErrorMessage = "thunk failed"
		local function errorThunk(_store)
			error(innerErrorMessage)
		end
		local ranSafeThunk = false
		local function safeThunk(_store)
			ranSafeThunk = true
		end

		store:dispatch(errorThunk)
		expect(caughtErrorResult.message).to.equal("Caught error in thunk")

		store:dispatch(safeThunk)
		expect(ranSafeThunk).to.equal(true)
	end)
end
