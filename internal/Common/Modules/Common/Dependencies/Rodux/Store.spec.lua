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
			local middlewareInvokeCount = 0

			local function reducer(state, action)
				return state
			end

			local function testMiddleware(next)
				return function(store, action)
					middlewareInvokeCount = middlewareInvokeCount + 1
					next(store, action)
				end
			end

			local store = Store.new(reducer, "initial state", { testMiddleware })

			store:dispatch({
				type = "test",
			})

			expect(middlewareInvokeCount).to.equal(1)

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
	end)

	describe("GetState", function()
		it("should get the current state", function()
			local store = Store.new(function(state, action)
				return "foo"
			end)

			local state = store:getState()

			expect(state).to.equal("foo")

			store:destruct()
		end)
	end)

	describe("Dispatch", function()
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

		it("should trigger the Changed event after a flush", function()
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

		it("should prevent yielding from Changed handler", function()
			local preCount = 0
			local postCount = 0

			local store = Store.new(function(state, action)
				state = state or 0
				return state + 1
			end)

			store.changed:connect(function(state, oldState)
				preCount = preCount + 1
				wait()
				postCount = postCount + 1
			end)

			store:dispatch({
				type = "increment",
			})

			expect(function()
				store:flush()
			end).to.throw()

			expect(preCount).to.equal(1)
			expect(postCount).to.equal(0)

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
	end)

	describe("Flush", function()
		it("should not fire a Changed event if there were no dispatches", function()
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
