local SocialReducerAdaptors = script:FindFirstAncestor("SocialReducerAdaptors")

local dependencies = require(SocialReducerAdaptors.dependencies)
local llama = dependencies.llama
local Rodux = dependencies.Rodux

local devDependencies = require(SocialReducerAdaptors.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local convertActions = require(script.Parent.convertActions)

describe("convertActions", function()
	local mockAction = jest.fn(function(state, action)
		return llama.Dictionary.join(state, action.payload)
	end)

	local baseReducer = Rodux.createReducer("A", {
		setFoo = mockAction,
	})

	local setFooAction = Rodux.makeActionCreator("setFoo", function(payload)
		return {
			payload = payload,
		}
	end)

	beforeEach(function()
		mockAction.mockClear()
	end)

	it("SHOULD return a function", function()
		expect(convertActions({}, {}, {})).toEqual(expect.any("function"))
	end)

	it("SHOULD return the original state", function(c)
		local convertedReducer = convertActions(baseReducer, {}, {})

		local newState = convertedReducer(nil, { type = "test" })

		expect(newState).toEqual({})
		expect(mockAction).never.toHaveBeenCalled()
	end)

	it("SHOULD use default state if none is passed in", function(c)
		local defaultState = { m = 10 }
		local convertedReducer = convertActions(baseReducer, {}, defaultState)

		local newState = convertedReducer(nil, { type = "test" })

		expect(mockAction).never.toHaveBeenCalled()
		expect(newState).toEqual(defaultState)
	end)

	it("SHOULD use the provided state over the default", function(c)
		local defaultState = { m = 10 }
		local convertedReducer = convertActions(baseReducer, {}, defaultState)

		local newState = convertedReducer("a", { type = "test" })

		expect(mockAction).never.toHaveBeenCalled()
		expect(newState).toEqual("a")
	end)

	it("SHOULD use adapted action", function(c)
		local newData = { a = 10 }
		local actionConverter = {
			test = function(action)
				return { setFooAction(newData) }
			end,
		}
		local convertedReducer = convertActions(baseReducer, actionConverter, {})

		local newState = convertedReducer(nil, { type = "test" })

		expect(mockAction).toHaveBeenCalledTimes(1)
		expect(newState).toEqual(newData)
	end)

	it("SHOULD be able to handle multiple actions being created", function(c)
		local newDataA, newDataB = { a = 10 }, { b = 10 }
		local defaultState = { a = 2, c = 12 }
		local actionConverter: convertActions.ActionsToConvert = {
			test = function()
				return { setFooAction(newDataA), setFooAction(newDataB) }
			end,
		}
		local convertedReducer = convertActions(baseReducer, actionConverter, defaultState)

		local newState = convertedReducer(nil, { type = "test" })

		expect(mockAction).toHaveBeenCalledTimes(2)
		expect(newState).toEqual({
			a = 10,
			b = 10,
			c = 12,
		})
	end)

	it("SHOULD still allow normal actions to work", function(c)
		local newDataA = { a = 10 }
		local actionConverter: convertActions.ActionsToConvert = {
			test = function()
				return {}
			end,
		}
		local convertedReducer = convertActions(baseReducer, actionConverter, {})

		local newState = convertedReducer({}, setFooAction(newDataA))

		expect(mockAction).toHaveBeenCalledTimes(1)
		expect(newState).toEqual(newDataA)
	end)

	it("SHOULD still work with multiple actionConverters normal actions to work", function(c)
		local newDataA = { a = 10 }
		local actionConverter: convertActions.ActionsToConvert = {
			test = function()
				return {} :: { convertActions.Action }
			end,
			another = function()
				return { setFooAction(newDataA) } :: { convertActions.Action }
			end,
		}
		local convertedReducer = convertActions(baseReducer, actionConverter, {})

		local newState = convertedReducer({}, { type = "another" })

		expect(mockAction).toHaveBeenCalledTimes(1)
		expect(newState).toEqual(newDataA)
	end)
end)
