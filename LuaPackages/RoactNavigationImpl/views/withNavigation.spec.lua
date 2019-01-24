return function()
	local CoreGui = game:GetService("CoreGui")
	local Roact = require(CoreGui.RobloxGui.Modules.Common.Roact)
	local withNavigation = require(script.Parent.withNavigation)
	local AppNavigationContext = require(script.Parent.AppNavigationContext)

	it("should fill navigation prop from _context[AppNavigationContext] if not already set", function()
		local mockContext = {}
		local testComponentNavigationProp = nil

		local mockNavProvider = Roact.Component:extend("mockNavProvider")
		function mockNavProvider:init()
			self._context[AppNavigationContext] = mockContext
		end
		function mockNavProvider:render()
			return Roact.oneChild(self.props[Roact.Children])
		end

		local testComponent = Roact.Component:extend("testComponent")
		function testComponent:didMount()
			testComponentNavigationProp = self.props.navigation
		end
		function testComponent:render()
			return nil
		end

		local treeRoot = Roact.createElement(mockNavProvider, nil, {
			TestComponent = Roact.createElement(withNavigation(testComponent))
		})

		local instance = Roact.mount(treeRoot)

		expect(testComponentNavigationProp).to.equal(mockContext)

		Roact.unmount(instance)
	end)

	it("should use navigation prop if set", function()
		local mockContext = {}
		local mockContextOverride = {}
		local testComponentNavigationProp = nil

		local mockNavProvider = Roact.Component:extend("mockNavProvider")
		function mockNavProvider:init()
			self._context[AppNavigationContext] = mockContext
		end
		function mockNavProvider:render()
			return Roact.oneChild(self.props[Roact.Children])
		end

		local testComponent = Roact.Component:extend("testComponent")
		function testComponent:didMount()
			testComponentNavigationProp = self.props.navigation
		end
		function testComponent:render()
			return nil
		end

		local treeRoot = Roact.createElement(mockNavProvider, nil, {
			TestComponent = Roact.createElement(withNavigation(testComponent), {
				navigation = mockContextOverride
			})
		})

		local instance = Roact.mount(treeRoot)

		expect(testComponentNavigationProp).to.equal(mockContextOverride)

		Roact.unmount(instance)
	end)
end
