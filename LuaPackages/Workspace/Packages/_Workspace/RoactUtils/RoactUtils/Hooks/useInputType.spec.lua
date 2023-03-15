return function()
	local RoactUtils = script:FindFirstAncestor("RoactUtils")
	local Packages = RoactUtils.Parent

	local React = require(Packages.React)
	local ReactRoblox = require(Packages.Dev.ReactRoblox)
	local waitForEvents = require(Packages.Dev.TestUtils).DeferredLuaHelpers.waitForEvents

	local JestGlobals = require(Packages.Dev.JestGlobals)
	local expect = JestGlobals.expect

	local useInputType = require(script.Parent.useInputType)
	local InputTypeConstants = require(Packages.InputType).InputTypeConstants

	local lastInputTypeChanged = Instance.new("BindableEvent")

	local TestUserInputService = {
		LastInputTypeChanged = lastInputTypeChanged.Event,
		GetLastInputType = function()
			return Enum.UserInputType.Touch
		end,
	}

	it("it should initially return the last used input type", function()
		local inputType
		local function component(props)
			inputType = useInputType(TestUserInputService)
		end

		local container = Instance.new("Frame")
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(React.createElement(component))
		end)

		expect(inputType).toBe(InputTypeConstants.Touch)
		root:unmount()
	end)

	it("it should rerender when input type changes", function()
		local inputType
		local function component(props)
			inputType = useInputType(TestUserInputService)
		end

		local container = Instance.new("Frame")
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(React.createElement(component))
		end)

		expect(inputType).toBe(InputTypeConstants.Touch)

		ReactRoblox.act(function()
			lastInputTypeChanged:Fire(Enum.UserInputType.MouseMovement)
			waitForEvents()
		end)

		expect(inputType).toBe(InputTypeConstants.MouseAndKeyboard)

		ReactRoblox.act(function()
			lastInputTypeChanged:Fire(Enum.UserInputType.Gamepad1)
			waitForEvents()
		end)

		expect(inputType).toBe(InputTypeConstants.Gamepad)

		ReactRoblox.act(function()
			lastInputTypeChanged:Fire(Enum.UserInputType.Touch)
			waitForEvents()
		end)

		expect(inputType).toBe(InputTypeConstants.Touch)

		root:unmount()
	end)
end
