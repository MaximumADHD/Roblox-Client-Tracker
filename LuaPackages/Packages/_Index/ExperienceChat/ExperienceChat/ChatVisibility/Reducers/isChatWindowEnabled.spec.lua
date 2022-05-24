local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local ChatVisibility = ExperienceChat.ChatVisibility

return function()
	local ChatWindowConfigurationEnabled = require(ChatVisibility.Actions.ChatWindowConfigurationEnabled)
	local ChatTopBarButtonActivated = require(ChatVisibility.Actions.ChatTopBarButtonActivated)
	local SetCoreGuiEnabledChanged = require(ChatVisibility.Actions.SetCoreGuiEnabledChanged)
	local isChatWindowEnabled = require(ChatVisibility.Reducers.isChatWindowEnabled)

	local checkForCorrectState = function(currState, expectedState)
		expect(currState._propertyEnabled).toEqual(expectedState._propertyEnabled)
		expect(currState._coreGuiEnabled).toEqual(expectedState._coreGuiEnabled)
		expect(currState._topBarVisibility).toEqual(expectedState._topBarVisibility)
		expect(currState.value).toEqual(expectedState.value)
	end

	describe("isChatWindowEnabled", function()
		it("should be not nil by default", function()
			local defaultState = isChatWindowEnabled(nil, {})

			expect(defaultState).never.toBeNil()
		end)

		it("should be unmodified by other actions", function()
			local oldState = isChatWindowEnabled(nil, {})
			local newState = isChatWindowEnabled(oldState, { type = "not a real action" })

			expect(oldState).toEqual(newState)
		end)

		it("should have value = true on default", function()
			local state = isChatWindowEnabled(nil, {})
			local expectedState = {
				_propertyEnabled = true,
				_coreGuiEnabled = true,
				_topBarVisibility = true,
				value = true,
			}
			checkForCorrectState(state, expectedState)
		end)

		it("should be changed using ChatWindowConfigurationEnabled", function()
			local state = isChatWindowEnabled(nil, {})

			state = isChatWindowEnabled(state, ChatWindowConfigurationEnabled(false))
			local expectedState = {
				_propertyEnabled = false,
				_coreGuiEnabled = true,
				_topBarVisibility = true,
				value = false,
			}
			checkForCorrectState(state, expectedState)

			state = isChatWindowEnabled(state, ChatWindowConfigurationEnabled(true))
			expectedState = {
				_propertyEnabled = true,
				_coreGuiEnabled = true,
				_topBarVisibility = true,
				value = true,
			}
			checkForCorrectState(state, expectedState)
		end)

		it("should be changed using ChatTopBarButtonActivated", function()
			local state = isChatWindowEnabled(nil, {})

			state = isChatWindowEnabled(state, ChatTopBarButtonActivated(false))
			local expectedState = {
				_propertyEnabled = true,
				_coreGuiEnabled = true,
				_topBarVisibility = false,
				value = false,
			}
			checkForCorrectState(state, expectedState)

			state = isChatWindowEnabled(state, ChatTopBarButtonActivated(true))
			expectedState = {
				_propertyEnabled = true,
				_coreGuiEnabled = true,
				_topBarVisibility = true,
				value = true,
			}
			checkForCorrectState(state, expectedState)
		end)

		it("should be changed using SetCoreGuiEnabled", function()
			local state = isChatWindowEnabled(nil, {})

			state = isChatWindowEnabled(state, SetCoreGuiEnabledChanged(false))
			local expectedState = {
				_propertyEnabled = true,
				_coreGuiEnabled = false,
				_topBarVisibility = true,
				value = false,
			}
			checkForCorrectState(state, expectedState)

			state = isChatWindowEnabled(state, SetCoreGuiEnabledChanged(true))
			expectedState = {
				_propertyEnabled = true,
				_coreGuiEnabled = true,
				_topBarVisibility = true,
				value = true,
			}
			checkForCorrectState(state, expectedState)
		end)
	end)
end
