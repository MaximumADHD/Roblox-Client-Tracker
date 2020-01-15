return function()
	local Roact = require(script.Parent.Parent.Parent.Roact)
	local NavigationActions = require(script.Parent.Parent.NavigationActions)
	local createAppContainer = require(script.Parent.Parent.createAppContainer)
	local createSwitchNavigator = require(script.Parent.Parent.navigators.createSwitchNavigator)

	it("should be a function", function()
		expect(type(createAppContainer)).to.equal("function")
	end)

	it("should return a valid component when mounting a switch navigator", function()
		local TestNavigator = createSwitchNavigator({
			routes = {
				Foo = function() end,
			},
			initialRouteName = "Foo",
		})

		local TestApp = createAppContainer(TestNavigator)
		local element = Roact.createElement(TestApp)
		local instance = Roact.mount(element)

		Roact.unmount(instance)
	end)

	it("should throw when navigator has both navigation and container props", function()
		local TestAppComponent = Roact.Component:extend("TestAppComponent")
		TestAppComponent.router = {}
		function TestAppComponent:render() end

		local element = Roact.createElement(createAppContainer(TestAppComponent), {
			navigation = {},
			somePropThatShouldNotBeHere = true,
		})

		local status, err = pcall(function()
			Roact.mount(element)
		end)

		expect(status).to.equal(false)
		expect(string.find(err, "This navigator has both 'navigation' and container props.")).to.never.equal(nil)
	end)

	it("should throw when not passed a table for AppComponent", function()
		local TestAppComponent = 5

		local status, err = pcall(function()
			createAppContainer(TestAppComponent)
		end)

		expect(status).to.equal(false)
		expect(string.find(err, "AppComponent must be a navigator or a stateful Roact " ..
			"component with a 'router' field")).to.never.equal(nil)
	end)

	it("should throw when passed a stateful component without router field", function()
		local TestAppComponent = Roact.Component:extend("TestAppComponent")

		local status, err = pcall(function()
			createAppContainer(TestAppComponent)
		end)

		expect(status).to.equal(false)
		expect(string.find(err, "AppComponent must be a navigator or a stateful Roact " ..
			"component with a 'router' field")).to.never.equal(nil)
	end)

	it("should accept actions from externalDispatchConnector", function()
		local TestNavigator = createSwitchNavigator({
			routes = {
				Foo = function() end,
			},
			initialRouteName = "Foo",
		})

		local registeredCallback = nil
		local externalDispatchConnector = function(rnCallback)
			registeredCallback = rnCallback
			return function()
				registeredCallback = nil
			end
		end

		local element = Roact.createElement(createAppContainer(TestNavigator), {
			externalDispatchConnector = externalDispatchConnector,
		})

		local instance = Roact.mount(element)
		expect(type(registeredCallback)).to.equal("function")

		-- Make sure it processes action
		local result = registeredCallback(NavigationActions.navigate({
			routeName = "Foo",
		}))
		expect(result).to.equal(true)

		local failResult = registeredCallback(NavigationActions.navigate({
			routeName = "Bar", -- should fail because not a valid route
		}))
		expect(failResult).to.equal(false)

		Roact.unmount(instance)
		expect(registeredCallback).to.equal(nil)
	end)
end

