-- upstream: https://github.com/reduxjs/react-redux/blob/a3503c1402cd5b752d9b642dce54d05327ccf3b4/test/hooks/useSelector.spec.tsx

-- TODO: Port the remainder of tests from upstream ReactRedux

return function()
	local CorePackages = game:GetService("CorePackages")
	local Rodux = require(CorePackages.Rodux)
	local React = require(CorePackages.Packages.React)
	local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
	local act = ReactRoblox.act

	local renderHookWithStore = require(script.Parent.renderHookWithStore)
	local useSelector = require(script.Parent.useSelector)

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect
	local jest = JestGlobals.jest

	-- On the initial double-render, the selector will be invoked again
	-- because the effect to update the last selector has not yet run
	local extraSelectorCalls = if _G.__DEV__ then 1 else 0

	local function createStore(reducer, initialState)
		return Rodux.Store.new(reducer, initialState, { Rodux.thunkMiddleware })
	end

	describe("useSelector", function()
		type NormalStateType = {
			count: number,
		}
		local normalStore
		local renderedItems: { any } = {}
		local renderCount = 0

		type NormalState = {
			count: number,
		}

		local function addRenderedItem(value)
			renderCount += 1
			if _G.__DEV__ then
				if renderCount % 2 == 1 then
					-- Only insert value on first of duplicate renders
					table.insert(renderedItems, value)
				else
					-- For second render, ensure value has not changed
					expect(renderedItems[#renderedItems]).toBe(value)
				end
			end
		end

		beforeEach(function()
			local function reducer(state: NormalState, _action): NormalState
				return {
					count = state.count + 1,
				}
			end
			local initialState: NormalState = {
				count = -1,
			}
			normalStore = createStore(reducer, initialState)
			renderedItems = {}
			renderCount = 0
		end)

		describe("core subscription behavior", function()
			it("selects the state on initial render", function()
				local helper = renderHookWithStore(normalStore, function()
					return useSelector(function(state)
						return state.count
					end)
				end)
				local result = helper.result

				expect(result.current).toEqual(0)
				helper.cleanup()
			end)

			it("selects the state and renders the component when the store updates", function()
				local selector = jest.fn(function(state)
					return state.count
				end)

				local helper = renderHookWithStore(normalStore, function()
					return useSelector(selector)
				end)
				local result = helper.result

				expect(result.current).toEqual(0)
				expect(selector).toBeCalledTimes(1 + extraSelectorCalls)

				act(function()
					normalStore:dispatch({ type = "" })
					normalStore:flush()
				end)

				expect(result.current).toEqual(1)
				expect(selector).toBeCalledTimes(2 + extraSelectorCalls)
				helper.cleanup()
			end)
		end)

		describe("lifecycle interactions", function()
			it("always uses the latest state", function()
				local store = createStore(function(c: number)
					return c + 1
				end, -1)

				local Comp = function()
					local selector = React.useCallback(function(c: number)
						return c + 1
					end, {})
					local value = useSelector(selector)
					addRenderedItem(value)
					return React.createElement("Frame")
				end

				local helper = renderHookWithStore(store, Comp)

				expect(renderedItems).toEqual({ 1 })

				act(function()
					store:dispatch({ type = "" })
					store:flush()
				end)

				expect(renderedItems).toEqual({ 1, 2 })
				helper.cleanup()
			end)
		end)

		it("notices store updates between render and store subscription effect", function()
			local Comp = function()
				local count = useSelector(function(s)
					return s.count
				end)
				table.insert(renderedItems, count)

				-- I don't know a better way to trigger a store update before the
				-- store subscription effect happens
				if count == 0 then
					normalStore:dispatch({ type = "" })
				end

				return nil
			end

			local helper = renderHookWithStore(normalStore, Comp)
			expect(renderedItems).toEqual({ 0, 1 })
			helper.cleanup()
		end)
	end)
end
