return function()
	local Roact = require(script.Parent.Parent.Parent.Parent.Roact)
	local withNavigation = require(script.Parent.Parent.withNavigation)
	local AppNavigationContext = require(script.Parent.Parent.AppNavigationContext)

	it("should throw if no renderProp is provided", function()
		local status, err = pcall(function()
			withNavigation(nil)
		end)

		expect(status).to.equal(false)
		expect(string.find(err, "withNavigation must be passed a render prop")).to.never.equal(nil)
	end)

	it("should extract navigation object from provider and pass it through", function()
		local testNavigation = {}
		local extractedNavigation = nil

		local rootElement = Roact.createElement(AppNavigationContext.Provider, {
			navigation = testNavigation,
		}, {
			Child = Roact.createElement(function()
				return withNavigation(function(nav)
					extractedNavigation = nav
				end)
			end)
		})

		local rootInstance = Roact.mount(rootElement)
		Roact.unmount(rootInstance)

		expect(extractedNavigation).to.equal(testNavigation)
	end)
end
