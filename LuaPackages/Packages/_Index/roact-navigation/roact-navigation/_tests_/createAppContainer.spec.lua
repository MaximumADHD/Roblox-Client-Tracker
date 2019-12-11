return function()
	local Roact = require(script.Parent.Parent.Parent.Roact)
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

	it("should connect and disconnect from backActionSignal", function()
		local TestNavigator = createSwitchNavigator({
			routes = {
				Foo = function() end,
			},
			initialRouteName = "Foo",
		})

		local backHandler = nil
		local backSignal = {
			connect = function(handler)
				backHandler = handler
				return {
					disconnect = function()
						backHandler = nil
					end
				}
			end
		}

		local element = Roact.createElement(createAppContainer(TestNavigator), {
			backActionSignal = backSignal,
		})

		local instance = Roact.mount(element)
		expect(backHandler).to.never.equal(nil)
		Roact.unmount(instance)
		expect(backHandler).to.equal(nil)
	end)
end

