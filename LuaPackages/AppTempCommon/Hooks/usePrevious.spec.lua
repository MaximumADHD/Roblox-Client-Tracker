return function()
	local CorePackages = game:GetService("CorePackages")

	local React = require(CorePackages.Packages.React)
	local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
	local usePrevious = require(script.Parent.usePrevious)

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect
	local jest = JestGlobals.jest

	it("it should initially be called with nil", function()
		local function component(props)
			local value = "FooBar"
			local prevValue = usePrevious(value)
			props.callback(value, prevValue)
		end

		local callback = jest.fn()
		local element = React.createElement(component, {
			callback = callback,
		})

		local container = Instance.new("Frame")
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(element)
		end)

		expect(callback).lastCalledWith("FooBar", nil)
		root:unmount()
	end)

	it("it should return previously rendered value on subsequent renders", function()
		local changeCount
		local function component(props)
			local count, setCount = React.useState(0)
			local prevCount = usePrevious(count)
			changeCount = setCount
			props.callback(count, prevCount)
		end

		local callback = jest.fn()
		local element = React.createElement(component, {
			callback = callback,
		})

		local container = Instance.new("Frame")
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(element)
		end)

		expect(callback).lastCalledWith(0, nil)

		ReactRoblox.act(function()
			changeCount(3)
		end)

		expect(callback).lastCalledWith(3, 0)

		ReactRoblox.act(function()
			changeCount(10)
		end)

		expect(callback).lastCalledWith(10, 3)

		ReactRoblox.act(function()
			changeCount(42)
		end)

		expect(callback).lastCalledWith(42, 10)

		ReactRoblox.act(function()
			changeCount(42)
		end)

		expect(callback).lastCalledWith(42, 42)

		root:unmount()
	end)
end
