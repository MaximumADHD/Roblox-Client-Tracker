return function()
	local connect2 = require(script.Parent.connect2)

	local StoreProvider = require(script.Parent.StoreProvider)

	local Roact = require(script.Parent.Parent.Roact)
	local Rodux = require(script.Parent.Parent.Rodux)

	local function noop()
		return nil
	end

	local function countReducer(state, action)
		state = state or 0

		if action.type == "increment" then
			return state + 1
		end

		return state
	end

	local reducer = Rodux.combineReducers({
		count = countReducer,
	})

	describe("Argument validation", function()
		it("should accept no arguments", function()
			connect2()
		end)

		it("should accept one function", function()
			connect2(noop)
		end)

		it("should accept two functions", function()
			connect2(noop, noop)
		end)

		it("should accept only the second function", function()
			connect2(nil, function() end)
		end)

		it("should throw if not passed a component", function()
			local selector = function(store)
				return {}
			end

			expect(function()
				connect2(selector)(nil)
			end).to.throw()
		end)
	end)

	it("should connect when mounted under a StoreProvider", function()
		local capturedProps
		local store = Rodux.Store.new(reducer)

		local function SomeComponent(props)
			capturedProps = props
			return nil
		end

		local ConnectedSomeComponent = connect2(
			function(state)
				return {
					count = state.count,
				}
			end,
			function(dispatch)
				return {
					foo = function()
						dispatch({
							type = "increment"
						})
					end,
				}
			end
		)(SomeComponent)

		local tree = Roact.createElement(StoreProvider, {
			store = store,
		}, {
			Child = Roact.createElement(ConnectedSomeComponent),
		})

		local handle = Roact.reify(tree)

		expect(capturedProps.foo).to.be.a("function")
		expect(capturedProps.count).to.equal(0)

		local lastProps = capturedProps
		local lastFoo = lastProps.foo

		lastFoo()
		store:flush()

		expect(store:getState().count).to.equal(1)

		expect(capturedProps.foo).to.equal(lastFoo)
		expect(capturedProps.count).to.equal(1)

		expect(handle).to.be.ok()
	end)
end