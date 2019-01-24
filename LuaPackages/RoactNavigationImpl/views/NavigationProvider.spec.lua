return function()
	local CoreGui = game:GetService("CoreGui")
	local Roact = require(CoreGui.RobloxGui.Modules.Common.Roact)
	local NavigationProvider = require(script.Parent.NavigationProvider)
	local AppNavigationContext = require(script.Parent.AppNavigationContext)

	it("should set AppNavigationContext into Roact's _context", function()
		local testComponentNavContext = nil

		local TestComponent = Roact.Component:extend("TestComponent")
		function TestComponent:didMount()
			testComponentNavContext = self._context[AppNavigationContext]
		end
		function TestComponent:render()
			return nil
		end

		local provider = Roact.createElement(NavigationProvider, nil, {
			TestComponent = Roact.createElement(TestComponent)
		})

		local instance = Roact.mount(provider)
		expect(testComponentNavContext).to.never.equal(nil)
		Roact.unmount(instance)
	end)
end
