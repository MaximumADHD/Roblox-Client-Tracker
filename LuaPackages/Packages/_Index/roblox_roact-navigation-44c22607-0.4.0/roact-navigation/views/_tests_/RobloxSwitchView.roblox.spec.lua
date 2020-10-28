return function()
	local Roact = require(script.Parent.Parent.Parent.Parent.Roact)
	local RobloxSwitchView = require(script.Parent.Parent.RobloxSwitchView)

	it("should mount and pass required props and context", function()
		local testScreenProps = {}
		local testNavigation = {
			state = {
				routes = {
					{ routeName = "Foo", key = "Foo" }
				},
				index = 1,
			},
		}

		local testComponentNavigationFromProp = nil
		local testComponentScreenProps = nil

		local TestComponent = Roact.Component:extend("TestComponent")
		function TestComponent:render()
			testComponentNavigationFromProp = self.props.navigation
			testComponentScreenProps = self.props.screenProps
			return nil
		end

		local testDescriptors = {
			Foo = {
				getComponent = function()
					return TestComponent
				end,
				navigation = testNavigation,
			}
		}

		local element = Roact.createElement(RobloxSwitchView, {
			screenProps = testScreenProps,
			navigation = testNavigation,
			descriptors = testDescriptors,
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)

		expect(testComponentNavigationFromProp).to.equal(testNavigation)
		expect(testComponentScreenProps).to.equal(testScreenProps)
	end)

	it("should unmount inactive pages when keepVisitedScreensMounted is false", function()
		local fooUnmounted = false
		local TestComponentFoo = Roact.Component:extend("TestComponentFoo")
		function TestComponentFoo:render() end
		function TestComponentFoo:willUnmount()
			fooUnmounted = true
		end

		local TestComponentBar = Roact.Component:extend("TestComponentBar")
		function TestComponentBar:render() end

		local function makeDescriptors(navProp)
			return {
				Foo = {
					getComponent = function() return TestComponentFoo end,
					navigation = navProp,
				},
				Bar = {
					getComponent = function() return TestComponentBar end,
					navigation = navProp,
				},
			}
		end

		local testNavigation1 = {
			state = {
				routes = {
					{ routeName = "Foo", key = "Foo" },
					{ routeName = "Bar", key = "Bar" },
				},
				index = 1,
			},
		}

		local element = Roact.createElement(RobloxSwitchView, {
			screenProps = {},
			navigation = testNavigation1,
			descriptors = makeDescriptors(testNavigation1),
			navigationConfig = {
				keepVisitedScreensMounted = false,
			},
		})

		local instance = Roact.mount(element)
		expect(fooUnmounted).to.equal(false)

		local testNavigation2 = {
			state = {
				routes = {
					{ routeName = "Foo", key = "Foo" },
					{ routeName = "Bar", key = "Bar" },
				},
				index = 2,
			},
		}

		instance = Roact.update(instance, Roact.createElement(RobloxSwitchView, {
			screenProps = {},
			navigation = testNavigation2,
			descriptors = makeDescriptors(testNavigation2),
			navigationConfig = {
				keepVisitedScreensMounted = false,
			}
		}))

		expect(fooUnmounted).to.equal(true)
		Roact.unmount(instance)
	end)

	it("should not unmount inactive pages when keepVisitedScreensMounted is true", function()
		local fooUnmounted = false
		local TestComponentFoo = Roact.Component:extend("TestComponentFoo")
		function TestComponentFoo:render() end
		function TestComponentFoo:willUnmount()
			fooUnmounted = true
		end

		local TestComponentBar = Roact.Component:extend("TestComponentBar")
		function TestComponentBar:render() end

		local function makeDescriptors(navProp)
			return {
				Foo = {
					getComponent = function() return TestComponentFoo end,
					navigation = navProp,
				},
				Bar = {
					getComponent = function() return TestComponentBar end,
					navigation = navProp,
				},
			}
		end

		local testNavigation1 = {
			state = {
				routes = {
					{ routeName = "Foo", key = "Foo" },
					{ routeName = "Bar", key = "Bar" },
				},
				index = 1,
			},
		}

		local element = Roact.createElement(RobloxSwitchView, {
			screenProps = {},
			navigation = testNavigation1,
			descriptors = makeDescriptors(testNavigation1),
			navigationConfig = {
				keepVisitedScreensMounted = true,
			},
		})

		local instance = Roact.mount(element)
		expect(fooUnmounted).to.equal(false)

		local testNavigation2 = {
			state = {
				routes = {
					{ routeName = "Foo", key = "Foo" },
					{ routeName = "Bar", key = "Bar" },
				},
				index = 2,
			},
		}

		instance = Roact.update(instance, Roact.createElement(RobloxSwitchView, {
			screenProps = {},
			navigation = testNavigation2,
			descriptors = makeDescriptors(testNavigation2),
			navigationConfig = {
				keepVisitedScreensMounted = true,
			}
		}))

		expect(fooUnmounted).to.equal(false)

		Roact.unmount(instance)
		expect(fooUnmounted).to.equal(true)
	end)

	it("should unmount inactive pages when keepVisitedScreensMounted switches from true to false", function()
		local fooUnmounted = false
		local TestComponentFoo = Roact.Component:extend("TestComponentFoo")
		function TestComponentFoo:render() end
		function TestComponentFoo:willUnmount()
			fooUnmounted = true
		end

		local TestComponentBar = Roact.Component:extend("TestComponentBar")
		function TestComponentBar:render() end

		local function makeDescriptors(navProp)
			return {
				Foo = {
					getComponent = function() return TestComponentFoo end,
					navigation = navProp,
				},
				Bar = {
					getComponent = function() return TestComponentBar end,
					navigation = navProp,
				},
			}
		end

		local testNavigation1 = {
			state = {
				routes = {
					{ routeName = "Foo", key = "Foo" },
					{ routeName = "Bar", key = "Bar" },
				},
				index = 1,
			},
		}

		local element = Roact.createElement(RobloxSwitchView, {
			screenProps = {},
			navigation = testNavigation1,
			descriptors = makeDescriptors(testNavigation1),
			navigationConfig = {
				keepVisitedScreensMounted = true,
			},
		})

		local instance = Roact.mount(element)

		local testNavigation2 = {
			state = {
				routes = {
					{ routeName = "Foo", key = "Foo" },
					{ routeName = "Bar", key = "Bar" },
				},
				index = 2,
			},
		}

		-- We must update tree to make sure active screens list gets updated first!
		instance = Roact.update(instance, Roact.createElement(RobloxSwitchView, {
			screenProps = {},
			navigation = testNavigation2,
			descriptors = makeDescriptors(testNavigation2),
			navigationConfig = {
				keepVisitedScreensMounted = true,
			}
		}))

		expect(fooUnmounted).to.equal(false)

		instance = Roact.update(instance, Roact.createElement(RobloxSwitchView, {
			screenProps = {},
			navigation = testNavigation2,
			descriptors = makeDescriptors(testNavigation2),
			navigationConfig = {
				keepVisitedScreensMounted = false,
			}
		}))

		expect(fooUnmounted).to.equal(true)

		Roact.unmount(instance)
	end)
end
