return function()
	local Roact = require(script.Parent.Parent.Parent.Parent.Roact)
	local createRobloxStackNavigator = require(script.Parent.Parent.createRobloxStackNavigator)
	local getChildNavigation = require(script.Parent.Parent.Parent.getChildNavigation)

	it("should return a mountable Roact component", function()
		local navigator = createRobloxStackNavigator({
			{ Foo = function() end },
		})

		local testNavigation = {
			state = {
				routes = {
					{ routeName = "Foo", key = "Foo" },
				},
				index = 1
			},
			router = navigator.router
		}

		function testNavigation.getChildNavigation(childKey)
			return getChildNavigation(testNavigation, childKey, function()
				return testNavigation
			end)
		end

		function testNavigation.addListener(symbol, callback)
			return {
				remove = function() end
			}
		end

		local instance = Roact.mount(Roact.createElement(navigator, {
			navigation = testNavigation
		}))

		Roact.unmount(instance)
	end)
end

