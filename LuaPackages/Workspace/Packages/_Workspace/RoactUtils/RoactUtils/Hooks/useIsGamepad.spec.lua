return function()
	local RoactUtils = script:FindFirstAncestor("RoactUtils")
	local Packages = RoactUtils.Parent

	local React = require(Packages.React)
	local ReactRoblox = require(Packages.Dev.ReactRoblox)
	local waitForEvents = require(Packages.Dev.TestUtils).DeferredLuaHelpers.waitForEvents

	local JestGlobals = require(Packages.Dev.JestGlobals)
	local expect = JestGlobals.expect

	local useIsGamepad = require(script.Parent.useIsGamepad)

	local lastInputTypeChanged = Instance.new("BindableEvent")

	local TestUserInputService = {
		LastInputTypeChanged = lastInputTypeChanged.Event,
		GetLastInputType = function()
			return Enum.UserInputType.Touch
		end,
	}

	it("it should initially return the last used input type", function()
		local isGamepad
		local function component(props)
			isGamepad = useIsGamepad(TestUserInputService)
		end

		local container = Instance.new("Frame")
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(React.createElement(component))
		end)

		expect(isGamepad).toBe(false)
		root:unmount()
	end)

	it("it should rerender when input type changes", function()
		local isGamepad
		local function component(props)
			isGamepad = useIsGamepad(TestUserInputService)
		end

		local container = Instance.new("Frame")
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(React.createElement(component))
		end)

		expect(isGamepad).toBe(false)

		ReactRoblox.act(function()
			lastInputTypeChanged:Fire(Enum.UserInputType.MouseMovement)
			waitForEvents()
		end)

		expect(isGamepad).toBe(false)

		ReactRoblox.act(function()
			lastInputTypeChanged:Fire(Enum.UserInputType.Gamepad1)
			waitForEvents()
		end)

		expect(isGamepad).toBe(true)

		ReactRoblox.act(function()
			lastInputTypeChanged:Fire(Enum.UserInputType.Touch)
			waitForEvents()
		end)

		expect(isGamepad).toBe(false)

		root:unmount()
	end)
end
