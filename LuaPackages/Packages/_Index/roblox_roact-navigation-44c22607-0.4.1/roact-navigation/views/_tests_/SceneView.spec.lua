return function()
	local Roact = require(script.Parent.Parent.Parent.Parent.Roact)
	local SceneView = require(script.Parent.Parent.SceneView)

	it("should mount inner component and pass down required props+context.navigation", function()
		local testComponentNavigationFromProp = nil
		local testComponentScreenProps = nil

		local TestComponent = Roact.Component:extend("TestComponent")
		function TestComponent:render()
			testComponentNavigationFromProp = self.props.navigation
			testComponentScreenProps = self.props.screenProps
			return nil
		end

		local testScreenProps = {}
		local testNav = {}
		local element = Roact.createElement(SceneView, {
			screenProps = testScreenProps,
			navigation = testNav,
			component = TestComponent,
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)

		expect(testComponentScreenProps).to.equal(testScreenProps)
		expect(testComponentNavigationFromProp).to.equal(testNav)
	end)
end
