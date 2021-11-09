return function()
	local connect = require(script.Parent.connect)

	local StoreProvider = require(script.Parent.StoreProvider)

	local Roact = require(script.Parent.Parent.Roact)
	local Rodux = require(script.Parent.Parent.Rodux)

	local function noop()
		return nil
	end

	local function NoopComponent()
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
			connect()
		end)

		it("should accept one function", function()
			connect(noop)
		end)

		it("should accept two functions", function()
			connect(noop, noop)
		end)

		it("should accept only the second function", function()
			connect(nil, function() end)
		end)

		it("should accept one table of action creators", function()
			connect(nil, {
				foo = function() end,
			})
		end)

		it("should throw if not passed a component", function()
			local selector = function(store)
				return {}
			end

			expect(function()
				connect(selector)(nil)
			end).to.throw()
		end)
	end)

	it("should throw if not mounted under a StoreProvider", function()
		local ConnectedSomeComponent = connect()(NoopComponent)

		expect(function()
			Roact.mount(Roact.createElement(ConnectedSomeComponent))
		end).to.throw()
	end)

	it("should accept a higher-order function mapStateToProps", function()
		local function mapStateToProps()
			return function(state)
				return {
					count = state.count,
				}
			end
		end

		local ConnectedSomeComponent = connect(mapStateToProps)(NoopComponent)

		local store = Rodux.Store.new(reducer)
		local tree = Roact.createElement(StoreProvider, {
			store = store,
		}, {
			someComponent = Roact.createElement(ConnectedSomeComponent),
		})

		local handle = Roact.mount(tree)

		Roact.unmount(handle)
	end)

	it("should not accept a higher-order mapStateToProps that returns a non-table value", function()
		local function mapStateToProps()
			return function(state)
				return "nope"
			end
		end

		local ConnectedSomeComponent = connect(mapStateToProps)(NoopComponent)

		local store = Rodux.Store.new(reducer)
		local tree = Roact.createElement(StoreProvider, {
			store = store,
		}, {
			someComponent = Roact.createElement(ConnectedSomeComponent),
		})

		expect(function()
			Roact.mount(tree)
		end).to.throw()
	end)

	it("should not accept a mapStateToProps that returns a non-table value", function()
		local function mapStateToProps()
			return "nah"
		end

		local ConnectedSomeComponent = connect(mapStateToProps)(NoopComponent)

		local store = Rodux.Store.new(reducer)
		local tree = Roact.createElement(StoreProvider, {
			store = store,
		}, {
			someComponent = Roact.createElement(ConnectedSomeComponent),
		})

		expect(function()
			Roact.mount(tree)
		end).to.throw()
	end)

	it("should abort renders when mapStateToProps returns the same data", function()
		local function mapStateToProps(state)
			return {
				count = state.count,
			}
		end

		local renderCount = 0
		local function SomeComponent(props)
			renderCount = renderCount + 1
		end

		local ConnectedSomeComponent = connect(mapStateToProps)(SomeComponent)

		local store = Rodux.Store.new(reducer)
		local tree = Roact.createElement(StoreProvider, {
			store = store,
		}, {
			someComponent = Roact.createElement(ConnectedSomeComponent),
		})

		local handle = Roact.mount(tree)

		expect(renderCount).to.equal(1)

		store:dispatch({ type = "an unknown action" })
		store:flush()

		expect(renderCount).to.equal(1)

		store:dispatch({ type = "increment" })
		store:flush()

		expect(renderCount).to.equal(2)

		Roact.unmount(handle)
	end)

	it("should only call mapDispatchToProps once and never re-render if no mapStateToProps was passed", function()
		local dispatchCount = 0
		local mapDispatchToProps = function(dispatch)
			dispatchCount = dispatchCount + 1

			return {
				increment = function()
					return dispatch({ type = "increment" })
				end,
			}
		end

		local renderCount = 0
		local function SomeComponent(props)
			renderCount = renderCount + 1
		end

		local ConnectedSomeComponent = connect(nil, mapDispatchToProps)(SomeComponent)

		local store = Rodux.Store.new(reducer)
		local tree = Roact.createElement(StoreProvider, {
			store = store,
		}, {
			someComponent = Roact.createElement(ConnectedSomeComponent),
		})

		local handle = Roact.mount(tree)

		expect(dispatchCount).to.equal(1)
		expect(renderCount).to.equal(1)

		store:dispatch({ type = "an unknown action" })
		store:flush()

		expect(dispatchCount).to.equal(1)
		expect(renderCount).to.equal(1)

		store:dispatch({ type = "increment" })
		store:flush()

		expect(dispatchCount).to.equal(1)
		expect(renderCount).to.equal(1)

		Roact.unmount(handle)
	end)

	it("should dispatch the action using a table of action creators", function()
		local mapDispatchToProps = {
			increment = function()
				return {
					type = "increment",
				}
			end,
		}

		local function SomeComponent(props)
			props.increment()
		end

		local ConnectedSomeComponent = connect(nil, mapDispatchToProps)(SomeComponent)

		local store = Rodux.Store.new(reducer)
		local tree = Roact.createElement(StoreProvider, {
			store = store,
		}, {
			someComponent = Roact.createElement(ConnectedSomeComponent),
		})

		local handle = Roact.mount(tree)

		store.changed:connect(function(state)
			expect(state.count).to.equal(1)
		end)

		Roact.unmount(handle)
	end)

	it("should return result values from the dispatch passed to mapDispatchToProps", function()
		local function reducer()
			return 0
		end

		local function fiveThunk()
			return 5
		end

		local dispatch
		local function SomeComponent(props)
			dispatch = props.dispatch
		end

		local function mapDispatchToProps(dispatch)
			return {
				dispatch = dispatch,
			}
		end

		local ConnectedSomeComponent = connect(nil, mapDispatchToProps)(SomeComponent)

		-- We'll use the thunk middleware, as it should always return its result
		local store = Rodux.Store.new(reducer, nil, { Rodux.thunkMiddleware })
		local tree = Roact.createElement(StoreProvider, {
			store = store,
		}, {
			someComponent = Roact.createElement(ConnectedSomeComponent),
		})

		local handle = Roact.mount(tree)

		expect(dispatch).to.be.a("function")
		expect(dispatch(fiveThunk)).to.equal(5)

		Roact.unmount(handle)
	end)

	it("should render parent elements before children", function()
		local function mapStateToProps(state)
			return {
				count = state.count,
			}
		end

		local childWasRenderedFirst = false

		local function ChildComponent(props)
			if props.count > props.parentCount then
				childWasRenderedFirst = true
			end
		end

		local ConnectedChildComponent = connect(mapStateToProps)(ChildComponent)

		local function ParentComponent(props)
			return Roact.createElement(ConnectedChildComponent, {
				parentCount = props.count,
			})
		end

		local ConnectedParentComponent = connect(mapStateToProps)(ParentComponent)

		local store = Rodux.Store.new(reducer)
		local tree = Roact.createElement(StoreProvider, {
			store = store,
		}, {
			parent = Roact.createElement(ConnectedParentComponent),
		})

		local handle = Roact.mount(tree)

		store:dispatch({ type = "increment" })
		store:flush()

		store:dispatch({ type = "increment" })
		store:flush()

		Roact.unmount(handle)

		expect(childWasRenderedFirst).to.equal(false)
	end)

	it("should allow fields to be assigned on connected components", function()
		local function mapStateToProps(state)
			return {
				count = state.count,
			}
		end

		local ConnectedSomeComponent = connect(mapStateToProps)(NoopComponent)

		expect(function()
			ConnectedSomeComponent.SomeEnum = {
				Value = 1,
			}
		end).never.to.throw()

		expect(ConnectedSomeComponent.SomeEnum).to.be.ok()
		expect(ConnectedSomeComponent.SomeEnum.Value).to.equal(1)
	end)

	-- Issue https://github.com/Roblox/roact-rodux/issues/48
	it("should never pass the store and innerProps to `mapStateToProps`", function()
		local somePropValue = {}
		local lastMappedProps = nil
		local function mapStateToProps(state, props)
			lastMappedProps = props
			expect(props.store).to.equal(nil)
			expect(props.innerProps).to.equal(nil)
			expect(props.somePropName).to.equal(somePropValue)
			return {
				count = state.count,
			}
		end
		local ConnectedComponent = connect(mapStateToProps)(NoopComponent)

		local store = Rodux.Store.new(reducer)
		local tree = Roact.createElement(StoreProvider, {
			store = store,
		}, {
			parent = Roact.createElement(ConnectedComponent, {
				somePropName = somePropValue,
			}),
		})

		local handle = Roact.mount(tree)

		store:dispatch({ type = "increment" })
		store:flush()

		expect(lastMappedProps.store).to.equal(nil)
		expect(lastMappedProps.innerProps).to.equal(nil)
		expect(lastMappedProps.somePropName).to.equal(somePropValue)

		Roact.unmount(handle)
	end)
end
