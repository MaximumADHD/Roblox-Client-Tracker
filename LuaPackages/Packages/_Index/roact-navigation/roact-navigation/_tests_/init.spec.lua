return function()
	local RoactNavigation = require(script.Parent.Parent)
	local Roact = require(script.Parent.Parent.Parent.Roact)
	local EdgeInsets = require(script.Parent.Parent.EdgeInsets)
	local StackHeaderMode = require(script.Parent.Parent.views.StackView.StackHeaderMode)
	local StackPresentationStyle = require(script.Parent.Parent.views.StackView.StackPresentationStyle)
	local NoneSymbol = require(script.Parent.Parent.NoneSymbol)

	it("should load", function()
		require(script.Parent.Parent)
	end)

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
		expect(type(RoactNavigation.Context.connect)).to.equal("function")
	end)

	it("should return a table for Provider", function()
		expect(type(RoactNavigation.Provider)).to.equal("table")
	end)

	it("should return a table for Consumer", function()
		expect(type(RoactNavigation.Consumer)).to.equal("table")
	end)

	it("should return a function for connect", function()
		expect(type(RoactNavigation.connect)).to.equal("function")
	end)

	it("should return a function for withNavigation", function()
		expect(type(RoactNavigation.withNavigation)).to.equal("function")
	end)

	it("should return a function for withNavigationFocus", function()
		expect(type(RoactNavigation.withNavigationFocus)).to.equal("function")
	end)

	it("should return a function for createSwitchNavigator", function()
		expect(type(RoactNavigation.createSwitchNavigator)).to.equal("function")
	end)

	it("should return a function for createTopBarStackNavigator", function()
		expect(type(RoactNavigation.createTopBarStackNavigator)).to.equal("function")
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

	it("should return a table for BackBehavior", function()
		expect(type(RoactNavigation.BackBehavior)).to.equal("table")
	end)

	it("should return a table for Events", function()
		expect(type(RoactNavigation.Events)).to.equal("table")
	end)

	it("should return a valid component for EventsAdapter", function()
		expect(RoactNavigation.EventsAdapter.render).never.to.equal(nil)
		local instance = Roact.mount(Roact.createElement(RoactNavigation.EventsAdapter, {
			navigation = {
				addListener = function()
					return { disconnect = function() end }
				end
			}
		}))
		Roact.unmount(instance)
	end)

	it("should return EdgeInsets", function()
		expect(RoactNavigation.EdgeInsets).to.equal(EdgeInsets)
	end)

	it("should return StackPresentationStyle", function()
		expect(RoactNavigation.StackPresentationStyle).to.equal(StackPresentationStyle)
	end)

	it("should return StackHeaderMode", function()
		expect(RoactNavigation.StackHeaderMode).to.equal(StackHeaderMode)
	end)

	it("should return NoneSymbol", function()
		expect(RoactNavigation.None).to.equal(NoneSymbol)
	end)

	it("should return a valid component for SceneView", function()
		expect(RoactNavigation.SceneView.render).never.to.equal(nil)
		local instance = Roact.mount(Roact.createElement(RoactNavigation.SceneView, {
			navigation = {},
			component = function() end,
		}))
		Roact.unmount(instance)
	end)

	it("should return a valid component for SwitchView", function()
		expect(RoactNavigation.SwitchView.render).never.to.equal(nil)

		local testNavigation = {
			state = {
				routes = {
					{ routeName = "Foo", key = "Foo", }
				},
				index = 1,
			}
		}

		local instance = Roact.mount(Roact.createElement(RoactNavigation.SwitchView, {
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

	it("should return a table for TopBar", function()
		expect(type(RoactNavigation.TopBar)).to.equal("table")
	end)

	it("should return a table for TopBarBackButton", function()
		expect(type(RoactNavigation.TopBarBackButton)).to.equal("table")
	end)

	it("should return a table for TopBarTitleContainer", function()
		expect(type(RoactNavigation.TopBarTitleContainer)).to.equal("table")
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
