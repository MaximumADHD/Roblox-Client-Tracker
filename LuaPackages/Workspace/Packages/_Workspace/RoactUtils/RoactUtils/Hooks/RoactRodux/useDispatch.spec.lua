-- upstream: https://github.com/reduxjs/react-redux/blob/a3503c1402cd5b752d9b642dce54d05327ccf3b4/test/hooks/useDispatch.spec.tsx

return function()
	local CorePackages = game:GetService("CorePackages")
	local Rodux = require(CorePackages.Rodux)

	local renderHookWithStore = require(script.Parent.renderHookWithStore)
	local useDispatch = require(script.Parent.useDispatch)

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	type State = {
		count: number
	}
	local function reducer(state: State, _action): State
		return {
			count = state.count + 1,
		}
	end

	local initialState: State = {
		count = -1
	}

	local function createStore(reducer, initialState)
		return Rodux.Store.new(reducer, initialState, { Rodux.thunkMiddleware })
	end

	describe('useDispatch', function()
		it('returns the dispatch function from context', function()
			local store = createStore(reducer, initialState)
			local helper = renderHookWithStore(store, function()
				return useDispatch()
			end)

			local result = helper.result.current
			expect(typeof(result)).toBe("function")
			helper.cleanup()
		end)

		it('throws if component is not wrapped in provider', function()
			expect(function()
				renderHookWithStore(nil, function()
					return useDispatch()
				end)

			end).toThrow()
		end)
	end)
end
