return function()
	local Root = script.Parent
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect
	local jest = JestGlobals.jest

	local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)

	local Rodux = PurchasePromptDeps.Rodux

	local Thunk = require(script.Parent.Thunk)

	describe("Thunk middleware", function()
		local function lastActionReducer(state, action)
			return {
				count = (state.count or 0) + 1,
				lastAction = action,
			}
		end

		it("should only intercept thunk objects", function()
			local store = Rodux.Store.new(lastActionReducer, {}, { Thunk.middleware() })

			expect(store:getState()).toMatchObject({
				count = 1,
				lastAction = {
					type = "@@INIT",
				},
			})

			local thunk = Thunk.new("Foo", {}, function()
				-- do nothing in particular
			end)
			store:dispatch(thunk)

			expect(store:getState()).toMatchObject({
				count = 1,
				lastAction = {
					type = "@@INIT",
				},
			})

			store:dispatch({ type = "NewAction" })

			expect(store:getState()).toMatchObject({
				count = 2,
				lastAction = {
					type = "NewAction",
				},
			})
		end)

		it("should invoke the provided functions of intercepted thunks", function()
			local store = Rodux.Store.new(lastActionReducer, {}, { Thunk.middleware() })
			local mock, mockFn = jest.fn()

			local thunk = Thunk.new("Foo", {}, mockFn)

			expect(mock).never.toHaveBeenCalled()

			store:dispatch(thunk)
			expect(mock).toHaveBeenCalledTimes(1)

			store:dispatch(thunk)
			expect(mock).toHaveBeenCalledTimes(2)
		end)

		it("should provide only the requested services to the thunk on invocation", function()
			local fooServiceKey = newproxy(false)
			local barServiceKey = newproxy(false)
			local FooService = {}
			local BarService = {}

			local store = Rodux.Store.new(lastActionReducer, {}, {
				Thunk.middleware({
					[fooServiceKey] = FooService,
					[barServiceKey] = BarService,
				})
			})

			local servicesFound = nil
			local thunk = Thunk.new("Foo", { fooServiceKey }, function(store, services)
				servicesFound = services
			end)

			store:dispatch(thunk)
			expect(servicesFound[fooServiceKey]).toBe(FooService)
			expect(servicesFound[barServiceKey]).toBeNil()
		end)

		it("should throw if thunks requests services that are not provided", function()
			local store = Rodux.Store.new(lastActionReducer, {}, { Thunk.middleware() })
			local thunk = Thunk.new("Foo", { "fakeService" }, function()
				-- do nothing in particular
			end)

			expect(function() store:dispatch(thunk) end).toThrow()
		end)
	end)

	describe("Thunk constructor", function()
		it("should validate arguments", function()
			local noop = function() end

			expect(Thunk.new).toThrow()
			expect(function() Thunk.new(10, nil, noop) end).toThrow()
			expect(function() Thunk.new("Foo", 10, noop) end).toThrow()
			expect(function() Thunk.new("Foo", nil, 10) end).toThrow()
		end)

		it("should produce a callable table", function()
			local thunk = Thunk.new("Foo", {}, function()
				-- do nothing in particular
			end)

			expect(thunk).toEqual(expect.any("table"))
			expect(function() thunk() end).never.toThrow()
		end)
	end)
end
