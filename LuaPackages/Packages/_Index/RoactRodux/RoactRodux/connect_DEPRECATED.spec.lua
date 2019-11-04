return function()
	local Roact = require(script.Parent.Parent.Roact)
	local Rodux = require(script.Parent.Parent.Rodux)

	local StoreProvider = require(script.Parent.StoreProvider)
	local Logging = require(script.Parent.Logging)

	local connect_DEPRECATED = require(script.Parent.connect_DEPRECATED)

	local function incrementReducer(state, action)
		state = state or 0

		if action.type == "increment" then
			return state + 1
		end

		return state
	end

	it("should warn when called", function()
		local function SomeComponent(props)
			return nil
		end

		local logInfo = Logging.capture(function()
			connect_DEPRECATED(function(store)
				return {}
			end)(SomeComponent)
		end)

		expect(#logInfo.warnings).to.equal(1)
		expect(logInfo.warnings[1]:find("deprecated")).to.be.ok()
		expect(logInfo.warnings[1]:find("connect_DEPRECATED.spec")).to.be.ok()
	end)

	it("should throw if not passed a component", function()
		local selector = function(store)
			return {}
		end

		expect(function()
			Logging.capture(function()
				connect_DEPRECATED(selector)(nil)
			end)
		end).to.throw()
	end)

	it("should successfully connect when mounted under a StoreProvider", function()
		local store = Rodux.Store.new(incrementReducer)

		local function SomeComponent(props)
			return nil
		end

		local ConnectedSomeComponent
		Logging.capture(function()
			ConnectedSomeComponent = connect_DEPRECATED(function(store)
				return {}
			end)(SomeComponent)
		end)

		local tree = Roact.createElement(StoreProvider, {
			store = store,
		}, {
			Child = Roact.createElement(ConnectedSomeComponent),
		})

		local handle = Roact.mount(tree)

		expect(handle).to.be.ok()
	end)

	it("should fail to mount without a StoreProvider", function()
		local function SomeComponent(props)
			return nil
		end

		local ConnectedSomeComponent
		Logging.capture(function()
			ConnectedSomeComponent = connect_DEPRECATED(function(store)
				return {}
			end)(SomeComponent)
		end)

		local tree = Roact.createElement(ConnectedSomeComponent)

		expect(function()
			Roact.mount(tree)
		end).to.throw()
	end)

	it("should trigger renders on store changes only with shallow differences", function()
		local callCount = 0

		local store = Rodux.Store.new(incrementReducer)

		local function SomeComponent(props)
			callCount = callCount + 1

			return nil
		end

		local ConnectedSomeComponent
		Logging.capture(function()
			ConnectedSomeComponent = connect_DEPRECATED(function(store)
				return {
					value = store:getState()
				}
			end)(SomeComponent)
		end)

		local tree = Roact.createElement(StoreProvider, {
			store = store,
		}, {
			Child = Roact.createElement(ConnectedSomeComponent),
		})

		Roact.mount(tree)

		-- Our component should render initially
		expect(store:getState()).to.equal(0)
		expect(callCount).to.equal(1)

		store:dispatch({
			type = "increment",
		})

		store:flush()

		-- Our component should re-render, state is different.
		expect(store:getState()).to.equal(1)
		expect(callCount).to.equal(2)

		store:dispatch({
			type = "SOME_UNHANDLED_ACTION",
		})

		store:flush()

		-- Our component should not re-render, state is the same!
		expect(store:getState()).to.equal(1)
		expect(callCount).to.equal(2)
	end)
end