return function()
	local Roact = require(script.Parent.Parent.Parent.Parent.Roact)
	local AppNavigationContext = require(script.Parent.Parent.AppNavigationContext)

	it("should propagate navigation prop from provider to consumer", function()
		local testNavigationContextProp = {}
		local testComponentNavContext = nil

		local provider = Roact.createElement(AppNavigationContext.Provider, {
			navigation = testNavigationContextProp
		}, {
			Child = Roact.createElement(AppNavigationContext.Consumer, {
				render = function(navigation)
					testComponentNavContext = navigation
				end
			})
		})

		local instance = Roact.mount(provider)
		expect(testComponentNavContext).to.equal(testNavigationContextProp)
		Roact.unmount(instance)
	end)

	it("should override context navigation prop if custom prop is set on consumer", function()
		local testCustomNavigationProp = {}
		local testComponentNavContext = nil

		local provider = Roact.createElement(AppNavigationContext.Provider, {
			navigation = {}
		}, {
			Child = Roact.createElement(AppNavigationContext.Consumer, {
				navigation = testCustomNavigationProp,
				render = function(navigation)
					testComponentNavContext = navigation
				end
			})
		})

		local instance = Roact.mount(provider)
		expect(testComponentNavContext).to.equal(testCustomNavigationProp)
		Roact.unmount(instance)
	end)

	it("should pass navigation prop to statically wrapped components", function()
		local testNavigationContextProp = {}
		local passedNavigationProp = nil

		local TestComponent = Roact.Component:extend("TestComponent")
		function TestComponent:render()
			passedNavigationProp = self.props.navigation
		end

		local WrappedComponent = AppNavigationContext.connect(TestComponent)

		local element = Roact.createElement(AppNavigationContext.Provider, {
			navigation = testNavigationContextProp
		}, {
			Child = Roact.createElement(WrappedComponent)
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)

		expect(passedNavigationProp).to.equal(testNavigationContextProp)
	end)

	it("should override static wrapper navigation prop when navigation is directly set", function()
		local testNavigationProp = {}
		local passedNavigationProp = nil

		local TestComponent = Roact.Component:extend("TestComponent")
		function TestComponent:render()
			passedNavigationProp = self.props.navigation
		end

		local WrappedComponent = AppNavigationContext.connect(TestComponent)

		local element = Roact.createElement(AppNavigationContext.Provider, {
			navigation = {}
		}, {
			Child = Roact.createElement(WrappedComponent, {
				navigation = testNavigationProp
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)

		expect(passedNavigationProp).to.equal(testNavigationProp)
	end)
end
