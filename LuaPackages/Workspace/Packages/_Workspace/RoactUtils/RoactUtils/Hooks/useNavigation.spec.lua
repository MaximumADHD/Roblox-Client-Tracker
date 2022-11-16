return function()

	local RoactUtils = script:FindFirstAncestor("RoactUtils")
	local Packages = RoactUtils.Parent

	local React = require(Packages.React)
	local ReactRoblox = require(Packages.Dev.ReactRoblox)
	local RoactNavigation = require(Packages.RoactNavigation)

	local JestGlobals = require(Packages.Dev.JestGlobals)
	local expect = JestGlobals.expect

	local useNavigation = require(script.Parent.useNavigation)

	local function defaultMockNavigation()
		return {
			isFocused = function() return false end,
			addListener = function()
				return {
					remove = function() end,
				}
			end,
			getParam = function() return nil end,
			navigate = function() end,
			state = {
				routeName = "DummyRoute",
			},
		}
	end

	local function renderWithNavigationProvider(element, navigation: any?)
		navigation = navigation or defaultMockNavigation()
		return React.createElement(RoactNavigation.Provider, {
			value = navigation,
		}, {
			Child = element,
		})
	end

	it("it should provide the navigation prop", function()
		local navigation
		local function NavigationHookComponent()
			navigation = useNavigation()
		end

		local element = React.createElement(NavigationHookComponent)
		element = renderWithNavigationProvider(element)

		local container = Instance.new("Frame")
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(element)
		end)

		expect(navigation).toMatchObject({
			navigate = expect.any("function"),
		})
		root:unmount()
	end)
end
