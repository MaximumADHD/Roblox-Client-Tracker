return function()
	local createConfigGetter = require(script.Parent.Parent.createConfigGetter)

	it("should return a function", function()
		local result = createConfigGetter({}, {})
		expect(result).to.be.a("function")
	end)

	it("should override default config with component-specific config", function()
		local getScreenOptions = createConfigGetter({
			Home = {
				screen = {
					render = function() end,
					navigationOptions = { title = "ComponentHome" },
				},
			},
			defaultNavigationOptions = { title = "DefaultTitle" },
		})

		expect(getScreenOptions({ state = { routeName = "Home" } }).title).to.equal("ComponentHome")
	end)

	it("should override component-specific config with route-specific config", function()
		local getScreenOptions = createConfigGetter({
			Home = {
				screen = {
					render = function() end,
					navigationOptions = { title = "ComponentHome" },
				},
				navigationOptions = { title = "RouteHome" },
			},
			defaultNavigationOptions = { title = "DefaultTitle" },
		})

		expect(getScreenOptions({ state = { routeName = "Home" } }).title).to.equal("RouteHome")
	end)
end
