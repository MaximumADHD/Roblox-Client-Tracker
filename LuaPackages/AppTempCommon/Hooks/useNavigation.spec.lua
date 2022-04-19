return function()
	local CorePackages = game:GetService("CorePackages")

	local React = require(CorePackages.Packages.React)
	local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
	local RoactNavigation = require(CorePackages.RoactNavigation)
	local useNavigation = require(script.Parent.useNavigation)

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

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
