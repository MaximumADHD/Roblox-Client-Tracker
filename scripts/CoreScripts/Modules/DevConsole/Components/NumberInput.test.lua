local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local it = JestGlobals.it

local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)

local Rhodium = require(CorePackages.Packages.Dev.Rhodium)
local withServices = require(CoreGui.RobloxGui.Modules.CoreScriptsRhodiumTest.Helpers.withServices)

local NULL_REDUCER = function(state, action)
	return state
end

local NumberInput = require(script.Parent.NumberInput)

it("should create and destroy without errors", function()
	local container = Instance.new("Frame")
	local root = ReactRoblox.createRoot(container)

	local element = React.createElement(NumberInput, {
		Size = UDim2.new(0, 100, 0, 30),
		Range = NumberRange.new(0, 100),
		DefaultValue = 50,
	})

	ReactRoblox.act(function()
		root:render(element)
	end)

	root:unmount()
	container:Destroy()
end)

it("should clamp input values to the specified range", function()
	local function TestNumberInputWrapper()
		return React.createElement(NumberInput, {
			Size = UDim2.new(0, 100, 0, 30),
			Range = NumberRange.new(10, 20),
			DefaultValue = 15,
		})
	end

	withServices(function(path)
		path = Rhodium.XPath.new(path)

		local testTextBox = Rhodium.Element.new(path)
		local testTextBoxInstance: TextBox = testTextBox:waitForRbxInstance(1)
		expect(testTextBoxInstance).toBeDefined()

		-- Test below minimum
		ReactRoblox.act(function()
			testTextBoxInstance:CaptureFocus()
			testTextBoxInstance.Text = "5" -- Below min
			testTextBoxInstance:ReleaseFocus()
			wait() -- Allow React to process state change
			expect(testTextBoxInstance.Text).toBe("10") -- Clamped to min
		end)

		-- Test above maximum
		ReactRoblox.act(function()
			testTextBoxInstance:CaptureFocus()
			testTextBoxInstance.Text = "25" -- Above max
			testTextBoxInstance:ReleaseFocus()
			wait() -- Allow React to process state change
			expect(testTextBoxInstance.Text).toBe("20") -- Clamped to max
		end)
	end, TestNumberInputWrapper, NULL_REDUCER)
end)

it("should retain previous valid value on invalid input", function()
	local function TestNumberInputWrapper()
		return React.createElement(NumberInput, {
			Size = UDim2.new(0, 100, 0, 30),
			Range = NumberRange.new(0, 100),
			DefaultValue = 50,
		})
	end

	withServices(function(path)
		path = Rhodium.XPath.new(path)

		local testTextBox = Rhodium.Element.new(path)
		local testTextBoxInstance: TextBox = testTextBox:waitForRbxInstance(1)
		expect(testTextBoxInstance).toBeDefined()

		-- First, ensure the initial value is set correctly
		ReactRoblox.act(function()
			testTextBoxInstance:CaptureFocus()
			testTextBoxInstance.Text = "abc" -- Invalid input
			testTextBoxInstance:ReleaseFocus()
			wait() -- Allow React to process state change
			expect(testTextBoxInstance.Text).toBe("50") -- Retains previous valid value
		end)

		-- Test another invalid input
		ReactRoblox.act(function()
			testTextBoxInstance:CaptureFocus()
			testTextBoxInstance.Text = "" -- Empty input
			testTextBoxInstance:ReleaseFocus()
			wait() -- Allow React to process state change
			expect(testTextBoxInstance.Text).toBe("50") -- Retains previous valid value
		end)

		-- Now enter a valid value to ensure it still works
		ReactRoblox.act(function()
			testTextBoxInstance:CaptureFocus()
			testTextBoxInstance.Text = "75" -- Valid input
			testTextBoxInstance:ReleaseFocus()
			wait() -- Allow React to process state change
			expect(testTextBoxInstance.Text).toBe("75") -- Updated to new valid value
		end)

		-- Test another invalid input
		ReactRoblox.act(function()
			testTextBoxInstance:CaptureFocus()
			testTextBoxInstance.Text = "!!@#" -- Invalid input
			testTextBoxInstance:ReleaseFocus()
			wait() -- Allow React to process state change
			expect(testTextBoxInstance.Text).toBe("75") -- Retains previous valid value
		end)
	end, TestNumberInputWrapper, NULL_REDUCER)
end)

it("should only accept integer input when IntegerOnly is true", function()
	local function TestNumberInputWrapper()
		return React.createElement(NumberInput, {
			Size = UDim2.new(0, 100, 0, 30),
			Range = NumberRange.new(0, 100),
			DefaultValue = 50,
			IntegerOnly = true,
		})
	end

	withServices(function(path)
		path = Rhodium.XPath.new(path)

		local testTextBox = Rhodium.Element.new(path)
		local testTextBoxInstance: TextBox = testTextBox:waitForRbxInstance(1)
		expect(testTextBoxInstance).toBeDefined()

		-- Enter a decimal value
		ReactRoblox.act(function()
			testTextBoxInstance:CaptureFocus()
			testTextBoxInstance.Text = "75.8"
			testTextBoxInstance:ReleaseFocus()
			wait() -- Allow React to process state change
			expect(testTextBoxInstance.Text).toBe("75") -- Should be floored to 75
		end)

		-- Enter another decimal value
		ReactRoblox.act(function()
			testTextBoxInstance:CaptureFocus()
			testTextBoxInstance.Text = "20.99"
			testTextBoxInstance:ReleaseFocus()
			wait() -- Allow React to process state change
			expect(testTextBoxInstance.Text).toBe("20") -- Should be floored to 20
		end)
	end, TestNumberInputWrapper, NULL_REDUCER)
end)

it("should call OnNumberInputChanged callback with correct value", function()
	local callbackCalled = false
	local receivedValue = nil

	local function onNumberInputChanged(value)
		callbackCalled = true
		receivedValue = value
	end

	local function TestNumberInputWrapper()
		return React.createElement(NumberInput, {
			Size = UDim2.new(0, 100, 0, 30),
			Range = NumberRange.new(0, 100),
			DefaultValue = 50,
			OnNumberInputChanged = onNumberInputChanged,
		})
	end

	withServices(function(path)
		path = Rhodium.XPath.new(path)

		local testTextBox = Rhodium.Element.new(path)
		local testTextBoxInstance: TextBox = testTextBox:waitForRbxInstance(1)
		expect(testTextBoxInstance).toBeDefined()

		-- Enter a valid value
		ReactRoblox.act(function()
			testTextBoxInstance:CaptureFocus()
			testTextBoxInstance.Text = "80"
			testTextBoxInstance:ReleaseFocus()
			wait() -- Allow React to process state change
			expect(callbackCalled).toBe(true)
			expect(receivedValue).toBe(80)
		end)
	end, TestNumberInputWrapper, NULL_REDUCER)
end)
