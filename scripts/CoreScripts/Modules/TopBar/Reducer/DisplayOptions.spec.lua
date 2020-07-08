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
		expect(type(defaultState)).to.equal("table")
		expect(defaultState.menuOpen).to.equal(false)
		expect(defaultState.topbarEnabled).to.equal(true)
		expect(defaultState.isSmallTouchDevice).to.equal(false)
		expect(defaultState.inputType).to.equal(InputType.MouseAndKeyBoard)
		expect(defaultState.inspectMenuOpen).to.equal(false)
	end)

	describe("SetMenuOpen", function()
		it("should change the value of menuOpen", function()
			local oldState = DisplayOptions(nil, {})
			local newState = DisplayOptions(oldState, SetMenuOpen(true))
			expect(oldState).to.never.equal(newState)
			expect(newState.menuOpen).to.equal(true)
		end)

		it("should not change any other values", function()
			local oldState = DisplayOptions(nil, {})
			local newState = DisplayOptions(oldState, SetMenuOpen(true))
			expect(countValues(newState)).to.equal(countValues(oldState))
			for key, value in pairs(newState) do
				if key ~= "menuOpen" then
					expect(value).to.equal(oldState[key])
				end
			end
		end)
	end)

	describe("SetTopBarEnabled", function()
		it("should change the value of topbarEnabled", function()
			local oldState = DisplayOptions(nil, {})
			local newState = DisplayOptions(oldState, SetTopBarEnabled(false))
			expect(oldState).to.never.equal(newState)
			expect(newState.topbarEnabled).to.equal(false)
		end)

		it("should not change any other values", function()
			local oldState = DisplayOptions(nil, {})
			local newState = DisplayOptions(oldState, SetTopBarEnabled(false))
			expect(countValues(newState)).to.equal(countValues(oldState))
			for key, value in pairs(newState) do
				if key ~= "topbarEnabled" then
					expect(value).to.equal(oldState[key])
				end
			end
		end)
	end)

	describe("SetSmallTouchDevice", function()
		it("should change the value of topbarEnabled", function()
			local oldState = DisplayOptions(nil, {})
			local newState = DisplayOptions(oldState, SetSmallTouchDevice(true))
			expect(oldState).to.never.equal(newState)
			expect(newState.isSmallTouchDevice).to.equal(true)
		end)

		it("should not change any other values", function()
			local oldState = DisplayOptions(nil, {})
			local newState = DisplayOptions(oldState, SetSmallTouchDevice(true))
			expect(countValues(newState)).to.equal(countValues(oldState))
			for key, value in pairs(newState) do
				if key ~= "isSmallTouchDevice" then
					expect(value).to.equal(oldState[key])
				end
			end
		end)
	end)


	describe("SetScreenSize", function()
		it("should change the value of topbarEnabled", function()
			local oldState = DisplayOptions(nil, {})
			local newState = DisplayOptions(oldState, SetScreenSize(Vector2.new(100, 100)))
			expect(oldState).to.never.equal(newState)
			expect(newState.screenSize).to.equal(Vector2.new(100, 100))
		end)

		it("should not change any other values", function()
			local oldState = DisplayOptions(nil, {})
			local newState = DisplayOptions(oldState, SetScreenSize(Vector2.new(100, 100)))
			expect(countValues(newState)).to.equal(countValues(oldState))
			for key, value in pairs(newState) do
				if key ~= "screenSize" then
					expect(value).to.equal(oldState[key])
				end
			end
		end)
	end)

	describe("SetInputType", function()
		it("should change the value of inputType", function()
			local oldState = DisplayOptions(nil, {})
			local newState = DisplayOptions(oldState, SetInputType(InputType.Touch))
			expect(oldState).to.never.equal(newState)
			expect(newState.inputType).to.equal(InputType.Touch)
		end)

		it("should not change any other values", function()
			local oldState = DisplayOptions(nil, {})
			local newState = DisplayOptions(oldState, SetInputType(InputType.Touch))
			expect(countValues(newState)).to.equal(countValues(oldState))
			for key, value in pairs(newState) do
				if key ~= "inputType" then
					expect(value).to.equal(oldState[key])
				end
			end
		end)
	end)

	describe("SetInspectMenuOpen", function()
		it("should change the value of inspectMenuOpen", function()
			local oldState = DisplayOptions(nil, {})
			local newState = DisplayOptions(oldState, SetInspectMenuOpen(true))
			expect(oldState).to.never.equal(newState)
			expect(newState.inspectMenuOpen).to.equal(true)
			newState = DisplayOptions(newState, SetInspectMenuOpen(false))
			expect(newState.inspectMenuOpen).to.equal(false)
		end)

		it("should not change any other values", function()
			local oldState = DisplayOptions(nil, {})
			local newState = DisplayOptions(oldState, SetInspectMenuOpen(true))
			expect(countValues(newState)).to.equal(countValues(oldState))
			for key, value in pairs(newState) do
				if key ~= "inspectMenuOpen" then
					expect(value).to.equal(oldState[key])
				end
			end
		end)
	end)
end