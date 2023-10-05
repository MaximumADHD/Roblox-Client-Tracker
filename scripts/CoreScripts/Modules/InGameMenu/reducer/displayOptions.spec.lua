return function()
	local CorePackages = game:GetService("CorePackages")

	local InGameMenu = script.Parent.Parent
	local SetInspectMenuEnabled = require(InGameMenu.Actions.SetInspectMenuEnabled)
	local SetInputType = require(InGameMenu.Actions.SetInputType)
	local displayOptions = require(script.Parent.displayOptions)
	local Constants = require(InGameMenu.Resources.Constants)

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local function countValues(t)
		local c = 0
		for _, _ in pairs(t) do
			c = c + 1
		end
		return c
	end

	it("should have inspectMenuEnabled = true and inputType = MouseAndKeyboard by default", function()
		local defaultState = displayOptions(nil, {})
		expect(defaultState).toMatchObject({
			inspectMenuEnabled = true,
			inputType = Constants.InputType.MouseAndKeyboard,
		})
	end)

	describe("SetInspectMenuEnabled", function()
		it("should change the value of inspectMenuEnabled", function()
			local oldState = displayOptions(nil, {})
			local newState = displayOptions(oldState, SetInspectMenuEnabled(false))
			expect(oldState).never.toBe(newState)
			expect(newState.inspectMenuEnabled).toBe(false)
		end)

		it("should not change any other values", function()
			local oldState = displayOptions({
				inspectMenuEnabled = true,
				inputType = Constants.InputType.Gamepad,
			}, {})
			local newState = displayOptions(oldState, SetInspectMenuEnabled(false))
			expect(countValues(newState)).toBe(countValues(oldState))
			for key, value in pairs(newState) do
				if key ~= "inspectMenuEnabled" then
					expect(value).toBe(oldState[key])
				end
			end
		end)
	end)

	describe("SetInputType", function()
		it("should change the value of inputType", function()
			local oldState = displayOptions(nil, {})
			local newState = displayOptions(oldState, SetInputType(Constants.InputType.Touch))
			expect(oldState).never.toBe(newState)
			expect(newState.inputType).toBe(Constants.InputType.Touch)
		end)

		it("should not change any other values", function()
			local oldState = displayOptions({
				inspectMenuEnabled = false,
				inputType = Constants.InputType.Gamepad,
			}, {})
			local newState = displayOptions(oldState, SetInputType(Constants.InputType.Touch))
			expect(countValues(newState)).toBe(countValues(oldState))
			for key, value in pairs(newState) do
				if key ~= "inputType" then
					expect(value).toBe(oldState[key])
				end
			end
		end)
	end)
end
