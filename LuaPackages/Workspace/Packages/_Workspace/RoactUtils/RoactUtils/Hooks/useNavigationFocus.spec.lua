return function()
	local RoactUtils = script:FindFirstAncestor("RoactUtils")
	local Packages = RoactUtils.Parent

	local React = require(Packages.React)
	local ReactRoblox = require(Packages.Dev.ReactRoblox)
	local RoactNavigation = require(Packages.RoactNavigation)
	local Events = RoactNavigation.Events

	local JestGlobals = require(Packages.Dev.JestGlobals)
	local expect = JestGlobals.expect

	local useNavigationFocus = require(script.Parent.useNavigationFocus)

	it("should return true when initially focused", function()
		local testFocused = nil

		local function Component(props)
			testFocused = useNavigationFocus()
			return nil
		end

		local navigationProp = {
			isFocused = function()
				return true
			end,
			addListener = function()
				return {
					remove = function() end,
				}
			end,
		}

		local element = React.createElement(RoactNavigation.Provider, {
			value = navigationProp,
		}, {
			child = React.createElement(Component),
		})

		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(element)
		end)
		expect(testFocused).toBe(true)

		root:unmount()
	end)

	it("should return false when initially unfocused", function()
		local testFocused = nil

		local function Component(props)
			testFocused = useNavigationFocus()
			return nil
		end

		local navigationProp = {
			isFocused = function()
				return false
			end,
			addListener = function()
				return {
					remove = function() end,
				}
			end,
		}

		local element = React.createElement(RoactNavigation.Provider, {
			value = navigationProp,
		}, {
			child = React.createElement(Component),
		})

		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(element)
		end)
		expect(testFocused).toBe(false)

		root:unmount()
	end)

	it("should re-render and return new focused status for events", function()
		local testListeners = {}
		local testFocused = false

		local function Component(props)
			testFocused = useNavigationFocus()
			return React.createElement("TextButton")
		end

		local navigationProp = {
			isFocused = function()
				return false
			end,
			addListener = function(event, listener)
				testListeners[event] = listener
				return {
					remove = function()
						testListeners[event] = nil
					end,
				}
			end,
		}

		local element = React.createElement(RoactNavigation.Provider, {
			value = navigationProp,
		}, {
			child = React.createElement(Component),
		})

		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(element)
		end)
		expect(testFocused).toBe(false)
		expect(type(testListeners[Events.WillFocus])).toBe("function")
		expect(type(testListeners[Events.WillBlur])).toBe("function")

		ReactRoblox.act(function()
			testListeners[Events.WillFocus]()
		end)
		expect(testFocused).toBe(true)

		ReactRoblox.act(function()
			testListeners[Events.WillBlur]()
		end)
		expect(testFocused).toBe(false)

		ReactRoblox.act(function()
			root:unmount()
		end)
		expect(testListeners[Events.WillFocus]).toBe(nil)
		expect(testListeners[Events.WillBlur]).toBe(nil)
	end)
end
