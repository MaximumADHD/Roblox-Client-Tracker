return function()
	local root = script.Parent.Parent
	local Packages = root.Parent
	local RoactNavigation = require(root)
	local Roact = require(Packages.Roact)
	local StackPresentationStyle = require(root.views.RobloxStackView.StackPresentationStyle)

	it("should return a function for createAppContainer", function()
		expect(type(RoactNavigation.createAppContainer)).to.equal("function")
	end)

	it("should return a function for getNavigation", function()
		expect(type(RoactNavigation.getNavigation)).to.equal("function")
	end)

	it("should return an appropriate table for Context", function()
		expect(type(RoactNavigation.Context)).to.equal("table")
		expect(type(RoactNavigation.Context.Provider)).to.equal("table")
		expect(type(RoactNavigation.Context.Consumer)).to.equal("table")
	end)

	it("should return a Component for Provider", function()
		expect(type(RoactNavigation.Provider)).to.equal("table")
	end)

	it("should return a Component for Consumer", function()
		expect(type(RoactNavigation.Consumer)).to.equal("table")
	end)

	it("should return a function for withNavigation", function()
		expect(type(RoactNavigation.withNavigation)).to.equal("function")
	end)

	it("should return a function for withNavigationFocus", function()
		expect(type(RoactNavigation.withNavigationFocus)).to.equal("function")
	end)

	it("should return a function for createRobloxSwitchNavigator", function()
		expect(type(RoactNavigation.createRobloxSwitchNavigator)).to.equal("function")
	end)

	it("should return a function for createRobloxStackNavigator", function()
		expect(type(RoactNavigation.createRobloxStackNavigator)).to.equal("function")
	end)

	it("should return a function for createNavigator", function()
		expect(type(RoactNavigation.createNavigator)).to.equal("function")
	end)

	it("should return a function for StackRouter", function()
		expect(type(RoactNavigation.StackRouter)).to.equal("function")
	end)

	it("should return a function for SwitchRouter", function()
		expect(type(RoactNavigation.SwitchRouter)).to.equal("function")
	end)

	it("should return a function for TabRouter", function()
		expect(type(RoactNavigation.TabRouter)).to.equal("function")
	end)

	it("should return a table for Actions", function()
		expect(type(RoactNavigation.Actions)).to.equal("table")
	end)

	it("should return a table for StackActions", function()
		expect(type(RoactNavigation.StackActions)).to.equal("table")
	end)

	it("should return a table for SwitchActions", function()
		expect(type(RoactNavigation.SwitchActions)).to.equal("table")
	end)

	it("should return a table for BackBehavior", function()
		expect(type(RoactNavigation.BackBehavior)).to.equal("table")
	end)

	it("should return a table for Events", function()
		expect(type(RoactNavigation.Events)).to.equal("table")
	end)

	it("should return a valid component for NavigationEvents", function()
		local instance = Roact.mount(Roact.createElement(RoactNavigation.Provider, {
			value = {
				addListener = function()
					return { remove = function() end }
				end
			}
		}, {
			Events = Roact.createElement(RoactNavigation.NavigationEvents),
		}))
		Roact.unmount(instance)
	end)

	it("should return StackPresentationStyle", function()
		expect(RoactNavigation.StackPresentationStyle).to.equal(StackPresentationStyle)
	end)

	it("should return a valid component for SceneView", function()
		expect(RoactNavigation.SceneView.render).never.to.equal(nil)
		local instance = Roact.mount(Roact.createElement(RoactNavigation.SceneView, {
			navigation = {},
			component = function() end,
		}))
		Roact.unmount(instance)
	end)

	it("should return a valid component for RobloxSwitchView", function()
		local testNavigation = {
			state = {
				routes = {
					{ routeName = "Foo", key = "Foo", }
				},
				index = 1,
			}
		}

		local instance = Roact.mount(Roact.createElement(RoactNavigation.RobloxSwitchView, {
			descriptors = {
				Foo = {
					getComponent = function()
						return function() end
					end,
					navigation = testNavigation,
				}
			},
			navigation = testNavigation,
		}))
		Roact.unmount(instance)
	end)

	it("should return a function for createConfigGetter", function()
		expect(type(RoactNavigation.createConfigGetter)).to.equal("function")
	end)

	it("should return a function for getScreenForRouteName", function()
		expect(type(RoactNavigation.getScreenForRouteName)).to.equal("function")
	end)

	it("should return a function for validateRouteConfigMap", function()
		expect(type(RoactNavigation.validateRouteConfigMap)).to.equal("function")
	end)

	it("should return a function for getActiveChildNavigationOptions", function()
		expect(type(RoactNavigation.getActiveChildNavigationOptions)).to.equal("function")
	end)
end
