return function()
	local Roact = require(script.Parent.Parent.Parent.Parent.Roact)
	local createNavigator = require(script.Parent.Parent.createNavigator)

	local testRouter = {
		getScreenOptions = function() return nil end,
	}

	it("should return a Roact component that exposes navigator fields", function()
		local testComponentMounted = nil
		local TestViewComponent = Roact.Component:extend("TestViewComponent")
		function TestViewComponent:render() end
		function TestViewComponent:didMount() testComponentMounted = true end
		function TestViewComponent:willUnmount() testComponentMounted = false end

		local testNavOptions = {}

		local navigator = createNavigator(TestViewComponent, testRouter, {
			navigationOptions = testNavOptions,
		})

		expect(navigator.render).to.be.a("function")
		expect(navigator.router).to.equal(testRouter)
		expect(navigator.navigationOptions).to.equal(testNavOptions)

		local testNavigation = {
			state = {
				routes = {
					{ routeName = "Foo", key = "Foo" },
				},
				index = 1
			},
			getChildNavigation = function() return nil end, -- stub
			addListener = function() end,
		}

		-- Try to mount it
		local instance = Roact.mount(Roact.createElement(navigator, {
			navigation = testNavigation
		}))

		expect(testComponentMounted).to.equal(true)
		Roact.unmount(instance)
		expect(testComponentMounted).to.equal(false)
	end)

	it("should throw when trying to mount without navigation prop", function()
		local TestViewComponent = function() end

		local navigator = createNavigator(TestViewComponent, testRouter, {
			navigationOptions = {}
		})

		expect(function()
			Roact.mount(Roact.createElement(navigator))
		end).to.throw()
	end)

	it("should throw when trying to mount without routes", function()
		local TestViewComponent = function() end

		local navigator = createNavigator(TestViewComponent, testRouter, {
			navigationOptions = {}
		})

		local testNavigation = {
			state = {
				index = 1
			},
			getChildNavigation = function() return nil end, -- stub
		}

		expect(function()
			Roact.mount(Roact.createElement(navigator, {
				navigation = testNavigation
			}))
		end).to.throw()
	end)
end
