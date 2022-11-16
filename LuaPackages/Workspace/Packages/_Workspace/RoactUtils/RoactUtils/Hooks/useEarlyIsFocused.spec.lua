return function()
	local RoactUtils = script:FindFirstAncestor("RoactUtils")
	local Packages = RoactUtils.Parent
	
	local React = require(Packages.React)
	local ReactRoblox = require(Packages.Dev.ReactRoblox)
	local RoactNavigation = require(Packages.RoactNavigation)

	local JestGlobals = require(Packages.Dev.JestGlobals)
	local expect = JestGlobals.expect
	local jest = JestGlobals.jest

	local useEarlyIsFocused = require(script.Parent.useEarlyIsFocused)

	local mockNavigation = {
		isFocused = jest.fn(),
		addListener = jest.fn(),
	}

	local function createWithNavigationProp(element)
		return React.createElement(RoactNavigation.Provider, {
			value = mockNavigation,
		}, {
			Child = element,
		})
	end

	beforeEach(function()
		mockNavigation.isFocused.mockReset()
		mockNavigation.addListener.mockReset().mockReturnValue({
			remove = function() end,
		})
	end)

	it("should not be focused if the page is not focused", function()
		local container = Instance.new("ScreenGui")
		local root = ReactRoblox.createRoot(container)

		local isFocused = nil
		local function MockComponent()
			isFocused = useEarlyIsFocused()
		end

		mockNavigation.isFocused.mockReturnValue(false)

		ReactRoblox.act(function()
			root:render(createWithNavigationProp(React.createElement(MockComponent)))
		end)

		expect(isFocused).toEqual(false)

		ReactRoblox.act(function()
			root:unmount()
		end)
	end)

	it("should be focused if the page is focused", function()
		local container = Instance.new("ScreenGui")
		local root = ReactRoblox.createRoot(container)

		local isFocused = nil
		local function MockComponent()
			isFocused = useEarlyIsFocused()
		end

		mockNavigation.isFocused.mockReturnValue(true)

		ReactRoblox.act(function()
			root:render(createWithNavigationProp(React.createElement(MockComponent)))
		end)

		expect(isFocused).toEqual(true)

		ReactRoblox.act(function()
			root:unmount()
		end)
	end)

	it("should toggle focus", function()
		local container = Instance.new("ScreenGui")
		local root = ReactRoblox.createRoot(container)

		local isFocused = nil
		local function MockComponent()
			isFocused = useEarlyIsFocused()
		end

		mockNavigation.isFocused.mockReturnValue(false)

		local willFocusCallback, willBlurCallback = nil, nil
		mockNavigation.addListener.mockImplementation(function(event, callback)
			if event == RoactNavigation.Events.WillFocus then
			willFocusCallback = callback
			elseif event == RoactNavigation.Events.WillBlur then
				willBlurCallback = callback
			else
				assert(false, "Invalid event")
			end
			return {
				remove = function() end,
			}
		end)

		ReactRoblox.act(function()
			root:render(createWithNavigationProp(React.createElement(MockComponent)))
		end)
		expect(isFocused).toEqual(false)

		ReactRoblox.act(willFocusCallback)
		expect(isFocused).toEqual(true)

		ReactRoblox.act(willBlurCallback)
		expect(isFocused).toEqual(false)

		ReactRoblox.act(willFocusCallback)
		expect(isFocused).toEqual(true)

		ReactRoblox.act(willBlurCallback)
		expect(isFocused).toEqual(false)
		
		ReactRoblox.act(function()
			root:unmount()
		end)
	end)
end
