return function()
	local Rodux = require(script.Parent.Rodux)
	local Store = Rodux.Store

	describe("new", function()
		it("should instantiate with a reducer", function()
			local store = Store.new(function(state, action)
				return "hello, world"
			end)

			expect(store).to.be.ok()
			expect(store:GetState()).to.equal("hello, world")

			store:Destruct()
		end)

		it("should instantiate with a reducer and an initial state", function()
			local store = Store.new(function(state, action)
				return state
			end, "initial state")

			expect(store).to.be.ok()
			expect(store:GetState()).to.equal("initial state")

			store:Destruct()
		end)
	end)

	describe("GetState", function()
		it("should get the current state", function()
			local store = Store.new(function(state, action)
				return "foo"
			end)

			local state = store:GetState()

			expect(state).to.equal("foo")

			store:Destruct()
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
			expect(store:GetState()).to.equal("foo")

			store:Dispatch({
				type = "act"
			})

			store:Flush()

			expect(store:GetState()).to.equal("bar")

			store:Destruct()
		end)

		it("should call thunks passed for reduction", function()
			local store = Store.new(function(state, action)
			end)

			local callCount = 0

			local function thunk(passedStore)
				expect(passedStore).to.equal(store)
				callCount = callCount + 1
			end

			store:Dispatch(thunk)

			expect(callCount).to.equal(1)

			store:Destruct()
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

			store.Changed:Connect(function(state, oldState)
				expect(oldState).to.equal(0)
				expect(state).to.equal(1)

				callCount = callCount + 1
			end)

			store:Dispatch({
				type = "increment"
			})

			store:Flush()

			expect(callCount).to.equal(1)
		end)

		it("should handle actions dispatched within the changed event", function()
			local store = Store.new(function(state, action)
				state = state or {
					value = 0
				}

				if action == "increment" then
					return {
						value = state.value + 1
					}
				elseif action == "decrement" then
					return {
						value = state.value - 1
					}
				end

				return state
			end)

			local changeCount = 0

			store.Changed:Connect(function(state, oldState)
				expect(state).never.to.equal(oldState)

				if state.value > 0 then
					store:Dispatch("decrement")
				end

				changeCount = changeCount + 1
			end)

			store:Dispatch("increment")
			store:Flush()
			store:Flush()

			expect(changeCount).to.equal(2)

			store:Destruct()
		end)

		it("should prevent yielding from Changed handler", function()
			local preCount = 0
			local postCount = 0

			local store = Store.new(function(state, action)
				state = state or 0
				return state + 1
			end)

			store.Changed:Connect(function(state, oldState)
				preCount = preCount + 1
				wait()
				postCount = postCount + 1
			end)

			store:Dispatch("increment")

			expect(function()
				store:Flush()
			end).to.throw()

			store:Destruct()

			expect(preCount).to.equal(1)
			expect(postCount).to.equal(0)
		end)
	end)
end