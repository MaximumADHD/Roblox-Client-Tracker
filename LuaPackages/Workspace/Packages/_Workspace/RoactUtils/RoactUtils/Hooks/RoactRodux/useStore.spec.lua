-- upstream: https://github.com/reduxjs/react-redux/blob/a3503c1402cd5b752d9b642dce54d05327ccf3b4/test/hooks/useReduxContext.spec.tsx

return function()
	local CorePackages = game:GetService("CorePackages")
	local Rodux = require(CorePackages.Rodux)

	local renderHookWithStore = require(script.Parent.renderHookWithStore)
	local useStore = require(script.Parent.useStore)

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	type State = {
		count: number,
	}
	local function reducer(state: State, _action): State
		return {
			count = state.count + 1,
		}
	end

	local initialState: State = {
		count = -1,
	}

	local function createStore(reducer, initialState)
		return Rodux.Store.new(reducer, initialState, { Rodux.thunkMiddleware })
	end

	describe("useStore", function()
		it("returns the Rodux store from context", function()
			local store = createStore(reducer, initialState)
			local helper = renderHookWithStore(store, function()
				return useStore()
			end)

			local result = helper.result.current
			expect(result).toBe(store)
			helper.cleanup()
		end)

		it("throws if component is not wrapped in provider", function()
			expect(function()
				renderHookWithStore(nil, function()
					return useStore()
				end)
			end).toThrow()
		end)
	end)
end
