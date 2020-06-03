return function()
	local createConfigGetter = require(script.Parent.Parent.createConfigGetter)
	local Roact = require(script.Parent.Parent.Parent.Parent.Roact)

	it("should return a function", function()
		local result = createConfigGetter({}, {})
		expect(type(result)).to.equal("function")
	end)

	it("should return a screen config when called", function()
		local HomeScreen = Roact.Component:extend("HomeScreen")
		HomeScreen.navigationOptions = function(props)
			local username = props.navigation.state.params and
				props.navigation.state.params.user or "anonymous"

			return {
				title = string.format("Welcome %s", username),
				gesturesEnabled = true,
			}
		end
		function HomeScreen:render() return nil end

		local SettingsScreen = Roact.Component:extend("SettingsScreen")
		SettingsScreen.navigationOptions = {
			title = "Settings!!!",
			gesturesEnabled = false,
		}
		function SettingsScreen:render() return nil end

		local NotificationScreen = Roact.Component:extend("NotificationScreen")
		NotificationScreen.navigationOptions = function(props)
			local gesturesEnabled = true
			if props.navigation.state.params then
				gesturesEnabled = not props.navigation.state.params.fullscreen
			end

			return {
				title = "42",
				gesturesEnabled = gesturesEnabled
			}
		end

		local getScreenOptions = createConfigGetter({
			Home = { screen = HomeScreen },
			Settings = { screen = SettingsScreen },
			Notifications = {
				screen = NotificationScreen,
				navigationOptions = {
					title = "10 new notifications",
				}
			}
		})

		local routes = {
			{ key = "A", routeName = "Home", },
			{ key = "B", routeName = "Home", params = { user = "jane"} },
			{ key = "C", routeName = "Settings", },
			{ key = "D", routeName = "Notifications", },
			{ key = "E", routeName = "Notifications", params = { fullscreen = true } },
		}

		expect(getScreenOptions({ state = routes[1] }, {}).title
			).to.equal("Welcome anonymous")

		expect(getScreenOptions({ state = routes[2] }, {}).title
			).to.equal("Welcome jane")

		expect(getScreenOptions({ state = routes[1] }, {}).gesturesEnabled
			).to.equal(true)

		expect(getScreenOptions({ state = routes[3] }, {}).title
			).to.equal("Settings!!!")

		expect(getScreenOptions({ state = routes[3] }, {}).gesturesEnabled
			).to.equal(false)

		expect(getScreenOptions({ state = routes[4] }, {}).title
			).to.equal("10 new notifications")

		expect(getScreenOptions({ state = routes[4] }, {}).gesturesEnabled
			).to.equal(true)

		expect(getScreenOptions({ state = routes[5] }, {}).gesturesEnabled
			).to.equal(false)
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
