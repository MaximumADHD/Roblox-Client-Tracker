return function()
	local Roact = require(script.Parent.Parent.Parent.Parent.Roact)
	local SwitchView = require(script.Parent.Parent.SwitchView)
	local withNavigation = require(script.Parent.Parent.withNavigation)

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
		local testComponentNavigationFromContext = nil

		local TestComponent = Roact.Component:extend("TestComponent")
		function TestComponent:render()
			testComponentNavigationFromProp = self.props.navigation
			testComponentScreenProps = self.props.screenProps

			return withNavigation(function(navigation)
				testComponentNavigationFromContext = navigation
			end)
		end

		local testDescriptors = {
			Foo = {
				getComponent = function()
					return TestComponent
				end,
				navigation = testNavigation,
			}
		}

		local element = Roact.createElement(SwitchView, {
			screenProps = testScreenProps,
			navigation = testNavigation,
			descriptors = testDescriptors,
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)

		expect(testComponentNavigationFromProp).to.equal(testNavigation)
		expect(testComponentScreenProps).to.equal(testScreenProps)
		expect(testComponentNavigationFromContext).to.equal(testNavigation)
	end)

end
