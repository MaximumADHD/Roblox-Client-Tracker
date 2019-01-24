return function()
	local CoreGui = game:GetService("CoreGui")
	local RoactNavigation = require(script.Parent)
	local Roact = require(CoreGui.RobloxGui.Modules.Common.Roact)

	it("should load", function()
		require(script.Parent)
	end)

	it("should return a function for createTopBarStackNavigator", function()
		expect(type(RoactNavigation.createTopBarStackNavigator)).to.equal("function")
	end)

	it("should return a valid component when calling createTopBarStackNavigator", function()
		local component = RoactNavigation.createTopBarStackNavigator()
		expect(component.render).never.to.equal(nil)

		local instance = Roact.mount(Roact.createElement(component))
		Roact.unmount(instance)
	end)

	it("should return a function for createBottomTabNavigator", function()
		expect(type(RoactNavigation.createBottomTabNavigator)).to.equal("function")
	end)

	it("should return a valid component when calling createBottomTabNavigator", function()
		local component = RoactNavigation.createBottomTabNavigator()
		expect(component.render).never.to.equal(nil)

		local instance = Roact.mount(Roact.createElement(component))
		Roact.unmount(instance)
	end)

	it("should return a function for withNavigation", function()
		expect(type(RoactNavigation.withNavigation)).to.equal("function")
	end)

	it("should return a valid component for EventsAdapter", function()
		expect(RoactNavigation.EventsAdapter.render).to.never.equal(nil)

		local instance = Roact.mount(Roact.createElement(RoactNavigation.EventsAdapter, {
			navigation = {},
		}))
		Roact.unmount(instance)
	end)

	it("should return a table for Events", function()
		expect(type(RoactNavigation.Events)).to.equal("table")
	end)

	it("should return a table for Actions", function()
		expect(type(RoactNavigation.Actions)).to.equal("table")
	end)

	it("should return a table for StackActions", function()
		expect(type(RoactNavigation.StackActions)).to.equal("table")
	end)
end
