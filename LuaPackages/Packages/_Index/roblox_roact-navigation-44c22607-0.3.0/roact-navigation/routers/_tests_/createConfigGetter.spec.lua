-- upstream https://github.com/react-navigation/react-navigation/blob/72e8160537954af40f1b070aa91ef45fc02bba69/packages/core/src/routers/__tests__/createConfigGetter.test.js

return function()
	local createConfigGetter = require(script.Parent.Parent.createConfigGetter)
	local Roact = require(script.Parent.Parent.Parent.Parent.Roact)

	it("should get config for screen", function()
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

		expect(getScreenOptions({ state = routes[1] }, {}).title)
			.to.equal("Welcome anonymous")

		expect(getScreenOptions({ state = routes[2] }, {}).title)
			.to.equal("Welcome jane")

		expect(getScreenOptions({ state = routes[1] }, {}).gesturesEnabled)
			.to.equal(true)

		expect(getScreenOptions({ state = routes[3] }, {}).title)
			.to.equal("Settings!!!")

		expect(getScreenOptions({ state = routes[3] }, {}).gesturesEnabled)
			.to.equal(false)

		expect(getScreenOptions({ state = routes[4] }, {}).title)
			.to.equal("10 new notifications")

		expect(getScreenOptions({ state = routes[4] }, {}).gesturesEnabled)
			.to.equal(true)

		expect(getScreenOptions({ state = routes[5] }, {}).gesturesEnabled)
			.to.equal(false)
	end)

	it("should throw if the route does not exist", function()
		local HomeScreen = Roact.Component:extend("HomeScreen")

		HomeScreen.navigationOptions = {
			title = "Home screen",
			gesturesEnabled = true,
		}

		local getScreenOptions = createConfigGetter({
			Home = { screen = HomeScreen },
		})

		local routes = {{ key = "B", routeName = "Settings" }}

		expect(function()
			getScreenOptions({ state = routes[1] }, {})
		end).to.throw("There is no route defined for key Settings.\nMust be one of: 'Home'")
	end)
end
