return function()
	local TopBar = script.Parent.Parent
	local Actions = TopBar.Actions
	local SetMenuOpen = require(Actions.SetMenuOpen)
	local SetTopBarEnabled = require(Actions.SetTopBarEnabled)
	local SetSmallTouchDevice = require(Actions.SetSmallTouchDevice)
	local SetScreenSize = require(Actions.SetScreenSize)
	local DisplayOptions = require(script.Parent.DisplayOptions)
	local SetInputType = require(Actions.SetInputType)
	local SetInspectMenuOpen = require(Actions.SetInspectMenuOpen)
	local SetGamepadMenuOpen = require(Actions.SetGamepadMenuOpen)
	local SetGamepadNavigationDialogOpen = require(Actions.SetGamepadNavigationDialogOpen)
	local FFlagGamepadNavigationDialogABTest = require(script.Parent.Parent.Flags.FFlagGamepadNavigationDialogABTest)

	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local Constants = require(TopBar.Constants)
	local InputType = Constants.InputType

	local function countValues(t)
		local c = 0
		for _, _ in pairs(t) do
			c = c + 1
		end
		return c
	end

	it("should have the correct default values", function()
		local defaultState = DisplayOptions(nil, {})
		expect(defaultState).toMatchObject({
			menuOpen = false,
			topbarEnabled = true,
			isSmallTouchDevice = false,
			inputType = InputType.MouseAndKeyBoard,
			inspectMenuOpen = false,
		})
	end)

	describe("SetMenuOpen", function()
		it("should change the value of menuOpen", function()
			local oldState = DisplayOptions(nil, {})
			local newState = DisplayOptions(oldState, SetMenuOpen(true))
			expect(oldState).never.toBe(newState)
			expect(newState.menuOpen).toBe(true)
		end)

		it("should not change any other values", function()
			local oldState = DisplayOptions(nil, {})
			local newState = DisplayOptions(oldState, SetMenuOpen(true))
			expect(countValues(newState)).toBe(countValues(oldState))
			for key, value in pairs(newState) do
				if key ~= "menuOpen" then
					expect(value).toBe(oldState[key])
				end
			end
		end)
	end)

	describe("SetTopBarEnabled", function()
		it("should change the value of topbarEnabled", function()
			local oldState = DisplayOptions(nil, {})
			local newState = DisplayOptions(oldState, SetTopBarEnabled(false))
			expect(oldState).never.toBe(newState)
			expect(newState.topbarEnabled).toBe(false)
		end)

		it("should not change any other values", function()
			local oldState = DisplayOptions(nil, {})
			local newState = DisplayOptions(oldState, SetTopBarEnabled(false))
			expect(countValues(newState)).toBe(countValues(oldState))
			for key, value in pairs(newState) do
				if key ~= "topbarEnabled" then
					expect(value).toBe(oldState[key])
				end
			end
		end)
	end)

	describe("SetSmallTouchDevice", function()
		it("should change the value of topbarEnabled", function()
			local oldState = DisplayOptions(nil, {})
			local newState = DisplayOptions(oldState, SetSmallTouchDevice(true))
			expect(oldState).never.toBe(newState)
			expect(newState.isSmallTouchDevice).toBe(true)
		end)

		it("should not change any other values", function()
			local oldState = DisplayOptions(nil, {})
			local newState = DisplayOptions(oldState, SetSmallTouchDevice(true))
			expect(countValues(newState)).toBe(countValues(oldState))
			for key, value in pairs(newState) do
				if key ~= "isSmallTouchDevice" then
					expect(value).toBe(oldState[key])
				end
			end
		end)
	end)

	describe("SetScreenSize", function()
		it("should change the value of topbarEnabled", function()
			local oldState = DisplayOptions(nil, {})
			local newState = DisplayOptions(oldState, SetScreenSize(Vector2.new(100, 100)))
			expect(oldState).never.toBe(newState)
			expect(newState.screenSize).toBe(Vector2.new(100, 100))
		end)

		it("should not change any other values", function()
			local oldState = DisplayOptions(nil, {})
			local newState = DisplayOptions(oldState, SetScreenSize(Vector2.new(100, 100)))
			expect(countValues(newState)).toBe(countValues(oldState))
			for key, value in pairs(newState) do
				if key ~= "screenSize" then
					expect(value).toBe(oldState[key])
				end
			end
		end)
	end)

	describe("SetInputType", function()
		it("should change the value of inputType", function()
			local oldState = DisplayOptions(nil, {})
			local newState = DisplayOptions(oldState, SetInputType(InputType.Touch))
			expect(oldState).never.toBe(newState)
			expect(newState.inputType).toBe(InputType.Touch)
		end)

		it("should not change any other values", function()
			local oldState = DisplayOptions(nil, {})
			local newState = DisplayOptions(oldState, SetInputType(InputType.Touch))
			expect(countValues(newState)).toBe(countValues(oldState))
			for key, value in pairs(newState) do
				if key ~= "inputType" then
					expect(value).toBe(oldState[key])
				end
			end
		end)
	end)

	describe("SetInspectMenuOpen", function()
		it("should change the value of inspectMenuOpen", function()
			local oldState = DisplayOptions(nil, {})
			local newState = DisplayOptions(oldState, SetInspectMenuOpen(true))
			expect(oldState).never.toBe(newState)
			expect(newState.inspectMenuOpen).toBe(true)
			newState = DisplayOptions(newState, SetInspectMenuOpen(false))
			expect(newState.inspectMenuOpen).toBe(false)
		end)

		it("should not change any other values", function()
			local oldState = DisplayOptions(nil, {})
			local newState = DisplayOptions(oldState, SetInspectMenuOpen(true))
			expect(countValues(newState)).toBe(countValues(oldState))
			for key, value in pairs(newState) do
				if key ~= "inspectMenuOpen" then
					expect(value).toBe(oldState[key])
				end
			end
		end)
	end)

	describe("SetGamepadMenuOpen", function()
		it("should change the value of isGamepadMenuOpen", function()
			local oldState = DisplayOptions(nil, {})
			local newState = DisplayOptions(oldState, SetGamepadMenuOpen(true))
			expect(oldState).never.toBe(newState)
			expect(newState.isGamepadMenuOpen).toBe(true)
			newState = DisplayOptions(newState, SetGamepadMenuOpen(false))
			expect(newState.isGamepadMenuOpen).toBe(false)
		end)

		it("should not change any other values", function()
			local oldState = DisplayOptions(nil, {})
			local newState = DisplayOptions(oldState, SetGamepadMenuOpen(true))
			expect(countValues(newState)).toBe(countValues(oldState))
			for key, value in pairs(newState) do
				if key ~= "isGamepadMenuOpen" then
					expect(value).toBe(oldState[key])
				end
			end
		end)
	end)

	if FFlagGamepadNavigationDialogABTest then
		describe("SetGamepadNavigationDialogOpen", function()
			it("should change the value of isGamepadNavigationDialogOpen", function()
				local oldState = DisplayOptions(nil, {})
				local newState = DisplayOptions(oldState, SetGamepadNavigationDialogOpen(true))
				expect(oldState).never.toBe(newState)
				expect(newState.isGamepadNavigationDialogOpen).toBe(true)
				newState = DisplayOptions(newState, SetGamepadNavigationDialogOpen(false))
				expect(newState.isGamepadNavigationDialogOpen).toBe(false)
			end)

			it("should not change any other values", function()
				local oldState = DisplayOptions(nil, {})
				local newState = DisplayOptions(oldState, SetGamepadNavigationDialogOpen(true))
				expect(countValues(newState)).toBe(countValues(oldState))
				for key, value in pairs(newState) do
					if key ~= "isGamepadNavigationDialogOpen" then
						expect(value).toBe(oldState[key])
					end
				end
			end)
		end)
	end
end
