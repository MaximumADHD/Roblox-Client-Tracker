return function()
	local Roact = require(script.Parent.Parent.Parent.Parent.Roact)
	local withNavigation = require(script.Parent.Parent.withNavigation)
	local NavigationContext = require(script.Parent.Parent.NavigationContext)

	it("throws if no component is provided", function()
		expect(function()
			withNavigation(nil)
		end).to.throw("withNavigation must be called with a Roact component (stateful or functional)")
	end)

	it("should extract navigation object from provider and pass it through", function()
		local testNavigation = {}
		local extractedNavigation = nil

		local function Foo(props)
			extractedNavigation = props.navigation
			return nil
		end

		local FooWithNavigation = withNavigation(Foo)

		local rootElement = Roact.createElement(NavigationContext.Provider, {
			value = testNavigation,
		}, {
			Child = Roact.createElement(FooWithNavigation)
		})

		local tree = Roact.mount(rootElement)
		Roact.unmount(tree)

		expect(extractedNavigation).to.equal(testNavigation)
	end)

	it("should update with new navigation when navigation is updated", function()
		local testNavigation = {}
		local testNavigation2 = {}
		local extractedNavigation = nil

		local function Foo(props)
			extractedNavigation = props.navigation
			return nil
		end

		local FooWithNavigation = withNavigation(Foo)

		local rootElement = Roact.createElement(NavigationContext.Provider, {
			value = testNavigation,
		}, {
			Child = Roact.createElement(FooWithNavigation)
		})

		local tree = Roact.mount(rootElement)

		local rootElement2 = Roact.createElement(NavigationContext.Provider, {
			value = testNavigation2,
		}, {
			Child = Roact.createElement(FooWithNavigation)
		})

		Roact.update(tree, rootElement2)

		Roact.unmount(tree)

		expect(extractedNavigation).to.equal(testNavigation2)
	end)

	it("should throw when used outside of a navigation provider", function()
		local function Foo(props)
			return nil
		end

		local FooWithNavigation = withNavigation(Foo)

		local element = Roact.createElement(FooWithNavigation)

		local errorMessage = "withNavigation and withNavigationFocus can only " ..
			"be used on a view hierarchy of a navigator. The wrapped component is " ..
			"unable to get access to navigation from props or context"

		expect(function()
			Roact.mount(element)
		end).to.throw(errorMessage)
	end)
end
