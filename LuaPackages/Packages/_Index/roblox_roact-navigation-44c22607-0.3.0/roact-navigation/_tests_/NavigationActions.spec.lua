-- upstream https://github.com/react-navigation/react-navigation/blob/72e8160537954af40f1b070aa91ef45fc02bba69/packages/core/src/__tests__/NavigationActions.test.js

return function()
	local NavigationActions = require(script.Parent.Parent.NavigationActions)

	local expectDeepEqual = require(script.Parent.Parent.utils.expectDeepEqual)

	describe("generic navigation actions", function()
		local params = { foo = "bar" }
		local navigateAction = NavigationActions.navigate({ routeName = "another" })

		it("exports back action and type", function()
			expectDeepEqual(NavigationActions.back(), { type = NavigationActions.Back })
			expectDeepEqual(
				NavigationActions.back({ key = "test" }),
				{
					type = NavigationActions.Back,
					key = "test",
				}
			)
		end)

		it("exports init action and type", function()
			expectDeepEqual(NavigationActions.init(), { type = NavigationActions.Init })
			expectDeepEqual(
				NavigationActions.init({ params = params }),
				{
					type = NavigationActions.Init,
					params = params,
				}
			)
		end)

		it("exports navigate action and type", function()
			expectDeepEqual(
				NavigationActions.navigate({ routeName = "test" }),
				{
					type = NavigationActions.Navigate,
					routeName = "test",
				}
			)
			expectDeepEqual(
				NavigationActions.navigate({
					routeName = "test",
					params = params,
					action = navigateAction,
				}),
				{
					type = NavigationActions.Navigate,
					routeName = "test",
					params = params,
					action = {
						type = NavigationActions.Navigate,
						routeName = "another",
					},
				}
			)
		end)

		it("exports setParams action and type", function()
			expectDeepEqual(
				NavigationActions.setParams({
					key = "test",
					params = params,
				}),
				{
					type = NavigationActions.SetParams,
					key = "test",
					preserveFocus = true,
					params = params,
				}
			)
		end)
	end)
end
