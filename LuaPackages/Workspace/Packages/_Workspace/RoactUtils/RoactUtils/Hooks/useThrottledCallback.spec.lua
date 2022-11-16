return function()
	local RoactUtils = script:FindFirstAncestor("RoactUtils")
	local Packages = RoactUtils.Parent

	local React = require(Packages.React)
	local ReactRoblox = require(Packages.Dev.ReactRoblox)

	local JestGlobals = require(Packages.Dev.JestGlobals)
	local expect = JestGlobals.expect
	local jest = JestGlobals.jest

	local useThrottledCallback = require(script.Parent.useThrottledCallback)

	local NUM_RENDERS = 2 -- render is called twice in DEV mode

	it("it should invoke the initial callback right away", function()
		local callback = jest.fn()
		local function component(props)
			local throttledCallback = useThrottledCallback(callback, 1)
			throttledCallback()
		end

		local element = React.createElement(component)

		local container = Instance.new("Frame")
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(element)
		end)
		expect(callback).toBeCalledTimes(1 * NUM_RENDERS)

		root:unmount()
	end)

	it("it should delay the second callback call", function()
		local callback = jest.fn()
		local function component(props)
			local throttledCallback = useThrottledCallback(callback, 0.01)
			throttledCallback()
			throttledCallback()
		end

		local element = React.createElement(component)

		local container = Instance.new("Frame")
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(element)
		end)
		expect(callback).toBeCalledTimes(1 * NUM_RENDERS)

		ReactRoblox.act(function()
			wait(0.1)
		end)
		expect(callback).toBeCalledTimes(2 * NUM_RENDERS)

		root:unmount()
	end)

	it("it should drop callbacks when one is already scheduled", function()
		local callback = jest.fn()
		local function component(props)
			local throttledCallback = useThrottledCallback(callback, 0.01)
			throttledCallback()
			throttledCallback()
			throttledCallback()
			throttledCallback()
			throttledCallback()
		end

		local element = React.createElement(component)

		local container = Instance.new("Frame")
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(element)
		end)
		expect(callback).toBeCalledTimes(1 * NUM_RENDERS)

		ReactRoblox.act(function()
			wait(0.1)
		end)
		expect(callback).toBeCalledTimes(2 * NUM_RENDERS)

		root:unmount()
	end)
end
