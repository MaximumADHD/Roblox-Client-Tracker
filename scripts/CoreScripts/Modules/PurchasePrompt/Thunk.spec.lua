return function()
	local Root = script.Parent
	local CorePackages = game:GetService("CorePackages")
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

			expect(store:getState().count).to.equal(1)
			expect(store:getState().lastAction.type).to.equal("@@INIT")

			local thunk = Thunk.new("Foo", {}, function()
				-- do nothing in particular
			end)
			store:dispatch(thunk)

			expect(store:getState().count).to.equal(1)
			expect(store:getState().lastAction.type).to.equal("@@INIT")

			store:dispatch({ type = "NewAction" })

			expect(store:getState().count).to.equal(2)
			expect(store:getState().lastAction.type).to.equal("NewAction")
		end)

		it("should invoke the provided functions of intercepted thunks", function()
			local store = Rodux.Store.new(lastActionReducer, {}, { Thunk.middleware() })
			local thunkInvocations = 0

			local thunk = Thunk.new("Foo", {}, function()
				thunkInvocations = thunkInvocations + 1
			end)

			expect(thunkInvocations).to.equal(0)

			store:dispatch(thunk)
			expect(thunkInvocations).to.equal(1)

			store:dispatch(thunk)
			expect(thunkInvocations).to.equal(2)
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
			expect(servicesFound[fooServiceKey]).to.equal(FooService)
			expect(servicesFound[barServiceKey]).never.to.be.ok()
		end)

		it("should throw if thunks requests services that are not provided", function()
			local store = Rodux.Store.new(lastActionReducer, {}, { Thunk.middleware() })
			local thunk = Thunk.new("Foo", { "fakeService" }, function()
				-- do nothing in particular
			end)

			expect(function() store:dispatch(thunk) end).to.throw()
		end)
	end)

	describe("Thunk constructor", function()
		it("should validate arguments", function()
			local noop = function() end

			expect(Thunk.new).to.throw()
			expect(function() Thunk.new(10, nil, noop) end).to.throw()
			expect(function() Thunk.new("Foo", 10, noop) end).to.throw()
			expect(function() Thunk.new("Foo", nil, 10) end).to.throw()
		end)

		it("should produce a callable table", function()
			local thunk = Thunk.new("Foo", {}, function()
				-- do nothing in particular
			end)

			expect(type(thunk)).to.equal("table")
			expect(function() thunk() end).never.to.throw()
		end)
	end)
end
